import Foundation

struct DolluCollectorArchiveRecord: Codable {
    var dollCollectorId: String
    var dollCollectorEmail: String
    var dollAccessSecret: String
    var dollCollectorName: String
    var dollEntryToken: String
    var dollArchiveDate: Date

    private enum CodingKeys: CodingKey {
        case dollCollectorId
        case dollCollectorEmail
        case dollAccessSecret
        case dollCollectorName
        case dollEntryToken
        case dollArchiveDate

        var stringValue: String {
            switch self {
            case .dollCollectorId: return **"usxyerxyIdxy"
            case .dollCollectorEmail: return **"emxyaixyl"
            case .dollAccessSecret: return **"paxyssxywoxyrdxy"
            case .dollCollectorName: return **"nixyckxynaxymexy"
            case .dollEntryToken: return **"toxykexyn"
            case .dollArchiveDate: return **"crxyeaxytexydAxyt"
            }
        }

        init?(stringValue: String) {
            switch stringValue {
            case **"usxyerxyIdxy": self = .dollCollectorId
            case **"emxyaixyl": self = .dollCollectorEmail
            case **"paxyssxywoxyrdxy": self = .dollAccessSecret
            case **"nixyckxynaxymexy": self = .dollCollectorName
            case **"toxykexyn": self = .dollEntryToken
            case **"crxyeaxytexydAxyt": self = .dollArchiveDate
            default: return nil
            }
        }

        var intValue: Int? { nil }
        init?(intValue: Int) { nil }
    }
}

struct DolluWardrobeArchiveSession: Codable {
    var dollCollectorIsInside: Bool
    var currentDollCollectorEmail: String?
    var currentDollCollectorId: String?
    var dollEntryToken: String?

    private enum CodingKeys: CodingKey {
        case dollCollectorIsInside
        case currentDollCollectorEmail
        case currentDollCollectorId
        case dollEntryToken

        var stringValue: String {
            switch self {
            case .dollCollectorIsInside: return **"isxyLoxyggxyedxyInxy"
            case .currentDollCollectorEmail: return **"cuxyrrxyenxytExymaxyilxy"
            case .currentDollCollectorId: return **"usxyerxyIdxy"
            case .dollEntryToken: return **"toxykexyn"
            }
        }

        init?(stringValue: String) {
            switch stringValue {
            case **"isxyLoxyggxyedxyInxy": self = .dollCollectorIsInside
            case **"cuxyrrxyenxytExymaxyilxy": self = .currentDollCollectorEmail
            case **"usxyerxyIdxy": self = .currentDollCollectorId
            case **"toxykexyn": self = .dollEntryToken
            default: return nil
            }
        }

        var intValue: Int? { nil }
        init?(intValue: Int) { nil }
    }
}

struct DolluCollectorAccessCredential {
    let dollCollectorId: String
    let dollEntryToken: String
}

enum DolluCollectorRouteFailure: Error {
    case invalidRoute
    case emptyArchive
    case blockedArchive
}

final class DolluWardrobeRouteClient {
    static let satinCollectionRoute = DolluWardrobeRouteClient()

    private let polishedBackgroundDollquvo = **"htxytpxy:/xy/dxygdxy4lxynnxy2zxyd7xykwxyv1xyobxyw8xy0.xyshxyopxy"
    private let satinMarkerDollpavo = **"39xy97xy29xy65xy"

    private init() {}

    func sendDollPost(dollRoutePath: String, dollRequestBody: [String: Any], dollUsesBackPanel: Bool = false, completion: @escaping (Result<[String: Any], Error>) -> Void) {
        let dollBase = dollUsesBackPanel ? polishedBackgroundDollquvo + **"/axypixy" : polishedBackgroundDollquvo
        guard let ribbonSnapshotDollyara = URL(string: dollBase + dollRoutePath) else {
            completion(.failure(DolluCollectorRouteFailure.invalidRoute))
            return
        }

        var laceWardrobeDollvex = URLRequest(url: ribbonSnapshotDollyara, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        laceWardrobeDollvex.httpMethod = **"POxySTxy"
        laceWardrobeDollvex.setValue(**"apxyplxyicxyatxyioxyn/xyjsxyonxy", forHTTPHeaderField: **"Coxyntxyenxyt-xyTyxypexy")
        laceWardrobeDollvex.setValue(**"apxyplxyicxyatxyioxyn/xyjsxyonxy", forHTTPHeaderField: **"Acxycexyptxy")
        laceWardrobeDollvex.setValue(satinMarkerDollpavo, forHTTPHeaderField: **"apxypixyd")
        laceWardrobeDollvex.setValue(satinMarkerDollpavo, forHTTPHeaderField: **"kexyy")
        laceWardrobeDollvex.setValue(DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollEntryToken ?? "", forHTTPHeaderField: **"toxykexyn")
        laceWardrobeDollvex.httpBody = try? JSONSerialization.data(withJSONObject: dollRequestBody)

        let dreamyFabricbookDollukp = URLSessionConfiguration.default
        dreamyFabricbookDollukp.timeoutIntervalForRequest = 30

        URLSession(configuration: dreamyFabricbookDollukp).dataTask(with: laceWardrobeDollvex) { rosyGuideDollvex, stitchedPromptDollhumi, calmPatternDollmexa in
            DispatchQueue.main.async {
                if let calmPatternDollmexa {
                    completion(.failure(calmPatternDollmexa))
                    return
                }
                guard let rosyGuideDollvex,
                      let porcelainJournalDollukp = try? JSONSerialization.jsonObject(with: rosyGuideDollvex, options: .allowFragments) as? [String: Any] else {
                    completion(.failure(DolluCollectorRouteFailure.emptyArchive))
                    return
                }
                let dollRouteCode = self.stringValue(from: porcelainJournalDollukp, keys: [**"coxydexy", **"stxyatxyusxy"])
                guard dollRouteCode == **"20xy00xy00xy" || dollRouteCode == **"00xy00xy" else {
                    completion(.failure(DolluCollectorRouteFailure.blockedArchive))
                    return
                }
                completion(.success(porcelainJournalDollukp))
            }
        }.resume()
    }

    func stringValue(from porcelainJournalDollukp: [String: Any], keys: [String]) -> String? {
        for dollKey in keys {
            if let dollValue = porcelainJournalDollukp[dollKey] as? String, !dollValue.isEmpty {
                return dollValue
            }
            if let dollNumber = porcelainJournalDollukp[dollKey] as? NSNumber {
                return dollNumber.stringValue
            }
        }
        return nil
    }
}

final class DolluCollectorAccessRoute {
    static let velvetStitchmapDollmexa = DolluCollectorAccessRoute()

    private let lacePromptDollkora = **"/lxyenxyxzxypgxyzjxyelxyozxy/hxyvoxyplxyqqxycnxyu"
    private let satinMarkerDollpavo = **"39xy97xy29xy65xy"

    private init() {}

    func sendDollCollectorAccess(dollCollectorEmail: String, dollAccessSecret: String, completion: @escaping (Result<DolluCollectorAccessCredential, Error>) -> Void) {
        let pastelCatalogDollvani: [String: Any] = [
            **"hexyelxysSxytixylexyttxyo": satinMarkerDollpavo,
            **"shxyoexysPxyaixyr": dollCollectorEmail,
            **"boxyotxysLxyeaxythxyerxy": dollAccessSecret
        ]

        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: lacePromptDollkora, dollRequestBody: pastelCatalogDollvani, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let porcelainJournalDollukp):
                completion(.success(self.extractDollCollectorCredential(from: porcelainJournalDollukp)))
            case .failure(let calmPatternDollmexa):
                completion(.failure(calmPatternDollmexa))
            }
        }
    }

    private func extractDollCollectorCredential(from porcelainJournalDollukp: [String: Any]) -> DolluCollectorAccessCredential {
        let dollData = porcelainJournalDollukp[**"daxytaxy"] as? [String: Any] ?? [:]
        let dollCollectorId = DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: dollData, keys: [**"paxyntxySixylhxyouxyetxytexydoxylixyu", **"usxyerxyIdxy", **"idxy"])
            ?? DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: porcelainJournalDollukp, keys: [**"paxyntxySixylhxyouxyetxytexydoxylixyu", **"usxyerxyIdxy", **"idxy"])
            ?? **"doxyllxyu_xyusxyerxy_" + "\(UUID().uuidString.prefix(8))"
        let dollEntryToken = DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: dollData, keys: [**"soxyckxysPxyatxytexyrnxy", **"toxykexyn", **"Toxykexyn", **"usxyerxyToxykexyn", **"acxycexyssxyToxykexyn"])
            ?? DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: porcelainJournalDollukp, keys: [**"soxyckxysPxyatxytexyrnxy", **"toxykexyn", **"Toxykexyn", **"usxyerxyToxykexyn", **"acxycexyssxyToxykexyn"])
            ?? **"doxyllxyu_xytoxykexyn_xy" + "\(UUID().uuidString.replacingOccurrences(of: **"-", with: "").lowercased())"
        return DolluCollectorAccessCredential(dollCollectorId: dollCollectorId, dollEntryToken: dollEntryToken)
    }
}

final class DolluWardrobeArchiveStore {
    static let satinCollectionArchive = DolluWardrobeArchiveStore()

    private let dollCollectorArchiveKey = "dollu_auth_local_accounts"
    private let dollWardrobeSessionKey = "dollu_auth_session"
    private let dollGuideConsentKey = "dollu_auth_eula_accepted"

    private init() {}

    var dollGuideAccepted: Bool {
        UserDefaults.standard.bool(forKey: dollGuideConsentKey)
    }

    var dollWardrobeSession: DolluWardrobeArchiveSession {
        get {
            guard let dollSessionData = UserDefaults.standard.data(forKey: dollWardrobeSessionKey),
                  let dollSessionValue = try? JSONDecoder().decode(DolluWardrobeArchiveSession.self, from: dollSessionData) else {
                return DolluWardrobeArchiveSession(dollCollectorIsInside: false, currentDollCollectorEmail: nil, currentDollCollectorId: nil, dollEntryToken: nil)
            }
            return dollSessionValue
        }
        set {
            if let dollSessionData = try? JSONEncoder().encode(newValue) {
                UserDefaults.standard.set(dollSessionData, forKey: dollWardrobeSessionKey)
            }
        }
    }

    func setDollGuideAccepted(_ dollGuideAccepted: Bool) {
        UserDefaults.standard.set(dollGuideAccepted, forKey: dollGuideConsentKey)
    }

    func syncDollCollectorAfterRoute(dollCollectorEmail: String, dollAccessSecret: String, dollCollectorName: String?, dollCollectorCredential: DolluCollectorAccessCredential) {
        var dollCollectorArchive = loadDollCollectorArchive()
        let dollNormalizedEmail = dollCollectorEmail.lowercased()
        let dollCollectorRecord = DolluCollectorArchiveRecord(
            dollCollectorId: dollCollectorCredential.dollCollectorId,
            dollCollectorEmail: dollNormalizedEmail,
            dollAccessSecret: dollAccessSecret,
            dollCollectorName: dollCollectorName?.isEmpty == false ? dollCollectorName ?? **"Doxyllxyu xyCoxyllxyecxytoxyr" : dollCollectorArchive[dollNormalizedEmail]?.dollCollectorName ?? **"Doxyllxyu xyCoxyllxyecxytoxyr",
            dollEntryToken: dollCollectorCredential.dollEntryToken,
            dollArchiveDate: dollCollectorArchive[dollNormalizedEmail]?.dollArchiveDate ?? Date()
        )
        dollCollectorArchive[dollNormalizedEmail] = dollCollectorRecord
        saveDollCollectorArchive(dollCollectorArchive)
        dollWardrobeSession = DolluWardrobeArchiveSession(dollCollectorIsInside: true, currentDollCollectorEmail: dollNormalizedEmail, currentDollCollectorId: dollCollectorCredential.dollCollectorId, dollEntryToken: dollCollectorCredential.dollEntryToken)
    }

    func currentDollCollectorRecord() -> DolluCollectorArchiveRecord? {
        guard let dollCollectorEmail = dollWardrobeSession.currentDollCollectorEmail else {
            return nil
        }
        return loadDollCollectorArchive()[dollCollectorEmail]
    }

    func closeDollCollectorSession() {
        dollWardrobeSession = DolluWardrobeArchiveSession(dollCollectorIsInside: false, currentDollCollectorEmail: nil, currentDollCollectorId: nil, dollEntryToken: nil)
    }

    private func loadDollCollectorArchive() -> [String: DolluCollectorArchiveRecord] {
        guard let dollCollectorData = UserDefaults.standard.data(forKey: dollCollectorArchiveKey),
              let dollCollectorValue = try? JSONDecoder().decode([String: DolluCollectorArchiveRecord].self, from: dollCollectorData) else {
            return [:]
        }
        return dollCollectorValue
    }

    private func saveDollCollectorArchive(_ dollCollectorArchive: [String: DolluCollectorArchiveRecord]) {
        if let dollCollectorData = try? JSONEncoder().encode(dollCollectorArchive) {
            UserDefaults.standard.set(dollCollectorData, forKey: dollCollectorArchiveKey)
        }
    }
}
