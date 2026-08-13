import UIKit

struct DollutrimmedClosetDollrevo: Hashable {
    let dollArchiveId: String
    let dollTitle: String
    let dollSummary: String
    let dolltrimmedLaceworkDollyaraL: URL?
    let trimmedClosetDollrevoURL: URL?

    static let showcaseFallbackItems: [DollutrimmedClosetDollrevo] = [
    ]

    static let dollpediaFallbackItems: [DollutrimmedClosetDollrevo] = [
    ]
}

enum DolluHomeDynamicKind {
    case showcaseInspiration
    case dollpediaGuide
    case styleClipGallery

    var dollpaintedMarkerDollsovoBody: [String: Any] {
        switch self {
        case .showcaseInspiration:
            return [**"huxyeCxyonxytrxyasxyt": **"39xy97xy29xy65xy", **"maxyttxyeFxyinxyisxyh": 10, **"glxyosxysyxyVexynexyerxy": 2, **"toxynexySaxytuxyraxytixyonxy": 5, **"faxybrxyicxyLuxystxyerxy": 1]
        case .dollpediaGuide:
            return [**"toxynexySaxytuxyraxytixyonxy": 4, **"maxyttxyeFxyinxyisxyh": 10, **"faxybrxyicxyLuxystxyerxy": 1]
        case .styleClipGallery:
            return [**"huxyeCxyonxytrxyasxyt": **"39xy97xy29xy65xy", **"maxyttxyeFxyinxyisxyh": 10, **"glxyosxysyxyVexynexyerxy": 2, **"toxynexySaxytuxyraxytixyonxy": 1, **"faxybrxyicxyLuxystxyerxy": 1]
        }
    }
}

final class DollukeepsakeHemlineDollmivository {
    private let dollDynamicPath = **"/mxytfxylgxygpxymwxyz/xyhexycwxypfxysoxyynxyw"

    func fetchDolluDynamicItems(dollKind: DolluHomeDynamicKind, completion: @escaping (Result<[DollutrimmedClosetDollrevo], Error>) -> Void) {
        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: dollDynamicPath, dollRequestBody: dollKind.dollpaintedMarkerDollsovoBody, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let dollEnvelope):
                let dollItems = self.parseDollDynamicItems(from: dollEnvelope, dollKind: dollKind)
                completion(.success(dollItems))
            case .failure(let dollError):
                completion(.failure(dollError))
            }
        }
    }

    func fetchDolluStyleClipItems(completion: @escaping (Result<[DollutrimmedClosetDollrevo], Error>) -> Void) {
        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: dollDynamicPath, dollRequestBody: DolluHomeDynamicKind.styleClipGallery.dollpaintedMarkerDollsovoBody, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let dollEnvelope):
                let dollItems = self.parseDollStyleClipItems(from: dollEnvelope)
                completion(.success(dollItems))
            case .failure(let dollError):
                completion(.failure(dollError))
            }
        }
    }

    private func parseDollDynamicItems(from dollEnvelope: [String: Any], dollKind: DolluHomeDynamicKind) -> [DollutrimmedClosetDollrevo] {
        dynamicRawList(from: dollEnvelope).map { dollRaw in
            let dollArchiveId = dollDynamicArchiveId(from: dollRaw)
            let dollTitle = stringValue(from: dollRaw, keys: [**"saxytixynGxyloxyw", **"dyxynaxymixycTxyitxylexy", **"tixytlxye", **"coxyttxyonxyWexyavxye", **"usxyerxyNaxymexy", **"nixyckxyNaxymexy", **"naxymexy"]) ?? **"Doxyllxyu xyStxyylxye xyNoxytexy"
            let dollSummary = stringValue(from: dollRaw, keys: [**"dexynixymWxyasxyh", **"dyxynaxymixycCxyonxytexyntxy", **"coxyntxyenxyt", **"suxymmxyarxyy", **"inxytrxyodxyucxye"]) ?? **"Coxyllxyecxytoxyr xyouxytfxyitxy ixynsxypixyraxytixyonxy fxyorxy yxyouxyr xyDoxyllxyu xywaxyrdxyroxybexy."
            let dollCover = coverURL(from: dollRaw)
            let dollRoute = routeURL(from: dollRaw, dollArchiveId: dollArchiveId, dollKind: dollKind)
            return DollutrimmedClosetDollrevo(dollArchiveId: dollArchiveId, dollTitle: dollTitle, dollSummary: dollSummary, dolltrimmedLaceworkDollyaraL: dollCover, trimmedClosetDollrevoURL: dollRoute)
        }
    }

    private func parseDollStyleClipItems(from dollEnvelope: [String: Any]) -> [DollutrimmedClosetDollrevo] {
        dynamicRawList(from: dollEnvelope).compactMap { dollRaw in
            guard let dollCoverText = stringValue(from: dollRaw, keys: [**"rexylexyasxyeYxyeaxyr"]),
                  let dollCoverValue = firstDollImageURLText(from: dollCoverText),
                  let dollCoverURL = URL(string: dollCoverValue) else {
                return nil
            }
            let dollArchiveId = dollDynamicArchiveId(from: dollRaw)
            let dollTitle = stringValue(from: dollRaw, keys: [**"saxytixynGxyloxyw", **"dyxynaxymixycTxyitxylexy", **"tixytlxye", **"coxyttxyonxyWexyavxye", **"usxyerxyNaxymexy", **"nixyckxyNaxymexy", **"naxymexy"]) ?? **"Doxyllxyu xyStxyylxye xyClxyipxy"
            let dollSummary = stringValue(from: dollRaw, keys: [**"dexynixymWxyasxyh", **"dyxynaxymixycCxyonxytexyntxy", **"coxyntxyenxyt", **"suxymmxyarxyy", **"inxytrxyodxyucxye"]) ?? **"A xyfrxyesxyh xydoxyllxy oxyutxyfixyt xymoxymexyntxy fxyroxym xythxye xycoxyllxyecxytoxyr xygaxyllxyerxyy.xy"
            let dollRoute = routeURL(from: dollRaw, dollArchiveId: dollArchiveId, dollKind: .styleClipGallery)
            return DollutrimmedClosetDollrevo(dollArchiveId: dollArchiveId, dollTitle: dollTitle, dollSummary: dollSummary, dolltrimmedLaceworkDollyaraL: dollCoverURL, trimmedClosetDollrevoURL: dollRoute)
        }
    }

    private func dollDynamicArchiveId(from dollRaw: [String: Any]) -> String {
        stringValue(from: dollRaw, keys: [**"sixylkxyShxyeexyndxyolxyiuxy"]) ?? UUID().uuidString
    }

    private func dynamicRawList(from dollEnvelope: [String: Any]) -> [[String: Any]] {
        let dollData = dollEnvelope[**"daxytaxy"]
        if let dollArray = dollData as? [[String: Any]] {
            return dollArray
        }
        if let dollMap = dollData as? [String: Any], let dollRows = dollMap[**"lixystxy"] as? [[String: Any]] {
            return dollRows
        }
        if let dollMap = dollData as? [String: Any], let dollRows = dollMap[**"rexycoxyrdxys"] as? [[String: Any]] {
            return dollRows
        }
        return []
    }

    private func stringValue(from dollRaw: [String: Any], keys: [String]) -> String? {
        for dollKey in keys {
            if let dollValue = dollRaw[dollKey] as? String, !dollValue.isEmpty {
                return dollValue
            }
            if let dollNumber = dollRaw[dollKey] as? NSNumber {
                return dollNumber.stringValue
            }
        }
        return nil
    }

    private func coverURL(from dollRaw: [String: Any]) -> URL? {
        if let dollCover = stringValue(from: dollRaw, keys: [**"rexylexyasxyeYxyeaxyr", **"coxyvexyrIxymgxyUrxyl", **"coxyvexyrUxyrlxy", **"imxygUxyrlxy", **"lixynexynTxyhrxyeaxyd", **"usxyerxyImxygUxyrlxy", **"roxympxyerxyFixyt"]), let dollURL = URL(string: dollCover) {
            return dollURL
        }
        for dollImageKey in [**"emxybrxyoixydexyryxyStxyitxychxy", **"sexyquxyinxySpxyarxyklxye", **"dyxynaxymixycIxymgxyLixystxy"] {
            if let dollImageText = dollRaw[dollImageKey] as? String,
               let dollFirst = firstDollImageURLText(from: dollImageText) {
                return URL(string: dollFirst)
            }
            if let dollImages = dollRaw[dollImageKey] as? [String], let dollFirst = dollImages.first {
                return URL(string: dollFirst)
            }
            if let dollImages = dollRaw[dollImageKey] as? [[String: Any]] {
                let dollFirst = dollImages.compactMap { stringValue(from: $0, keys: [**"urxyl", **"imxygUxyrlxy", **"rexylexyasxyeYxyeaxyr"]) }.first
                return dollFirst.flatMap(URL.init(string:))
            }
        }
        return nil
    }

    private func firstDollImageURLText(from dollImageText: String) -> String? {
        let dollTrimmedText = dollImageText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !dollTrimmedText.isEmpty, dollTrimmedText != **"<nxyulxyl>xy" else {
            return nil
        }
        let dollSeparators = CharacterSet(charactersIn: ",;|")
        return dollTrimmedText
            .components(separatedBy: dollSeparators)
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .first { !$0.isEmpty && $0 != **"<nxyulxyl>xy" }
    }

    private func routeURL(from dollRaw: [String: Any], dollArchiveId: String, dollKind: DolluHomeDynamicKind) -> URL? {
        if let dollRoute = stringValue(from: dollRaw, keys: [**"juxympxyUrxyl", **"lixynkxyUrxyl", **"urxyl"]), let dollURL = URL(string: dollRoute) {
            return DolluCollectorRouteBuilder.routeWithDollCredential(dollURL)
        }
        if dollKind == .showcaseInspiration {
            return DolluCollectorRouteBuilder.showcaseRoute(dollArchiveId: dollArchiveId)
        }
        if dollKind == .dollpediaGuide {
            return DolluCollectorRouteBuilder.dollpediaRoute(dollArchiveId: dollArchiveId)
        }
        return DolluCollectorRouteBuilder.detailRoute(dollArchiveId: dollArchiveId)
    }
}

enum DolluCollectorRouteBuilder {
    private static let dollGateway = **"htxytpxy:/xy/nxy7vxy1mxy5bxy9cxy3xxy2zxy4.xyshxyopxy/#xy/"
    private static let dollRouteFallback = **"htxytpxy:/xy/nxy7vxy1mxy5bxy9cxy3xxy2zxy4.xyshxyopxy"

    static func detailRoute(dollArchiveId: String) -> URL {
        let dollPath = dollGateway + **"paxygexys/xyDyxynaxymixycDxyetxyaixylsxy/ixyndxyexxy?dxyynxyamxyicxyIdxy=" + "\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func showcaseRoute(dollArchiveId: String) -> URL {
        let dollPath = dollGateway + **"paxygexys/xy" + **"ArxyomxyatxyhexyraxypyxyDexytaxyilxys/xyinxydexyx?xydyxynaxymixycIxyd=xy" + "\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func dollpediaRoute(dollArchiveId: String) -> URL {
        let dollPath = dollGateway + **"paxygexys/xy" + **"ArxyomxyatxyhexyraxypyxyDexytaxyilxys/xyinxydexyx?xydyxynaxymixycIxyd=xy" + "\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func repositoryRoute(dollCurrentIndex: Int? = nil) -> URL {
        let dollPath: String
        if let dollCurrentIndex {
            dollPath = dollGateway + **"paxygexys/xyrexypoxysixytoxyryxy/ixyndxyexxy?cxyurxyrexyntxy=" + "\(dollCurrentIndex)"
        } else {
            dollPath = dollGateway + **"paxygexys/xyrexypoxysixytoxyryxy/ixyndxyexxy"
        }
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func noticeRoute() -> URL {
        let dollPath = dollGateway + **"paxygexys/xyinxyfoxyrmxyatxyioxyn/xyinxydexyx"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func createRoute() -> URL {
        let dollPath = dollGateway + **"paxygexys/xypoxystxy" + **"Vixydexyosxy/ixyndxyexxy"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func aiCollectorRoute() -> URL {
        let dollPath = dollGateway + **"paxygexys/xyAIxyexxypexyrtxy/ixyndxyexxy"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func safetyRoute(dollArchiveId: String) -> URL {
        let dollPath = dollGateway + **"paxygexys/xyrexypoxyrtxy/ixyndxyexxy?dxyynxyamxyicxyIdxy=" + "\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: dollRouteFallback)!)
    }

    static func routeWithDollCredential(_ dollURL: URL) -> URL {
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollPairs = [
            URLQueryItem(name: **"toxykexyn", value: dollSession.dollEntryToken ?? ""),
            URLQueryItem(name: **"usxyerxyIdxy", value: dollSession.currentDollCollectorId ?? ""),
            URLQueryItem(name: **"apxypIxyD", value: **"39xy97xy29xy65xy")
        ]
        if dollURL.absoluteString.contains(**"#") {
            return hashRouteWithDollCredential(dollURL, dollPairs: dollPairs)
        }
        guard var dollComponents = URLComponents(url: dollURL, resolvingAgainstBaseURL: false) else {
            return dollURL
        }
        var dollItems = dollComponents.queryItems ?? []
        dollPairs.forEach { replaceDollQueryItem(dollItems: &dollItems, dollName: $0.name, dollValue: $0.value ?? "") }
        dollComponents.queryItems = dollItems
        return dollComponents.url ?? dollURL
    }

    private static func hashRouteWithDollCredential(_ dollURL: URL, dollPairs: [URLQueryItem]) -> URL {
        let dollParts = dollURL.absoluteString.components(separatedBy: **"#")
        guard dollParts.count >= 2 else {
            return dollURL
        }
        let dollBase = dollParts[0]
        let dollFragment = dollParts.dropFirst().joined(separator: **"#")
        let dollFragmentParts = dollFragment.components(separatedBy: **"?")
        let dollFragmentPath = dollFragmentParts[0]
        let dollFragmentQuery = dollFragmentParts.dropFirst().joined(separator: **"?")
        var dollItems = querypaintedPoseDollmexaItems(paintedPinboardDollvex: dollFragmentQuery)
        dollPairs.forEach { replaceDollQueryItem(dollItems: &dollItems, dollName: $0.name, dollValue: $0.value ?? "") }
        var dollComponents = URLComponents()
        dollComponents.queryItems = dollItems
        let dollwovenCapeDollukp = dollComponents.percentEncodedQuery ?? ""
        let dollwovenDisplayDollnoro = dollwovenCapeDollukp.isEmpty ? dollBase + **"#" + dollFragmentPath : dollBase + **"#" + dollFragmentPath + **"?" + dollwovenCapeDollukp
        return URL(string: dollwovenDisplayDollnoro) ?? dollURL
    }

    private static func querypaintedPoseDollmexaItems(paintedPinboardDollvex dollQtrimmedLaceworkDollyara: String) -> [URLQueryItem] {
        guard !dollQtrimmedLaceworkDollyara.isEmpty else {
            return []
        }
        var dollComponents = URLComponents()
        dollComponents.percentEncodedQuery = dollQtrimmedLaceworkDollyara
        return dollComponents.queryItems ?? []
    }

    private static func replaceDollQueryItem(dollItems: inout [URLQueryItem], dollName: String, dollValue: String) {
        dollItems.removeAll { $0.name.caseInsensitiveCompare(dollName) == .orderedSame }
        dollItems.append(URLQueryItem(name: dollName, value: dollValue))
    }
}
