import UIKit

struct DolluHomeDynamicItem: Hashable {
    let dollArchiveId: String
    let dollTitle: String
    let dollSummary: String
    let dollCoverURL: URL?
    let dollRouteURL: URL?

    static let showcaseFallbackItems: [DolluHomeDynamicItem] = [
//        DolluHomeDynamicItem(dollArchiveId: "showcase_01", dollTitle: "DressUp Feed", dollSummary: "Layered outfit ideas for your latest doll display.", dollCoverURL: nil, dollRouteURL: DolluCollectorRouteBuilder.detailRoute(dollArchiveId: "showcase_01")),
//        DolluHomeDynamicItem(dollArchiveId: "showcase_02", dollTitle: "Outfit Wall", dollSummary: "Fresh closet pairings from the collector circle.", dollCoverURL: nil, dollRouteURL: DolluCollectorRouteBuilder.detailRoute(dollArchiveId: "showcase_02")),
//        DolluHomeDynamicItem(dollArchiveId: "showcase_03", dollTitle: "Closet Finds", dollSummary: "Small accessories that change the whole look.", dollCoverURL: nil, dollRouteURL: DolluCollectorRouteBuilder.detailRoute(dollArchiveId: "showcase_03"))
    ]

    static let dollpediaFallbackItems: [DolluHomeDynamicItem] = [
//        DolluHomeDynamicItem(dollArchiveId: "dollpedia_01", dollTitle: "Mix & Match Basics", dollSummary: "Learn how to combine dresses, shoes, and tiny accessories with a balanced collector note.", dollCoverURL: nil, dollRouteURL: DolluCollectorRouteBuilder.dollpediaRoute(dollArchiveId: "dollpedia_01")),
//        DolluHomeDynamicItem(dollArchiveId: "dollpedia_02", dollTitle: "Care & Display Tips", dollSummary: "Keep your dolls looking fresh with gentle cleaning, stand placement, and display rotation.", dollCoverURL: nil, dollRouteURL: DolluCollectorRouteBuilder.dollpediaRoute(dollArchiveId: "dollpedia_02")),
//        DolluHomeDynamicItem(dollArchiveId: "dollpedia_03", dollTitle: "Limited Edition Finds", dollSummary: "Discover how to spot rare dolls, special outfits, and collection details before saving notes.", dollCoverURL: nil, dollRouteURL: DolluCollectorRouteBuilder.dollpediaRoute(dollArchiveId: "dollpedia_03"))
    ]
}

enum DolluHomeDynamicKind {
    case showcaseInspiration
    case dollpediaGuide
    case styleClipGallery

    var dollRequestBody: [String: Any] {
        switch self {
        case .showcaseInspiration:
            return ["hueContrast":"39972965","matteFinish": 10,"glossyVeneer": 2, "toneSaturation": 5,"fabricLuster": 1]
        case .dollpediaGuide:
            return ["toneSaturation": 4,"matteFinish": 10,"fabricLuster": 1]
        case .styleClipGallery:
            return ["hueContrast":"39972965","matteFinish": 10,"glossyVeneer": 2, "toneSaturation": 1,"fabricLuster": 1]
        }
    }
}

final class DolluHomeRepository {
    private let dollDynamicPath = "/mtflggpmwz/hecwpfsoynw"

    func fetchDolluDynamicItems(dollKind: DolluHomeDynamicKind, completion: @escaping (Result<[DolluHomeDynamicItem], Error>) -> Void) {
        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: dollDynamicPath, dollRequestBody: dollKind.dollRequestBody, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let dollEnvelope):
                let dollItems = self.parseDollDynamicItems(from: dollEnvelope, dollKind: dollKind)
                completion(.success(dollItems))
            case .failure(let dollError):
                completion(.failure(dollError))
            }
        }
    }

    func fetchDolluStyleClipItems(completion: @escaping (Result<[DolluHomeDynamicItem], Error>) -> Void) {
        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: dollDynamicPath, dollRequestBody: DolluHomeDynamicKind.styleClipGallery.dollRequestBody, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let dollEnvelope):
                let dollItems = self.parseDollStyleClipItems(from: dollEnvelope)
                completion(.success(dollItems))
            case .failure(let dollError):
                completion(.failure(dollError))
            }
        }
    }

    private func parseDollDynamicItems(from dollEnvelope: [String: Any], dollKind: DolluHomeDynamicKind) -> [DolluHomeDynamicItem] {
        dynamicRawList(from: dollEnvelope).map { dollRaw in
            let dollArchiveId = dollDynamicArchiveId(from: dollRaw)
            let dollTitle = stringValue(from: dollRaw, keys: ["satinGlow", "dynamicTitle", "title", "cottonWeave", "userName", "nickName", "name"]) ?? "Dollu Style Note"
            let dollSummary = stringValue(from: dollRaw, keys: ["denimWash", "dynamicContent", "content", "summary", "introduce"]) ?? "Collector outfit inspiration for your Dollu wardrobe."
            let dollCover = coverURL(from: dollRaw)
            let dollRoute = routeURL(from: dollRaw, dollArchiveId: dollArchiveId, dollKind: dollKind)
            return DolluHomeDynamicItem(dollArchiveId: dollArchiveId, dollTitle: dollTitle, dollSummary: dollSummary, dollCoverURL: dollCover, dollRouteURL: dollRoute)
        }
    }

    private func parseDollStyleClipItems(from dollEnvelope: [String: Any]) -> [DolluHomeDynamicItem] {
        dynamicRawList(from: dollEnvelope).compactMap { dollRaw in
            guard let dollCoverText = stringValue(from: dollRaw, keys: ["releaseYear"]),
                  let dollCoverValue = firstDollImageURLText(from: dollCoverText),
                  let dollCoverURL = URL(string: dollCoverValue) else {
                return nil
            }
            let dollArchiveId = dollDynamicArchiveId(from: dollRaw)
            let dollTitle = stringValue(from: dollRaw, keys: ["satinGlow", "dynamicTitle", "title", "cottonWeave", "userName", "nickName", "name"]) ?? "Dollu Style Clip"
            let dollSummary = stringValue(from: dollRaw, keys: ["denimWash", "dynamicContent", "content", "summary", "introduce"]) ?? "A fresh doll outfit moment from the collector gallery."
            let dollRoute = routeURL(from: dollRaw, dollArchiveId: dollArchiveId, dollKind: .styleClipGallery)
            return DolluHomeDynamicItem(dollArchiveId: dollArchiveId, dollTitle: dollTitle, dollSummary: dollSummary, dollCoverURL: dollCoverURL, dollRouteURL: dollRoute)
        }
    }

    private func dollDynamicArchiveId(from dollRaw: [String: Any]) -> String {
        stringValue(from: dollRaw, keys: ["silkSheendoliu"]) ?? UUID().uuidString
    }

    private func dynamicRawList(from dollEnvelope: [String: Any]) -> [[String: Any]] {
        let dollData = dollEnvelope["data"]
        if let dollArray = dollData as? [[String: Any]] {
            return dollArray
        }
        if let dollMap = dollData as? [String: Any], let dollRows = dollMap["list"] as? [[String: Any]] {
            return dollRows
        }
        if let dollMap = dollData as? [String: Any], let dollRows = dollMap["records"] as? [[String: Any]] {
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
        if let dollCover = stringValue(from: dollRaw, keys: ["releaseYear", "coverImgUrl", "coverUrl", "imgUrl", "linenThread", "userImgUrl", "romperFit"]), let dollURL = URL(string: dollCover) {
            return dollURL
        }
        for dollImageKey in ["embroideryStitch", "sequinSparkle", "dynamicImgList"] {
            if let dollImageText = dollRaw[dollImageKey] as? String,
               let dollFirst = firstDollImageURLText(from: dollImageText) {
                return URL(string: dollFirst)
            }
            if let dollImages = dollRaw[dollImageKey] as? [String], let dollFirst = dollImages.first {
                return URL(string: dollFirst)
            }
            if let dollImages = dollRaw[dollImageKey] as? [[String: Any]] {
                let dollFirst = dollImages.compactMap { stringValue(from: $0, keys: ["url", "imgUrl", "releaseYear"]) }.first
                return dollFirst.flatMap(URL.init(string:))
            }
        }
        return nil
    }

    private func firstDollImageURLText(from dollImageText: String) -> String? {
        let dollTrimmedText = dollImageText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !dollTrimmedText.isEmpty, dollTrimmedText != "<null>" else {
            return nil
        }
        let dollSeparators = CharacterSet(charactersIn: ",;|")
        return dollTrimmedText
            .components(separatedBy: dollSeparators)
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .first { !$0.isEmpty && $0 != "<null>" }
    }

    private func routeURL(from dollRaw: [String: Any], dollArchiveId: String, dollKind: DolluHomeDynamicKind) -> URL? {
        if let dollRoute = stringValue(from: dollRaw, keys: ["jumpUrl", "linkUrl", "url"]), let dollURL = URL(string: dollRoute) {
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
    private static let dollGateway = "http://n7v1m5b9c3x2z4.shop/#/"

    static func detailRoute(dollArchiveId: String) -> URL {
        let dollPath = "\(dollGateway)pages/DynamicDetails/index?dynamicId=\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func showcaseRoute(dollArchiveId: String) -> URL {
        let dollPath = "\(dollGateway)pages/" + "AromatherapyDetails/index?dynamicId=\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func dollpediaRoute(dollArchiveId: String) -> URL {
        let dollPath = "\(dollGateway)pages/" + "AromatherapyDetails/index?dynamicId=\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func repositoryRoute(dollCurrentIndex: Int? = nil) -> URL {
        let dollPath: String
        if let dollCurrentIndex {
            dollPath = "\(dollGateway)pages/repository/index?current=\(dollCurrentIndex)"
        } else {
            dollPath = "\(dollGateway)pages/repository/index"
        }
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func noticeRoute() -> URL {
        let dollPath = "\(dollGateway)pages/information/index"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func createRoute() -> URL {
        let dollPath = "\(dollGateway)pages/post" + "Videos/index"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func aiCollectorRoute() -> URL {
        let dollPath = "\(dollGateway)pages/AIexpert/index"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func safetyRoute(dollArchiveId: String) -> URL {
        let dollPath = "\(dollGateway)pages/report/index?dynamicId=\(dollArchiveId)"
        return routeWithDollCredential(URL(string: dollPath) ?? URL(string: "http://n7v1m5b9c3x2z4.shop")!)
    }

    static func routeWithDollCredential(_ dollURL: URL) -> URL {
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollPairs = [
            URLQueryItem(name: "token", value: dollSession.dollEntryToken ?? ""),
            URLQueryItem(name: "userId", value: dollSession.currentDollCollectorId ?? ""),
            URLQueryItem(name: "appID", value: "39972965")
        ]
        if dollURL.absoluteString.contains("#/") {
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
        let dollParts = dollURL.absoluteString.components(separatedBy: "#")
        guard dollParts.count >= 2 else {
            return dollURL
        }
        let dollBase = dollParts[0]
        let dollFragment = dollParts.dropFirst().joined(separator: "#")
        let dollFragmentParts = dollFragment.components(separatedBy: "?")
        let dollFragmentPath = dollFragmentParts[0]
        let dollFragmentQuery = dollFragmentParts.dropFirst().joined(separator: "?")
        var dollItems = queryItems(from: dollFragmentQuery)
        dollPairs.forEach { replaceDollQueryItem(dollItems: &dollItems, dollName: $0.name, dollValue: $0.value ?? "") }
        var dollComponents = URLComponents()
        dollComponents.queryItems = dollItems
        let dollQuery = dollComponents.percentEncodedQuery ?? ""
        let dollRoute = dollQuery.isEmpty ? "\(dollBase)#\(dollFragmentPath)" : "\(dollBase)#\(dollFragmentPath)?\(dollQuery)"
        return URL(string: dollRoute) ?? dollURL
    }

    private static func queryItems(from dollQuery: String) -> [URLQueryItem] {
        guard !dollQuery.isEmpty else {
            return []
        }
        var dollComponents = URLComponents()
        dollComponents.percentEncodedQuery = dollQuery
        return dollComponents.queryItems ?? []
    }

    private static func replaceDollQueryItem(dollItems: inout [URLQueryItem], dollName: String, dollValue: String) {
        dollItems.removeAll { $0.name.caseInsensitiveCompare(dollName) == .orderedSame }
        dollItems.append(URLQueryItem(name: dollName, value: dollValue))
    }
}
