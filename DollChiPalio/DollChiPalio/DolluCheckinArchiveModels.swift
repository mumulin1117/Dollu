import UIKit

enum DolluCheckinTaskKind: String, CaseIterable, Codable {
    case outfitStyling
    case shelfCare
    case displayNote

    var dollTitle: String {
        switch self {
        case .outfitStyling:
            return "Style a doll outfit"
        case .shelfCare:
            return "Refresh collection shelf"
        case .displayNote:
            return "Save display record"
        }
    }

    var dollDraftNote: String {
        switch self {
        case .outfitStyling:
            return "Logged today's doll outfit progress."
        case .shelfCare:
            return "Refreshed one collection shelf for display."
        case .displayNote:
            return "Saved one styling note for the wardrobe archive."
        }
    }

    var dollAccentText: String {
        switch self {
        case .outfitStyling:
            return "look"
        case .shelfCare:
            return "care"
        case .displayNote:
            return "note"
        }
    }
}

struct DolluCheckinCollectorProfile: Codable {
    let dollCollectorName: String
    let dollCollectorEmail: String
    let dollAvatarURL: URL?
    let dollStreakCount: Int
    let dollCheckedToday: Bool
    let dollCheckedDateKey: String?
}

struct DolluCheckinPeerArchive: Hashable, Codable {
    let dollPeerId: String
    let dollName: String
    let dollAvatarURL: URL?
    let dollFallbackAssetName: String?
    let dollIsCurrent: Bool
}

struct DolluCheckinDayArchive: Hashable, Codable {
    let dollDayText: String
    let dollIsDone: Bool
}

struct DolluCheckinTaskArchive: Hashable, Codable {
    let dollTaskId: String
    let dollKind: DolluCheckinTaskKind
    let dollCopy: String
    var dollIsFinished: Bool
}

struct DolluCheckinPartnerArchive: Hashable, Codable {
    let dollPartnerId: String
    let dollName: String
    let dollGoal: String
    let dollStreakCount: Int
    let dollAvatarAssetName: String?
    let dollPreviewURL: URL?
    let dollPreviewAssetName: String?
    var dollIsJoined: Bool
}

struct DolluCheckinRewardArchive: Hashable, Codable {
    let dollRewardId: String
    let dollTitle: String
    let dollCopy: String
    let dollRequiredCount: Int
    let dollCurrentCount: Int

    var dollProgress: CGFloat {
        guard dollRequiredCount > 0 else { return 0 }
        return min(1, CGFloat(dollCurrentCount) / CGFloat(dollRequiredCount))
    }

    var dollIsUnlocked: Bool {
        dollCurrentCount >= dollRequiredCount
    }
}

struct DolluCheckinHistoryArchive: Hashable, Codable {
    let dollHistoryId: String
    let dollDateText: String
    let dollKind: DolluCheckinTaskKind
    let dollNote: String
}

struct DolluCheckinArchiveState: Codable {
    var dollCollector: DolluCheckinCollectorProfile
    var dollPeers: [DolluCheckinPeerArchive]
    var dollStreakDays: [DolluCheckinDayArchive]
    var dollTasks: [DolluCheckinTaskArchive]
    var dollPartners: [DolluCheckinPartnerArchive]
    var dollRewards: [DolluCheckinRewardArchive]
    var dollHistory: [DolluCheckinHistoryArchive]
}

struct DolluCheckinDraftArchive {
    let dollKind: DolluCheckinTaskKind
    let dollNote: String
}

enum DolluCheckinArchiveFailure: Error {
    case localArchiveUnavailable
}

final class DolluCheckinArchiveRepository {
    private var pocketCollectionDollruni: DolluCheckinArchiveState?
    private let lacePromptDollkora = "/pfbbqqrbdbelz/lyjmij"
    private let satinMarkerDollpavo = "39972965"
    private let velvetTagsetDollcavo = "dollu_checkin_archive_state"

    func fetchDollCheckinArchive(
        dollForceEmpty: Bool = false,
        dollForceFailure: Bool = false,
        completion: @escaping (Result<DolluCheckinArchiveState, Error>) -> Void
    ) {
        if dollForceFailure {
            completion(.failure(DolluCheckinArchiveFailure.localArchiveUnavailable))
            return
        }
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        if dollForceEmpty {
            dollArchive.dollHistory = []
            dollArchive.dollStreakDays = makeDollStreakDays(dollCount: 0, dollCheckedToday: false)
            dollArchive.dollTasks = dollArchive.dollTasks.map {
                var dollTask = $0
                dollTask.dollIsFinished = false
                return dollTask
            }
            dollArchive.dollRewards = makeDollRewards(dollHistory: [])
        }
        pocketCollectionDollruni = dollArchive
        fetchDollPeerArchive(dollCurrent: dollArchive.dollCollector) { [weak self] dollPeers in
            guard let self else { return }
            var dollUpdatedArchive = self.pocketCollectionDollruni ?? dollArchive
            if !dollPeers.isEmpty {
                dollUpdatedArchive.dollPeers = dollPeers
            }
            self.pocketCollectionDollruni = dollUpdatedArchive
            self.saveDollLocalArchive(dollUpdatedArchive)
            completion(.success(dollUpdatedArchive))
        }
    }

    func localDollCheckinArchive() -> DolluCheckinArchiveState {
        let dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        pocketCollectionDollruni = dollArchive
        return dollArchive
    }

    private func fetchDollPeerArchive(dollCurrent: DolluCheckinCollectorProfile, completion: @escaping ([DolluCheckinPeerArchive]) -> Void) {
        let pastelCatalogDollvani: [String: Any] = [
            "apparelTemplate": satinMarkerDollpavo
        ]
        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: lacePromptDollkora, dollRequestBody: pastelCatalogDollvani, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let dollEnvelope):
                completion(self.parseDollPeers(from: dollEnvelope, dollCurrent: dollCurrent))
            case .failure:
                completion([])
            }
        }
    }

    private func parseDollPeers(from dollEnvelope: [String: Any], dollCurrent: DolluCheckinCollectorProfile) -> [DolluCheckinPeerArchive] {
        let dollRows = rawDollRows(from: dollEnvelope)
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollCurrentId = normalizedDollIdentity(dollSession.currentDollCollectorId)
        let dollCurrentEmail = normalizedDollIdentity(dollSession.currentDollCollectorEmail ?? dollCurrent.dollCollectorEmail)
        let dollBlockedTestIdentities = Set(["dollu@gmail.com", "dallu@gmail.com"].compactMap { normalizedDollIdentity($0) })
        let dollFilteredRows = dollRows.filter { dollRaw in
            let dollRemoteId = normalizedDollIdentity(stringValue(from: dollRaw, keys: ["outfitBlueprint", "pantSilhouettedoliu", "leatherGrain", "userId", "id"]))
            let dollRemoteEmail = normalizedDollIdentity(stringValue(from: dollRaw, keys: ["jumpsuitStyle", "shortsCut", "fabricWeave", "userEmail", "email"]))
            let dollRemoteName = normalizedDollIdentity(stringValue(from: dollRaw, keys: ["wardrobeArray", "cottonWeave", "userName", "nickName", "name"]))
            if let dollCurrentId, let dollRemoteId, dollCurrentId == dollRemoteId {
                return false
            }
            if let dollCurrentEmail, let dollRemoteEmail, dollCurrentEmail == dollRemoteEmail {
                return false
            }
            if dollRemoteEmail.map(dollBlockedTestIdentities.contains) == true || dollRemoteName.map(dollBlockedTestIdentities.contains) == true {
                return false
            }
            return true
        }
        let dollRemotePeers = dollFilteredRows.prefix(8).enumerated().map { dollIndex, dollRaw in
            let dollId = stringValue(from: dollRaw, keys: ["outfitBlueprint", "pantSilhouettedoliu", "leatherGrain", "userId", "id"]) ?? "peer_remote_\(dollIndex)"
            let dollName = stringValue(from: dollRaw, keys: ["wardrobeArray", "shortsCut", "cottonWeave", "jumpsuitStyle", "userName", "nickName", "name"]) ?? "Dollu Collector"
            let dollAvatarText = stringValue(from: dollRaw, keys: ["garmentTexturedoliu", "romperFit", "linenThread", "userImgUrl", "avatar", "headImg"])
            return DolluCheckinPeerArchive(
                dollPeerId: dollId,
                dollName: dollName,
                dollAvatarURL: dollAvatarText.flatMap(URL.init(string:)),
                dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: dollIndex + 1),
                dollIsCurrent: false
            )
        }
        let dollCurrentPeer = DolluCheckinPeerArchive(
            dollPeerId: dollSession.currentDollCollectorId ?? "peer_current",
            dollName: dollCurrent.dollCollectorName,
            dollAvatarURL: dollCurrent.dollAvatarURL,
            dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0),
            dollIsCurrent: true
        )
        return [dollCurrentPeer] + dollRemotePeers.filter { $0.dollName != dollCurrent.dollCollectorName }.prefix(7)
    }

    private func normalizedDollIdentity(_ dollValue: String?) -> String? {
        guard let dollValue else { return nil }
        let dollTrimmedValue = dollValue.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        return dollTrimmedValue.isEmpty || dollTrimmedValue == "<null>" ? nil : dollTrimmedValue
    }

    private func rawDollRows(from dollEnvelope: [String: Any]) -> [[String: Any]] {
        let dollData = dollEnvelope["data"]
        if let dollArray = dollData as? [[String: Any]] {
            return dollArray
        }
        if let dollMap = dollData as? [String: Any] {
            for dollKey in ["list", "records", "rows", "data"] {
                if let dollRows = dollMap[dollKey] as? [[String: Any]] {
                    return dollRows
                }
            }
        }
        return []
    }

    private func stringValue(from dollRaw: [String: Any], keys: [String]) -> String? {
        for dollKey in keys {
            if let dollValue = dollRaw[dollKey] as? String {
                let dollTrimmedValue = dollValue.trimmingCharacters(in: .whitespacesAndNewlines)
                if !dollTrimmedValue.isEmpty && dollTrimmedValue != "<null>" {
                    return dollTrimmedValue
                }
            }
            if let dollNumber = dollRaw[dollKey] as? NSNumber {
                return dollNumber.stringValue
            }
        }
        return nil
    }

    func publishDollCheckin(_ dollDraft: DolluCheckinDraftArchive) -> DolluCheckinArchiveState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        let dollWasChecked = dollArchive.dollCollector.dollCheckedToday
        let dollHistory = DolluCheckinHistoryArchive(
            dollHistoryId: UUID().uuidString,
            dollDateText: "Today",
            dollKind: dollDraft.dollKind,
            dollNote: dollDraft.dollNote
        )
        dollArchive.dollHistory.insert(dollHistory, at: 0)
        dollArchive.dollTasks = dollArchive.dollTasks.map {
            var dollTask = $0
            if dollTask.dollKind == dollDraft.dollKind {
                dollTask.dollIsFinished = true
            }
            return dollTask
        }
        let dollStreak = dollArchive.dollCollector.dollCheckedToday ? dollArchive.dollCollector.dollStreakCount : dollArchive.dollCollector.dollStreakCount + 1
        dollArchive.dollCollector = DolluCheckinCollectorProfile(
            dollCollectorName: dollArchive.dollCollector.dollCollectorName,
            dollCollectorEmail: dollArchive.dollCollector.dollCollectorEmail,
            dollAvatarURL: dollArchive.dollCollector.dollAvatarURL,
            dollStreakCount: min(7, max(1, dollStreak)),
            dollCheckedToday: true,
            dollCheckedDateKey: currentDollDateKey()
        )
        dollArchive.dollStreakDays = makeDollStreakDays(dollCount: dollArchive.dollCollector.dollStreakCount, dollCheckedToday: true)
        dollArchive.dollRewards = makeDollRewards(dollHistory: dollArchive.dollHistory)
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        if !dollWasChecked {
            DolluCheckinStarLedger.shared.addDollStars(25, dollEventId: "daily_checkin_\(currentDollDateKey())")
        }
        return dollArchive
    }

    func recordDollPostedInvite(_ dollInvite: DolluCheckinInviteArchive) -> DolluCheckinArchiveState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        if !dollArchive.dollPartners.contains(where: { $0.dollPartnerId == dollInvite.dollInviteId }) {
            let dollPartner = DolluCheckinPartnerArchive(
                dollPartnerId: dollInvite.dollInviteId,
                dollName: "Your \(dollInvite.dollTheme.dollTitle) invite",
                dollGoal: "Waiting for another collector to join your wardrobe routine",
                dollStreakCount: 25,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 0),
                dollIsJoined: false
            )
            dollArchive.dollPartners.insert(dollPartner, at: 0)
            let dollHistory = DolluCheckinHistoryArchive(
                dollHistoryId: dollInvite.dollInviteId,
                dollDateText: "Today",
                dollKind: .displayNote,
                dollNote: "Posted a \(dollInvite.dollTheme.dollTitle) partner check-in invite."
            )
            dollArchive.dollHistory.insert(dollHistory, at: 0)
            dollArchive.dollRewards = makeDollRewards(dollHistory: dollArchive.dollHistory)
            DolluCheckinStarLedger.shared.addDollStars(25, dollEventId: "posted_invite_\(dollInvite.dollInviteId)")
        }
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        return dollArchive
    }

    func toggleDollTask(dollTaskId: String) -> DolluCheckinArchiveState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        dollArchive.dollTasks = dollArchive.dollTasks.map {
            var dollTask = $0
            if dollTask.dollTaskId == dollTaskId {
                dollTask.dollIsFinished.toggle()
            }
            return dollTask
        }
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        return dollArchive
    }

    func toggleDollPartnerJoin(dollPartnerId: String) -> DolluCheckinArchiveState {
        completeDollPartnerJoin(dollPartnerId: dollPartnerId, dollHonorCount: 25)
    }

    func completeDollPartnerJoin(dollPartnerId: String, dollHonorCount: Int) -> DolluCheckinArchiveState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        let dollWasJoined = dollArchive.dollPartners.first(where: { $0.dollPartnerId == dollPartnerId })?.dollIsJoined == true
        dollArchive.dollPartners = dollArchive.dollPartners.map {
            var dollPartner = $0
            if dollPartner.dollPartnerId == dollPartnerId {
                dollPartner.dollIsJoined = true
            }
            return dollPartner
        }
        if !dollWasJoined {
            let dollHistory = DolluCheckinHistoryArchive(
                dollHistoryId: UUID().uuidString,
                dollDateText: "Today",
                dollKind: .displayNote,
                dollNote: "Completed a collector partner doll routine."
            )
            dollArchive.dollHistory.insert(dollHistory, at: 0)
            let dollStreak = dollArchive.dollCollector.dollCheckedToday ? dollArchive.dollCollector.dollStreakCount : dollArchive.dollCollector.dollStreakCount + 1
            dollArchive.dollCollector = DolluCheckinCollectorProfile(
                dollCollectorName: dollArchive.dollCollector.dollCollectorName,
                dollCollectorEmail: dollArchive.dollCollector.dollCollectorEmail,
                dollAvatarURL: dollArchive.dollCollector.dollAvatarURL,
                dollStreakCount: min(7, max(1, dollStreak)),
                dollCheckedToday: true,
                dollCheckedDateKey: currentDollDateKey()
            )
            dollArchive.dollStreakDays = makeDollStreakDays(dollCount: dollArchive.dollCollector.dollStreakCount, dollCheckedToday: true)
            dollArchive.dollRewards = makeDollRewards(dollHistory: dollArchive.dollHistory)
            DolluCheckinStarLedger.shared.addDollStars(dollHonorCount, dollEventId: "partner_checkin_\(dollPartnerId)")
        }
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        return dollArchive
    }

    private func makeDollSeedArchive() -> DolluCheckinArchiveState {
        let dollRecord = DolluWardrobeArchiveStore.satinCollectionArchive.currentDollCollectorRecord()
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollName = dollRecord?.dollCollectorName ?? dollSession.currentDollCollectorEmail ?? "Dollu Collector"
        let dollCollector = DolluCheckinCollectorProfile(
            dollCollectorName: dollName,
            dollCollectorEmail: dollSession.currentDollCollectorEmail ?? dollRecord?.dollCollectorEmail ?? "collector@dollu.local",
            dollAvatarURL: nil,
            dollStreakCount: 0,
            dollCheckedToday: false,
            dollCheckedDateKey: nil
        )
        let dollTasks = [
            DolluCheckinTaskArchive(dollTaskId: "outfit", dollKind: .outfitStyling, dollCopy: "+15  Pair one outfit set", dollIsFinished: false),
            DolluCheckinTaskArchive(dollTaskId: "shelf", dollKind: .shelfCare, dollCopy: "+15  Refresh a display corner", dollIsFinished: false),
            DolluCheckinTaskArchive(dollTaskId: "note", dollKind: .displayNote, dollCopy: "+20  Save today in your archive", dollIsFinished: false)
        ]
        let dollPartners = [
            DolluCheckinPartnerArchive(
                dollPartnerId: "partner_a",
                dollName: "Mika",
                dollGoal: "Invited you to share a shelf care day",
                dollStreakCount: 25,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 1),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 1),
                dollIsJoined: false
            ),
            DolluCheckinPartnerArchive(
                dollPartnerId: "partner_b",
                dollName: "Sora",
                dollGoal: "Waiting for your outfit pairing",
                dollStreakCount: 25,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 3),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 2),
                dollIsJoined: false
            ),
            DolluCheckinPartnerArchive(
                dollPartnerId: "partner_c",
                dollName: "Nora",
                dollGoal: "Accessory matching routine",
                dollStreakCount: 18,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 2),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 3),
                dollIsJoined: false
            )
        ]
        let dollHistory: [DolluCheckinHistoryArchive] = []
        return DolluCheckinArchiveState(
            dollCollector: dollCollector,
            dollPeers: makeDollPeers(dollName: dollName, dollCollectorId: dollSession.currentDollCollectorId),
            dollStreakDays: makeDollStreakDays(dollCount: 0, dollCheckedToday: false),
            dollTasks: dollTasks,
            dollPartners: dollPartners,
            dollRewards: makeDollRewards(dollHistory: dollHistory),
            dollHistory: dollHistory
        )
    }

    private func makeDollPeers(dollName: String, dollCollectorId: String?) -> [DolluCheckinPeerArchive] {
        [
            DolluCheckinPeerArchive(dollPeerId: dollCollectorId ?? "peer_current", dollName: dollName, dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0), dollIsCurrent: true),
            DolluCheckinPeerArchive(dollPeerId: "peer_b", dollName: "Isabella", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0), dollIsCurrent: false),
            DolluCheckinPeerArchive(dollPeerId: "peer_c", dollName: "Gabriel", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 1), dollIsCurrent: false),
            DolluCheckinPeerArchive(dollPeerId: "peer_d", dollName: "Amelia", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 2), dollIsCurrent: false),
            DolluCheckinPeerArchive(dollPeerId: "peer_e", dollName: "Sora", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 3), dollIsCurrent: false)
        ]
    }

    private func makeDollStreakDays(dollCount: Int, dollCheckedToday: Bool) -> [DolluCheckinDayArchive] {
        let dollLabels = ["D1", "D2", "D3", "D4", "D5", "D6", "D7"]
        return dollLabels.enumerated().map { dollIndex, dollText in
            DolluCheckinDayArchive(dollDayText: dollText, dollIsDone: dollIndex < min(7, dollCount) || (dollCheckedToday && dollIndex == 0))
        }
    }

    private func makeDollRewards(dollHistory: [DolluCheckinHistoryArchive]) -> [DolluCheckinRewardArchive] {
        let dollOutfitCount = dollHistory.filter { $0.dollKind == .outfitStyling }.count
        let dollShelfCount = dollHistory.filter { $0.dollKind == .shelfCare }.count
        let dollNoteCount = dollHistory.filter { $0.dollKind == .displayNote }.count
        return [
            DolluCheckinRewardArchive(dollRewardId: "honor_outfit", dollTitle: "Outfit Mix Badge", dollCopy: "\(dollOutfitCount)/10 outfit check-ins", dollRequiredCount: 10, dollCurrentCount: dollOutfitCount),
            DolluCheckinRewardArchive(dollRewardId: "honor_shelf", dollTitle: "Shelf Care Badge", dollCopy: "\(dollShelfCount)/5 shelf routines", dollRequiredCount: 5, dollCurrentCount: dollShelfCount),
            DolluCheckinRewardArchive(dollRewardId: "honor_note", dollTitle: "Display Note Badge", dollCopy: "\(dollNoteCount)/6 display records", dollRequiredCount: 6, dollCurrentCount: dollNoteCount)
        ]
    }

    private func normalizeDollDailyArchive(_ dollArchive: DolluCheckinArchiveState) -> DolluCheckinArchiveState {
        var dollUpdatedArchive = dollArchive
        dollUpdatedArchive.dollPartners = normalizeDollPartnerDisplayAssets(dollArchive.dollPartners)
        guard dollArchive.dollCollector.dollCheckedDateKey != currentDollDateKey() else {
            return dollUpdatedArchive
        }
        dollUpdatedArchive.dollCollector = DolluCheckinCollectorProfile(
            dollCollectorName: dollArchive.dollCollector.dollCollectorName,
            dollCollectorEmail: dollArchive.dollCollector.dollCollectorEmail,
            dollAvatarURL: dollArchive.dollCollector.dollAvatarURL,
            dollStreakCount: dollArchive.dollCollector.dollStreakCount,
            dollCheckedToday: false,
            dollCheckedDateKey: dollArchive.dollCollector.dollCheckedDateKey
        )
        dollUpdatedArchive.dollTasks = dollArchive.dollTasks.map {
            var dollTask = $0
            dollTask.dollIsFinished = false
            return dollTask
        }
        dollUpdatedArchive.dollStreakDays = makeDollStreakDays(dollCount: dollUpdatedArchive.dollCollector.dollStreakCount, dollCheckedToday: false)
        return dollUpdatedArchive
    }

    private func normalizeDollPartnerDisplayAssets(_ dollPartners: [DolluCheckinPartnerArchive]) -> [DolluCheckinPartnerArchive] {
        dollPartners.enumerated().map { dollIndex, dollPartner in
            let dollPreviewAsset = dollPartner.dollPreviewAssetName
            let dollNeedsDisplayAsset = dollPreviewAsset == nil
            || dollPreviewAsset == DolluCheckinArtworkCatalog.dollInviteDisplayAsset
            || dollPreviewAsset == DolluCheckinArtworkCatalog.dollInviteCollectorAsset
            let dollResolvedDisplay = dollNeedsDisplayAsset
            ? DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: dollIndex)
            : dollPreviewAsset
            return DolluCheckinPartnerArchive(
                dollPartnerId: dollPartner.dollPartnerId,
                dollName: dollPartner.dollName,
                dollGoal: dollPartner.dollGoal,
                dollStreakCount: dollPartner.dollStreakCount,
                dollAvatarAssetName: dollPartner.dollAvatarAssetName ?? DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: dollIndex),
                dollPreviewURL: nil,
                dollPreviewAssetName: dollResolvedDisplay,
                dollIsJoined: dollPartner.dollIsJoined
            )
        }
    }

    private func loadDollLocalArchive() -> DolluCheckinArchiveState? {
        guard let dollData = UserDefaults.standard.data(forKey: currentDollArchiveKey()),
              let dollArchive = try? JSONDecoder().decode(DolluCheckinArchiveState.self, from: dollData) else {
            return nil
        }
        return dollArchive
    }

    private func saveDollLocalArchive(_ dollArchive: DolluCheckinArchiveState) {
        guard let dollData = try? JSONEncoder().encode(dollArchive) else { return }
        UserDefaults.standard.set(dollData, forKey: currentDollArchiveKey())
    }

    private func currentDollArchiveKey() -> String {
        let dollStore = DolluWardrobeArchiveStore.satinCollectionArchive
        let dollSession = dollStore.dollWardrobeSession
        let dollCollectorKey = dollSession.currentDollCollectorId
            ?? dollSession.currentDollCollectorEmail
            ?? dollStore.currentDollCollectorRecord()?.dollCollectorEmail
            ?? "guest"
        return "\(velvetTagsetDollcavo)_\(dollCollectorKey)"
    }

    private func currentDollDateKey() -> String {
        let dollFormatter = DateFormatter()
        dollFormatter.calendar = Calendar(identifier: .gregorian)
        dollFormatter.locale = Locale(identifier: "en_US_POSIX")
        dollFormatter.dateFormat = "yyyy-MM-dd"
        return dollFormatter.string(from: Date())
    }
}

enum DolluCheckinArtworkCatalog {
    static let dollInviteCollectorAsset = "dollu_checkin_invite_collector"
    static let dollInviteDisplayAsset = "dollu_checkin_invite_display"
    private static let dreamySnapshotDollniva = [
        "dollu_checkin_invite_plush_mascot",
        "dollu_checkin_invite_pastel_duo",
        "dollu_checkin_invite_brown_plush",
        "dollu_checkin_invite_knit_doll"
    ]

    private static let pastelCatalogDollvani = [
        "dollu_checkin_avatar_isabella",
        "dollu_checkin_avatar_gabriel",
        "dollu_checkin_avatar_amelia",
        "dollu_checkin_avatar_sora"
    ]

    static func dollAvatarAsset(dollIndex: Int) -> String {
        pastelCatalogDollvani[abs(dollIndex) % pastelCatalogDollvani.count]
    }

    static func dollInviteDollAsset(dollIndex: Int) -> String {
        dreamySnapshotDollniva[abs(dollIndex) % dreamySnapshotDollniva.count]
    }
}
