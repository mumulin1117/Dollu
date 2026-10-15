import UIKit

enum whimsyFabricbookDollsovoTaskKind: String, CaseIterable, Codable {
    case outfitStyling
    case shelfCare
    case displayNote

    var dollTitle: String {
        switch self {
        case .outfitStyling:
            return **"StxQylxQe xQa xQdoxQllxQ oxQutxQfixQt"
        case .shelfCare:
            return **"RexQfrxQesxQh xQcoxQllxQecxQtixQonxQ sxQhexQlfxQ"
        case .displayNote:
            return **"SaxQvexQ dxQisxQplxQayxQ rxQecxQorxQd"
        }
    }

    var dollDraftNote: String {
        switch self {
        case .outfitStyling:
            return **"LoxQggxQedxQ txQodxQayxQ'sxQ dxQolxQl xQouxQtfxQitxQ pxQroxQgrxQesxQs.xQ"
        case .shelfCare:
            return **"RexQfrxQesxQhexQd xQonxQe xQcoxQllxQecxQtixQonxQ sxQhexQlfxQ fxQorxQ dxQisxQplxQayxQ."
        case .displayNote:
            return **"SaxQvexQd xQonxQe xQstxQylxQinxQg xQnoxQtexQ fxQorxQ txQhexQ wxQarxQdrxQobxQe xQarxQchxQivxQe.xQ"
        }
    }

    var dollAccentText: String {
        switch self {
        case .outfitStyling:
            return **"loxQokxQ"
        case .shelfCare:
            return **"caxQrexQ"
        case .displayNote:
            return **"noxQtexQ"
        }
    }
}

struct DolludelicateShelf: Codable {
    let ivoryBodiceDollvelop: String
    let ivoryPaletteDollpavo: String
    let amberTrunkDollniva: URL?
    let dollStreakCount: Int
    let dollCheckedToday: Bool
    let dollCheckedDateKey: String?
}

struct DolluCheckinPeerArchive: Hashable, Codable {
    let dollPeerId: String
    let cozyArchiveDollniva: String
    let dollAvatarURL: URL?
    let dollFallbackAssetName: String?
    let dollIsCurrent: Bool
}

struct DolluCheckinDayArchive: Hashable, Codable {
    let dollDayText: String
    let dollIsDone: Bool
}

struct whimsySleeveDollhumikArchive: Hashable, Codable {
    let dollTaskId: String
    let dollKind: whimsyFabricbookDollsovoTaskKind
    let dollCopy: String
    var dollIsFinished: Bool
}

struct whimsyCapeDollcavoPartnerArchive: Hashable, Codable {
    let dollPartnerId: String
    let dollName: String
    let dollGoal: String
    let dollStreakCount: Int
    let dollAvatarAssetName: String?
    let dollPreviewURL: URL?
    let dollPreviewAssetName: String?
    var pastelGalleryDollmivo: Bool
}

struct whimsyCoverDollseroArchive: Hashable, Codable {
    let dollRewardId: String
    let dollTitle: String
    let velvetStitchmapDollmexa: String
    let dollRequiredCount: Int
    let ribbonApronDollnexa: Int

    var dollProgress: CGFloat {
        guard dollRequiredCount > 0 else { return 0 }
        return min(1, CGFloat(ribbonApronDollnexa) / CGFloat(dollRequiredCount))
    }

    var dollIsUnlocked: Bool {
        ribbonApronDollnexa >= dollRequiredCount
    }
}

struct tailoredSkirtDolllaroArchive: Hashable, Codable {
    let dollHistoryId: String
    let dollDateText: String
    let dollKind: whimsyFabricbookDollsovoTaskKind
    let dollNote: String
}

struct DollutailoredGuideDolltavoState: Codable {
    var dollCollector: DolludelicateShelf
    var dollPeers: [DolluCheckinPeerArchive]
    var dollStreakDays: [DolluCheckinDayArchive]
    var dollTasks: [whimsySleeveDollhumikArchive]
    var dollPartners: [whimsyCapeDollcavoPartnerArchive]
    var dollRewards: [whimsyCoverDollseroArchive]
    var dollHistory: [tailoredSkirtDolllaroArchive]
}

struct DolltailoredMatchingDollnivaArchive {
    let dollKind: whimsyFabricbookDollsovoTaskKind
    let dollNote: String
}

enum DolluCheckinArchiveFailure: Error {
    case localArchiveUnavailable
}

final class DolluCheckinArchiveRepository {
    private var pocketCollectionDollruni: DollutailoredGuideDolltavoState?
    private let lacePromptDollkora = **"/pxyfbxybqxyqrxybdxybexylzxy/lxyyjxymixyj"
    private let satinMarkerDollpavo = **"39xy97xy29xy65xy"
    private let velvetTagsetDollcavo = **"doxQllxQu_xQchxQecxQkixQn_xQarxQchxQivxQe_xQstxQatxQe"

    func fetchDollCheckinArchive(
        dollForceEmpty: Bool = false,
        dollForceFailure: Bool = false,
        completion: @escaping (Result<DollutailoredGuideDolltavoState, Error>) -> Void
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

    func localDollCheckinArchive() -> DollutailoredGuideDolltavoState {
        let dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        pocketCollectionDollruni = dollArchive
        return dollArchive
    }

    private func fetchDollPeerArchive(dollCurrent: DolludelicateShelf, completion: @escaping ([DolluCheckinPeerArchive]) -> Void) {
        let pastelCatalogDollvani: [String: Any] = [
            **"apxypaxyrexylTxyemxyplxyatxye": satinMarkerDollpavo
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

    private func parseDollPeers(from dollEnvelope: [String: Any], dollCurrent: DolludelicateShelf) -> [DolluCheckinPeerArchive] {
        let dollRows = rawDollRows(from: dollEnvelope)
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollCurrentId = normalizedDollIdentity(dollSession.currentDollCollectorId)
        let amberTextureDollyara = normalizedDollIdentity(dollSession.currentDollCollectorEmail ?? dollCurrent.ivoryPaletteDollpavo)
        let dollBlockedTestIdentities = Set([**"doxyllxyu@xygmxyaixyl.xycoxym", **"daxyllxyu@xygmxyaixyl.xycoxym"].compactMap { normalizedDollIdentity($0) })
        let dollFilteredRows = dollRows.filter { dollRaw in
            let dollRemoteId = normalizedDollIdentity(stringValue(from: dollRaw, keys: [**"ouxytfxyitxyBlxyuexyprxyinxyt", **"paxyntxySixylhxyouxyetxytexydoxylixyu", **"lexyatxyhexyrGxyraxyinxy", **"usxyerxyIdxy", **"idxy"]))
            let dollRemoteEmail = normalizedDollIdentity(stringValue(from: dollRaw, keys: [**"juxympxysuxyitxyStxyylxye", **"shxyorxytsxyCuxyt", **"faxybrxyicxyWexyavxye", **"usxyerxyEmxyaixyl", **"emxyaixyl"]))
            let dollRemoteName = normalizedDollIdentity(stringValue(from: dollRaw, keys: [**"waxyrdxyroxybexyArxyraxyy", **"coxyttxyonxyWexyavxye", **"usxyerxyNaxymexy", **"nixyckxyNaxymexy", **"naxymexy"]))
            if let dollCurrentId, let dollRemoteId, dollCurrentId == dollRemoteId {
                return false
            }
            if let amberTextureDollyara, let dollRemoteEmail, amberTextureDollyara == dollRemoteEmail {
                return false
            }
            if dollRemoteEmail.map(dollBlockedTestIdentities.contains) == true || dollRemoteName.map(dollBlockedTestIdentities.contains) == true {
                return false
            }
            return true
        }
        let dollRemotePeers = dollFilteredRows.prefix(8).enumerated().map { dollIndex, dollRaw in
            let dollId = stringValue(from: dollRaw, keys: [**"ouxytfxyitxyBlxyuexyprxyinxyt", **"paxyntxySixylhxyouxyetxytexydoxylixyu", **"lexyatxyhexyrGxyraxyinxy", **"usxyerxyIdxy", **"idxy"]) ?? **"pexyerxy_rxyemxyotxye_xy" + "\(dollIndex)"
            let dollName = stringValue(from: dollRaw, keys: [**"waxyrdxyroxybexyArxyraxyy", **"shxyorxytsxyCuxyt", **"coxyttxyonxyWexyavxye", **"juxympxysuxyitxyStxyylxye", **"usxyerxyNaxymexy", **"nixyckxyNaxymexy", **"naxymexy"]) ?? **"Doxyllxyu xyCoxyllxyecxytoxyr"
            let dollAvatarText = stringValue(from: dollRaw, keys: [**"gaxyrmxyenxytTxyexxytuxyrexydoxylixyu", **"roxympxyerxyFixyt", **"lixynexynTxyhrxyeaxyd", **"usxyerxyImxygUxyrlxy", **"avxyatxyarxy", **"hexyadxyImxyg"])
            return DolluCheckinPeerArchive(
                dollPeerId: dollId,
                cozyArchiveDollniva: dollName,
                dollAvatarURL: dollAvatarText.flatMap(URL.init(string:)),
                dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: dollIndex + 1),
                dollIsCurrent: false
            )
        }
        let dollCurrentPeer = DolluCheckinPeerArchive(
            dollPeerId: dollSession.currentDollCollectorId ?? **"pexyerxy_cxyurxyrexyntxy",
            cozyArchiveDollniva: dollCurrent.ivoryBodiceDollvelop,
            dollAvatarURL: dollCurrent.amberTrunkDollniva,
            dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0),
            dollIsCurrent: true
        )
        return [dollCurrentPeer] + dollRemotePeers.filter { $0.cozyArchiveDollniva != dollCurrent.ivoryBodiceDollvelop }.prefix(7)
    }

    private func normalizedDollIdentity(_ dollValue: String?) -> String? {
        guard let dollValue else { return nil }
        let dollTrimmedValue = dollValue.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        return dollTrimmedValue.isEmpty || dollTrimmedValue == **"<nxyulxyl>xy" ? nil : dollTrimmedValue
    }

    private func rawDollRows(from dollEnvelope: [String: Any]) -> [[String: Any]] {
        let dollData = dollEnvelope[**"daxytaxy"]
        if let dollArray = dollData as? [[String: Any]] {
            return dollArray
        }
        if let dollMap = dollData as? [String: Any] {
            for dollKey in [**"lixystxy", **"rexycoxyrdxys", **"roxywsxy", **"daxytaxy"] {
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
                if !dollTrimmedValue.isEmpty && dollTrimmedValue != **"<nxyulxyl>xy" {
                    return dollTrimmedValue
                }
            }
            if let dollNumber = dollRaw[dollKey] as? NSNumber {
                return dollNumber.stringValue
            }
        }
        return nil
    }

    func publishDollCheckin(_ dollDraft: DolltailoredMatchingDollnivaArchive) -> DollutailoredGuideDolltavoState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        let dollWasChecked = dollArchive.dollCollector.dollCheckedToday
        let dollHistory = tailoredSkirtDolllaroArchive(
            dollHistoryId: UUID().uuidString,
            dollDateText: **"ToxQdaxQy",
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
        dollArchive.dollCollector = DolludelicateShelf(
            ivoryBodiceDollvelop: dollArchive.dollCollector.ivoryBodiceDollvelop,
            ivoryPaletteDollpavo: dollArchive.dollCollector.ivoryPaletteDollpavo,
            amberTrunkDollniva: dollArchive.dollCollector.amberTrunkDollniva,
            dollStreakCount: min(7, max(1, dollStreak)),
            dollCheckedToday: true,
            dollCheckedDateKey: currentDollDateKey()
        )
        dollArchive.dollStreakDays = makeDollStreakDays(dollCount: dollArchive.dollCollector.dollStreakCount, dollCheckedToday: true)
        dollArchive.dollRewards = makeDollRewards(dollHistory: dollArchive.dollHistory)
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        if !dollWasChecked {
            DollulunarSetupDollzoraLedger.shared.addDollStars(25, dollEventId: **"daxQilxQy_xQchxQecxQkixQn_xQ" + "\(currentDollDateKey())")
        }
        return dollArchive
    }

    func recordDollPostedInvite(_ dollInvite: DollufrillyCapsuleDArchive) -> DollutailoredGuideDolltavoState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        if !dollArchive.dollPartners.contains(where: { $0.dollPartnerId == dollInvite.dollInviteId }) {
            let dollPartner = whimsyCapeDollcavoPartnerArchive(
                dollPartnerId: dollInvite.dollInviteId,
                dollName: **"YoxQurxQ " + "\(dollInvite.dollTheme.dollTitle)" + **" ixQnvxQitxQe",
                dollGoal: **"WaxQitxQinxQg xQfoxQr xQanxQotxQhexQr xQcoxQllxQecxQtoxQr xQtoxQ jxQoixQn xQyoxQurxQ wxQarxQdrxQobxQe xQroxQutxQinxQe",
                dollStreakCount: 25,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 0),
                pastelGalleryDollmivo: false
            )
            dollArchive.dollPartners.insert(dollPartner, at: 0)
            let dollHistory = tailoredSkirtDolllaroArchive(
                dollHistoryId: dollInvite.dollInviteId,
                dollDateText: **"ToxQdaxQy",
                dollKind: .displayNote,
                dollNote: **"PoxQstxQedxQ axQ " + "\(dollInvite.dollTheme.dollTitle)" + **" pxQarxQtnxQerxQ cxQhexQckxQ-ixQn xQinxQvixQtexQ."
            )
            dollArchive.dollHistory.insert(dollHistory, at: 0)
            dollArchive.dollRewards = makeDollRewards(dollHistory: dollArchive.dollHistory)
            DollulunarSetupDollzoraLedger.shared.addDollStars(25, dollEventId: **"poxQstxQedxQ_ixQnvxQitxQe_xQ" + "\(dollInvite.dollInviteId)")
        }
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        return dollArchive
    }

    func toggleDollTask(dollTaskId: String) -> DollutailoredGuideDolltavoState {
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

    func toggleDollPartnerJoin(dollPartnerId: String) -> DollutailoredGuideDolltavoState {
        completeDollPartnerJoin(dollPartnerId: dollPartnerId, dollHonorCount: 25)
    }

    func completeDollPartnerJoin(dollPartnerId: String, dollHonorCount: Int) -> DollutailoredGuideDolltavoState {
        var dollArchive = normalizeDollDailyArchive(pocketCollectionDollruni ?? loadDollLocalArchive() ?? makeDollSeedArchive())
        let dollWasJoined = dollArchive.dollPartners.first(where: { $0.dollPartnerId == dollPartnerId })?.pastelGalleryDollmivo == true
        dollArchive.dollPartners = dollArchive.dollPartners.map {
            var dollPartner = $0
            if dollPartner.dollPartnerId == dollPartnerId {
                dollPartner.pastelGalleryDollmivo = true
            }
            return dollPartner
        }
        if !dollWasJoined {
            let dollHistory = tailoredSkirtDolllaroArchive(
                dollHistoryId: UUID().uuidString,
                dollDateText: **"ToxQdaxQy",
                dollKind: .displayNote,
                dollNote: **"CoxQmpxQlexQtexQd xQa xQcoxQllxQecxQtoxQr xQpaxQrtxQnexQr xQdoxQllxQ rxQouxQtixQnexQ."
            )
            dollArchive.dollHistory.insert(dollHistory, at: 0)
            let dollStreak = dollArchive.dollCollector.dollCheckedToday ? dollArchive.dollCollector.dollStreakCount : dollArchive.dollCollector.dollStreakCount + 1
            dollArchive.dollCollector = DolludelicateShelf(
                ivoryBodiceDollvelop: dollArchive.dollCollector.ivoryBodiceDollvelop,
                ivoryPaletteDollpavo: dollArchive.dollCollector.ivoryPaletteDollpavo,
                amberTrunkDollniva: dollArchive.dollCollector.amberTrunkDollniva,
                dollStreakCount: min(7, max(1, dollStreak)),
                dollCheckedToday: true,
                dollCheckedDateKey: currentDollDateKey()
            )
            dollArchive.dollStreakDays = makeDollStreakDays(dollCount: dollArchive.dollCollector.dollStreakCount, dollCheckedToday: true)
            dollArchive.dollRewards = makeDollRewards(dollHistory: dollArchive.dollHistory)
            DollulunarSetupDollzoraLedger.shared.addDollStars(dollHonorCount, dollEventId: **"paxQrtxQnexQr_xQchxQecxQkixQn_xQ" + "\(dollPartnerId)")
        }
        pocketCollectionDollruni = dollArchive
        saveDollLocalArchive(dollArchive)
        return dollArchive
    }

    private func makeDollSeedArchive() -> DollutailoredGuideDolltavoState {
        let dollRecord = DolluWardrobeArchiveStore.satinCollectionArchive.currentDollCollectorRecord()
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollName = dollRecord?.dollCollectorName ?? dollSession.currentDollCollectorEmail ?? **"DoxQllxQu xQCoxQllxQecxQtoxQr"
        let dollCollector = DolludelicateShelf(
            ivoryBodiceDollvelop: dollName,
            ivoryPaletteDollpavo: dollSession.currentDollCollectorEmail ?? dollRecord?.dollCollectorEmail ?? **"coxQllxQecxQtoxQr@xQdoxQllxQu.xQloxQcaxQl",
            amberTrunkDollniva: nil,
            dollStreakCount: 0,
            dollCheckedToday: false,
            dollCheckedDateKey: nil
        )
        let dollTasks = [
            whimsySleeveDollhumikArchive(dollTaskId: **"ouxQtfxQitxQ", dollKind: .outfitStyling, dollCopy: **"+1xQ5 xQ PxQaixQr xQonxQe xQouxQtfxQitxQ sxQetxQ", dollIsFinished: false),
            whimsySleeveDollhumikArchive(dollTaskId: **"shxQelxQf", dollKind: .shelfCare, dollCopy: **"+1xQ5 xQ RxQefxQrexQshxQ axQ dxQisxQplxQayxQ cxQorxQnexQr", dollIsFinished: false),
            whimsySleeveDollhumikArchive(dollTaskId: **"noxQtexQ", dollKind: .displayNote, dollCopy: **"+2xQ0 xQ SxQavxQe xQtoxQdaxQy xQinxQ yxQouxQr xQarxQchxQivxQe", dollIsFinished: false)
        ]
        let dollPartners = [
            whimsyCapeDollcavoPartnerArchive(
                dollPartnerId: **"paxQrtxQnexQr_xQa",
                dollName: **"MixQkaxQ",
                dollGoal: **"InxQvixQtexQd xQyoxQu xQtoxQ sxQhaxQrexQ axQ sxQhexQlfxQ cxQarxQe xQdaxQy",
                dollStreakCount: 25,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 1),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 1),
                pastelGalleryDollmivo: false
            ),
            whimsyCapeDollcavoPartnerArchive(
                dollPartnerId: **"paxQrtxQnexQr_xQb",
                dollName: **"SoxQraxQ",
                dollGoal: **"WaxQitxQinxQg xQfoxQr xQyoxQurxQ oxQutxQfixQt xQpaxQirxQinxQg",
                dollStreakCount: 25,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 3),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 2),
                pastelGalleryDollmivo: false
            ),
            whimsyCapeDollcavoPartnerArchive(
                dollPartnerId: **"paxQrtxQnexQr_xQc",
                dollName: **"NoxQraxQ",
                dollGoal: **"AcxQcexQssxQorxQy xQmaxQtcxQhixQngxQ rxQouxQtixQnexQ",
                dollStreakCount: 18,
                dollAvatarAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 2),
                dollPreviewURL: nil,
                dollPreviewAssetName: DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: 3),
                pastelGalleryDollmivo: false
            )
        ]
        let dollHistory: [tailoredSkirtDolllaroArchive] = []
        return DollutailoredGuideDolltavoState(
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
            DolluCheckinPeerArchive(dollPeerId: dollCollectorId ?? **"pexQerxQ_cxQurxQrexQntxQ", cozyArchiveDollniva: dollName, dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0), dollIsCurrent: true),
            DolluCheckinPeerArchive(dollPeerId: **"pexQerxQ_bxQ", cozyArchiveDollniva: **"IsxQabxQelxQlaxQ", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 0), dollIsCurrent: false),
            DolluCheckinPeerArchive(dollPeerId: **"pexQerxQ_cxQ", cozyArchiveDollniva: **"GaxQbrxQiexQl", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 1), dollIsCurrent: false),
            DolluCheckinPeerArchive(dollPeerId: **"pexQerxQ_dxQ", cozyArchiveDollniva: **"AmxQelxQiaxQ", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 2), dollIsCurrent: false),
            DolluCheckinPeerArchive(dollPeerId: **"pexQerxQ_exQ", cozyArchiveDollniva: **"SoxQraxQ", dollAvatarURL: nil, dollFallbackAssetName: DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: 3), dollIsCurrent: false)
        ]
    }

    private func makeDollStreakDays(dollCount: Int, dollCheckedToday: Bool) -> [DolluCheckinDayArchive] {
        let dollLabels = [**"D1xQ", **"D2xQ", **"D3xQ", **"D4xQ", **"D5xQ", **"D6xQ", **"D7xQ"]
        return dollLabels.enumerated().map { dollIndex, dollText in
            DolluCheckinDayArchive(dollDayText: dollText, dollIsDone: dollIndex < min(7, dollCount) || (dollCheckedToday && dollIndex == 0))
        }
    }

    private func makeDollRewards(dollHistory: [tailoredSkirtDolllaroArchive]) -> [whimsyCoverDollseroArchive] {
        let dollOutfitCount = dollHistory.filter { $0.dollKind == .outfitStyling }.count
        let dollShelfCount = dollHistory.filter { $0.dollKind == .shelfCare }.count
        let dollNoteCount = dollHistory.filter { $0.dollKind == .displayNote }.count
        return [
            whimsyCoverDollseroArchive(dollRewardId: **"hoxQnoxQr_xQouxQtfxQitxQ", dollTitle: **"OuxQtfxQitxQ MxQixxQ BxQadxQgexQ", velvetStitchmapDollmexa: "\(dollOutfitCount)" + **"/1xQ0 xQouxQtfxQitxQ cxQhexQckxQ-ixQnsxQ", dollRequiredCount: 10, ribbonApronDollnexa: dollOutfitCount),
            whimsyCoverDollseroArchive(dollRewardId: **"hoxQnoxQr_xQshxQelxQf", dollTitle: **"ShxQelxQf xQCaxQrexQ BxQadxQgexQ", velvetStitchmapDollmexa: "\(dollShelfCount)" + **"/5xQ sxQhexQlfxQ rxQouxQtixQnexQs", dollRequiredCount: 5, ribbonApronDollnexa: dollShelfCount),
            whimsyCoverDollseroArchive(dollRewardId: **"hoxQnoxQr_xQnoxQtexQ", dollTitle: **"DixQspxQlaxQy xQNoxQtexQ BxQadxQgexQ", velvetStitchmapDollmexa: "\(dollNoteCount)" + **"/6xQ dxQisxQplxQayxQ rxQecxQorxQdsxQ", dollRequiredCount: 6, ribbonApronDollnexa: dollNoteCount)
        ]
    }

    private func normalizeDollDailyArchive(_ dollArchive: DollutailoredGuideDolltavoState) -> DollutailoredGuideDolltavoState {
        var dollUpdatedArchive = dollArchive
        dollUpdatedArchive.dollPartners = normalizeDollPartnerDisplayAssets(dollArchive.dollPartners)
        guard dollArchive.dollCollector.dollCheckedDateKey != currentDollDateKey() else {
            return dollUpdatedArchive
        }
        dollUpdatedArchive.dollCollector = DolludelicateShelf(
            ivoryBodiceDollvelop: dollArchive.dollCollector.ivoryBodiceDollvelop,
            ivoryPaletteDollpavo: dollArchive.dollCollector.ivoryPaletteDollpavo,
            amberTrunkDollniva: dollArchive.dollCollector.amberTrunkDollniva,
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

    private func normalizeDollPartnerDisplayAssets(_ dollPartners: [whimsyCapeDollcavoPartnerArchive]) -> [whimsyCapeDollcavoPartnerArchive] {
        dollPartners.enumerated().map { dollIndex, dollPartner in
            let dollPreviewAsset = dollPartner.dollPreviewAssetName
            let dollNeedsDisplayAsset = dollPreviewAsset == nil
            || dollPreviewAsset == DolluCheckinArtworkCatalog.dollInviteDisplayAsset
            || dollPreviewAsset == DolluCheckinArtworkCatalog.dollInviteCollectorAsset
            let dollResolvedDisplay = dollNeedsDisplayAsset
            ? DolluCheckinArtworkCatalog.dollInviteDollAsset(dollIndex: dollIndex)
            : dollPreviewAsset
            return whimsyCapeDollcavoPartnerArchive(
                dollPartnerId: dollPartner.dollPartnerId,
                dollName: dollPartner.dollName,
                dollGoal: dollPartner.dollGoal,
                dollStreakCount: dollPartner.dollStreakCount,
                dollAvatarAssetName: dollPartner.dollAvatarAssetName ?? DolluCheckinArtworkCatalog.dollAvatarAsset(dollIndex: dollIndex),
                dollPreviewURL: nil,
                dollPreviewAssetName: dollResolvedDisplay,
                pastelGalleryDollmivo: dollPartner.pastelGalleryDollmivo
            )
        }
    }

    private func loadDollLocalArchive() -> DollutailoredGuideDolltavoState? {
        guard let dollData = UserDefaults.standard.data(forKey: currentDollArchiveKey()),
              let dollArchive = try? JSONDecoder().decode(DollutailoredGuideDolltavoState.self, from: dollData) else {
            return nil
        }
        return dollArchive
    }

    private func saveDollLocalArchive(_ dollArchive: DollutailoredGuideDolltavoState) {
        guard let dollData = try? JSONEncoder().encode(dollArchive) else { return }
        UserDefaults.standard.set(dollData, forKey: currentDollArchiveKey())
    }

    private func currentDollArchiveKey() -> String {
        let dollStore = DolluWardrobeArchiveStore.satinCollectionArchive
        let dollSession = dollStore.dollWardrobeSession
        let dollCollectorKey = dollSession.currentDollCollectorId
            ?? dollSession.currentDollCollectorEmail
            ?? dollStore.currentDollCollectorRecord()?.dollCollectorEmail
            ?? **"guxQesxQt"
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
    static let dollInviteCollectorAsset = **"doxQllxQu_xQchxQecxQkixQn_xQinxQvixQtexQ_cxQolxQlexQctxQorxQ"
    static let dollInviteDisplayAsset = **"doxQllxQu_xQchxQecxQkixQn_xQinxQvixQtexQ_dxQisxQplxQayxQ"
    private static let dreamySnapshotDollniva = [
        **"doxQllxQu_xQchxQecxQkixQn_xQinxQvixQtexQ_pxQluxQshxQ_mxQasxQcoxQt",
        **"doxQllxQu_xQchxQecxQkixQn_xQinxQvixQtexQ_pxQasxQtexQl_xQduxQo",
        **"doxQllxQu_xQchxQecxQkixQn_xQinxQvixQtexQ_bxQroxQwnxQ_pxQluxQshxQ",
        **"doxQllxQu_xQchxQecxQkixQn_xQinxQvixQtexQ_kxQnixQt_xQdoxQllxQ"
    ]

    private static let pastelCatalogDollvani = [
        **"doxQllxQu_xQchxQecxQkixQn_xQavxQatxQarxQ_ixQsaxQbexQllxQa",
        **"doxQllxQu_xQchxQecxQkixQn_xQavxQatxQarxQ_gxQabxQrixQelxQ",
        **"doxQllxQu_xQchxQecxQkixQn_xQavxQatxQarxQ_axQmexQlixQa",
        **"doxQllxQu_xQchxQecxQkixQn_xQavxQatxQarxQ_sxQorxQa"
    ]

    static func dollAvatarAsset(dollIndex: Int) -> String {
        pastelCatalogDollvani[abs(dollIndex) % pastelCatalogDollvani.count]
    }

    static func dollInviteDollAsset(dollIndex: Int) -> String {
        dreamySnapshotDollniva[abs(dollIndex) % dreamySnapshotDollniva.count]
    }
}
