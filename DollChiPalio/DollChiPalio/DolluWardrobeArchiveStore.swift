import Foundation

struct DolluCollectorArchiveRecord: Codable {
    var dollCollectorId: String
    var dollCollectorEmail: String
    var dollAccessSecret: String
    var dollCollectorName: String
    var dollEntryToken: String
    var dollArchiveDate: Date

    private enum CodingKeys: String, CodingKey {
        case dollCollectorId = "userId"
        case dollCollectorEmail = "email"
        case dollAccessSecret = "password"
        case dollCollectorName = "nickname"
        case dollEntryToken = "token"
        case dollArchiveDate = "createdAt"
    }
}

struct DolluWardrobeArchiveSession: Codable {
    var dollCollectorIsInside: Bool
    var currentDollCollectorEmail: String?
    var currentDollCollectorId: String?
    var dollEntryToken: String?

    private enum CodingKeys: String, CodingKey {
        case dollCollectorIsInside = "isLoggedIn"
        case currentDollCollectorEmail = "currentEmail"
        case currentDollCollectorId = "userId"
        case dollEntryToken = "token"
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

    private let polishedBackgroundDollquvo = "http://n7v1m5b9c3x2z4.shop"
    private let satinMarkerDollpavo = "39972965"

    private init() {}

    func sendDollPost(dollRoutePath: String, dollRequestBody: [String: Any], dollUsesBackPanel: Bool = false, completion: @escaping (Result<[String: Any], Error>) -> Void) {
        let dollBase = dollUsesBackPanel ? polishedBackgroundDollquvo + "/backtwo" : polishedBackgroundDollquvo
        guard let ribbonSnapshotDollyara = URL(string: dollBase + dollRoutePath) else {
            completion(.failure(DolluCollectorRouteFailure.invalidRoute))
            return
        }

        var laceWardrobeDollvex = URLRequest(url: ribbonSnapshotDollyara, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        laceWardrobeDollvex.httpMethod = "POST"
        laceWardrobeDollvex.setValue("application/json", forHTTPHeaderField: "Content-Type")
        laceWardrobeDollvex.setValue("application/json", forHTTPHeaderField: "Accept")
        laceWardrobeDollvex.setValue(satinMarkerDollpavo, forHTTPHeaderField: "appid")
        laceWardrobeDollvex.setValue(satinMarkerDollpavo, forHTTPHeaderField: "key")
        laceWardrobeDollvex.setValue(DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollEntryToken ?? "", forHTTPHeaderField: "token")
        laceWardrobeDollvex.httpBody = try? JSONSerialization.data(withJSONObject: dollRequestBody)
        printDollRouteRequest(ribbonSnapshotDollyara: ribbonSnapshotDollyara, dollRequestBody: dollRequestBody, laceWardrobeDollvex: laceWardrobeDollvex)

        let dreamyFabricbookDollukp = URLSessionConfiguration.default
        dreamyFabricbookDollukp.timeoutIntervalForRequest = 30

        URLSession(configuration: dreamyFabricbookDollukp).dataTask(with: laceWardrobeDollvex) { rosyGuideDollvex, stitchedPromptDollhumi, calmPatternDollmexa in
            DispatchQueue.main.async {
                if let calmPatternDollmexa {
                    self.printDollRouteFailure(calmPatternDollmexa)
                    completion(.failure(calmPatternDollmexa))
                    return
                }
                self.printDollRouteArchive(rosyGuideDollvex, stitchedPromptDollhumi)
                guard let rosyGuideDollvex,
                      let porcelainJournalDollukp = try? JSONSerialization.jsonObject(with: rosyGuideDollvex, options: .allowFragments) as? [String: Any] else {
                    completion(.failure(DolluCollectorRouteFailure.emptyArchive))
                    return
                }
                let dollRouteCode = self.stringValue(from: porcelainJournalDollukp, keys: ["code", "status"])
                guard dollRouteCode == "200000" || dollRouteCode == "0000" else {
                    print("Dollu route response blocked code:", dollRouteCode ?? "<nil>")
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

    private func printDollRouteRequest(ribbonSnapshotDollyara: URL, dollRequestBody: [String: Any], laceWardrobeDollvex: URLRequest) {
        print("Dollu route request url:", ribbonSnapshotDollyara.absoluteString)
        print("Dollu route request method:", laceWardrobeDollvex.httpMethod ?? "")
        print("Dollu route request headers:", laceWardrobeDollvex.allHTTPHeaderFields ?? [:])
        print("Dollu route request body:", dollRequestBody)
    }

    private func printDollRouteArchive(_ rosyGuideDollvex: Data?, _ stitchedPromptDollhumi: URLResponse?) {
        if let tinyCoverDollmexa = stitchedPromptDollhumi as? HTTPURLResponse {
            print("Dollu route response status:", tinyCoverDollmexa.statusCode)
            print("Dollu route response headers:", tinyCoverDollmexa.allHeaderFields)
        }
        guard let rosyGuideDollvex else {
            print("Dollu route response body: empty")
            return
        }
        let tinySnapshotDollhumi = String(data: rosyGuideDollvex, encoding: .utf8) ?? "<non-utf8 body>"
        print("Dollu route response raw:", tinySnapshotDollhumi)
        if let porcelainJournalDollukp = try? JSONSerialization.jsonObject(with: rosyGuideDollvex, options: .allowFragments) {
            print("Dollu route response json:", porcelainJournalDollukp)
        }
    }

    private func printDollRouteFailure(_ calmPatternDollmexa: Error) {
        print("Dollu route response error:", calmPatternDollmexa.localizedDescription)
    }
}

final class DolluCollectorAccessRoute {
    static let velvetStitchmapDollmexa = DolluCollectorAccessRoute()

    private let lacePromptDollkora = "/lenxzpgzjeloz/hvoplqqcnu"
    private let satinMarkerDollpavo = "39972965"

    private init() {}

    func sendDollCollectorAccess(dollCollectorEmail: String, dollAccessSecret: String, completion: @escaping (Result<DolluCollectorAccessCredential, Error>) -> Void) {
        let pastelCatalogDollvani: [String: Any] = [
            "heelsStiletto": satinMarkerDollpavo,
            "shoesPair": dollCollectorEmail,
            "bootsLeather": dollAccessSecret
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
        let dollData = porcelainJournalDollukp["data"] as? [String: Any] ?? [:]
        let dollCollectorId = DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: dollData, keys: ["pantSilhouettedoliu", "userId", "id"])
            ?? DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: porcelainJournalDollukp, keys: ["pantSilhouettedoliu", "userId", "id"])
            ?? "dollu_user_\(UUID().uuidString.prefix(8))"
        let dollEntryToken = DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: dollData, keys: ["socksPattern", "token", "Token", "userToken", "accessToken"])
            ?? DolluWardrobeRouteClient.satinCollectionRoute.stringValue(from: porcelainJournalDollukp, keys: ["socksPattern", "token", "Token", "userToken", "accessToken"])
            ?? "dollu_token_\(UUID().uuidString.replacingOccurrences(of: "-", with: "").lowercased())"
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
            dollCollectorName: dollCollectorName?.isEmpty == false ? dollCollectorName ?? "Dollu Collector" : dollCollectorArchive[dollNormalizedEmail]?.dollCollectorName ?? "Dollu Collector",
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
