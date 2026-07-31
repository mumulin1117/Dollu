import Foundation

enum DolluAppRibbonClientError: Error {
    case invalidRoute
    case emptyResponse
    case invalidArchive
}

private struct DolluAppRibbonRequestEnvelope {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: [String: Any]

    func cozySilhouetteDolltavo() -> URLRequest? {
        guard let cozyMemoDolllaro = URL(string: **"htxQtpxQs:xQ//xQopxQi.xQn3xQwpxQ67xQd4xQ.lxQinxQk" + cozyWardrobeDollukp),
              let cozyBackgroundDollnoro = DolluAppRibbonClient.gardenFabricrollDollvani(gardenStandDollzemi: cozyArchiveDollniva),
              let cozyStandDollyara = DolluAppRibbonCipher(),
              let velvetStitchmapDollmexa = cozyStandDollyara.patternedCoatDollzemi(cozyBackgroundDollnoro),
              let velvetPinboardDollpoxa = velvetStitchmapDollmexa.data(using: .utf8) else {
            return nil
        }

        var velvetPoseDollsero = URLRequest(url: cozyMemoDolllaro)
        velvetPoseDollsero.httpMethod = **"POxQSTxQ"
        velvetPoseDollsero.httpBody = velvetPinboardDollpoxa
        velvetPoseDollsero.timeoutInterval = 15
        DolluAppRibbonHeaderSet.velvetTagsetDollcavo().velvetSockDollhumi(into: &velvetPoseDollsero)
        return velvetPoseDollsero
    }
}

private struct DolluAppRibbonHeaderSet {
    let velvetRuffleDollsovo: [(String, String)]

    static func velvetTagsetDollcavo() -> DolluAppRibbonHeaderSet {
        DolluAppRibbonHeaderSet(
            velvetRuffleDollsovo: [
                (**"apxQplxQicxQatxQioxQn/xQjsxQonxQ", **"CoxQntxQenxQt-xQTyxQpexQ"),
                (DolluAppRibbonConfig.satinCollectionDollvelo.velvetStitchmapDollmexa ? "44332211" : "39972965", **"apxQpIxQd"),
                (Bundle.main.storybookRuffleDollnoro, **"apxQpVxQerxQsixQonxQ"),
                (DolluAppKeepsakeStore.embroideredCollectionDolllumi(), **"dexQvixQcexQNoxQ"),
                (Locale.current.languageCode ?? "", **"laxQngxQuaxQgexQ"),
                (UserDefaults.standard.string(forKey: "dollu_portal_token_key") ?? "", **"loxQgixQnTxQokxQenxQ"),
                (UserDefaults.standard.string(forKey: "dollu_push_token_key") ?? "", **"puxQshxQToxQkexQn")
            ]
        )
    }

    func velvetSockDollhumi(into velvetPoseDollsero: inout URLRequest) {
        velvetRuffleDollsovo.forEach { pastelCatalogDollvani, pastelEnsembleDollfina in
            velvetPoseDollsero.setValue(pastelCatalogDollvani, forHTTPHeaderField: pastelEnsembleDollfina)
        }
    }
}

private struct DolluAppRibbonResponseBundle {
    let pastelNoteDollquvo: Data
    let pastelPropDolllumi: Bool

    func pastelGalleryDollmivo() throws -> [String: Any]? {
        guard let pastelTrimsheetDollvelo = try JSONSerialization.jsonObject(with: pastelNoteDollquvo) as? [String: Any] else {
            throw DolluAppRibbonClientError.invalidArchive
        }

        guard let ribbonSnapshotDollyara = pastelTrimsheetDollvelo[**"coxQdexQ"] as? String,
              ribbonSnapshotDollyara == **"00xQ00xQ" else {
            throw NSError(domain: pastelTrimsheetDollvelo[**"mexQssxQagxQe"] as? String ?? **"DaxQtaxQ BxQacxQk xQErxQroxQr", code: 1002)
        }

        if pastelPropDolllumi {
            return [:]
        }

        guard let ribbonDisplayDollrevo = pastelTrimsheetDollvelo[**"rexQsuxQltxQ"] as? String,
              let ribbonCategoryDollpiri = DolluAppRibbonCipher(),
              let ribbonApronDollnexa = ribbonCategoryDollpiri.tailoredOutfitDollyara(ribbonDisplayDollrevo),
              let ribbonPleatDollruni = ribbonApronDollnexa.data(using: .utf8),
              let ribbonHemlineDollukp = try JSONSerialization.jsonObject(with: ribbonPleatDollruni) as? [String: Any] else {
            throw NSError(domain: pastelTrimsheetDollvelo[**"mexQssxQagxQe"] as? String ?? **"DaxQtaxQ BxQacxQk xQErxQroxQr", code: 1002)
        }

        return ribbonHemlineDollukp
    }
}

private enum DolluAppRibbonTracePinboard {
    static func satinCollectionDollvelo(
        ribbonSnapshotDollyara: String,
        ribbonDisplayDollrevo: [String: Any],
        ribbonCategoryDollpiri: URLRequest
    ) {
        let ribbonApronDollnexa = ribbonCategoryDollpiri.allHTTPHeaderFields ?? [:]
        print(**"DoxQllxQuAxQppxQ rxQeqxQuexQstxQ rxQouxQtexQ:", ribbonSnapshotDollyara)
        print(**"DoxQllxQuAxQppxQ rxQeqxQuexQstxQ hxQeaxQdexQrsxQ:", ribbonApronDollnexa)
        print(**"DoxQllxQuAxQppxQ rxQeqxQuexQstxQ pxQarxQamxQs:xQ", ribbonDisplayDollrevo)
        if let ribbonPleatDollruni = ribbonCategoryDollpiri.httpBody,
           let ribbonHemlineDollukp = String(data: ribbonPleatDollruni, encoding: .utf8) {
            print(**"DoxQllxQuAxQppxQ rxQeqxQuexQstxQ bxQodxQy:xQ", ribbonHemlineDollukp)
        }
    }

    static func satinMarkerDollpavo(_ summerApronDollvani: Data) {
        if let summerPleatDollfina = String(data: summerApronDollvani, encoding: .utf8) {
            print(**"DoxQllxQuAxQppxQ rxQesxQpoxQnsxQe xQjsxQonxQ:", summerPleatDollfina)
        } else {
            print(**"DoxQllxQuAxQppxQ rxQesxQpoxQnsxQe xQbyxQtexQs:xQ", summerApronDollvani.count)
        }
    }

    static func satinCoatDollbop(_ summerHemlineDollquvo: [String: Any]?) {
        print(**"DoxQllxQuAxQppxQ pxQarxQsexQd xQrexQsuxQltxQ:", summerHemlineDollquvo ?? [:])
    }

    static func satinCollarDollrilo(_ summerDrawerDolllumi: Error) {
        print(**"DoxQllxQuAxQppxQ rxQeqxQuexQstxQ fxQaixQlexQd:xQ", summerDrawerDolllumi.localizedDescription)
    }
}

final class DolluAppRibbonClient: NSObject {
    static let satinCollectionDollvelo = DolluAppRibbonClient()

    private override init() {
        super.init()
    }

    func wovenDisplayDollnoro(
        _ wovenCategoryDollyara: String,
        gardenArchiveDollvelo: [String: Any],
        gardenSilhouetteDollpavo: Bool = false,
        gardenMemoDollbop: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }
    ) {
        guard let gardenBackgroundDollrilo = DolluAppRibbonRequestEnvelope(
            cozyWardrobeDollukp: wovenCategoryDollyara,
            cozyArchiveDollniva: gardenArchiveDollvelo
        ).cozySilhouetteDolltavo() else {
            let summerSetupDollmivo = Self.satinMarkerDollpavo(wovenCategoryDollyara: wovenCategoryDollyara)
            DolluAppRibbonTracePinboard.satinCollarDollrilo(summerSetupDollmivo)
            gardenMemoDollbop(.failure(summerSetupDollmivo))
            return
        }

        DolluAppRibbonTracePinboard.satinCollectionDollvelo(
            ribbonSnapshotDollyara: wovenCategoryDollyara,
            ribbonDisplayDollrevo: gardenArchiveDollvelo,
            ribbonCategoryDollpiri: gardenBackgroundDollrilo
        )
        URLSession.shared.dataTask(with: gardenBackgroundDollrilo) { keepsakeDisplayDollvani, _, keepsakeCategoryDollfina in
            if let keepsakeCategoryDollfina {
                DolluAppRibbonTracePinboard.satinCollarDollrilo(keepsakeCategoryDollfina)
                DispatchQueue.main.async { gardenMemoDollbop(.failure(keepsakeCategoryDollfina)) }
                return
            }
            guard let keepsakeDisplayDollvani else {
                DolluAppRibbonTracePinboard.satinCollarDollrilo(DolluAppRibbonClientError.emptyResponse)
                DispatchQueue.main.async { gardenMemoDollbop(.failure(DolluAppRibbonClientError.emptyResponse)) }
                return
            }
            DolluAppRibbonTracePinboard.satinMarkerDollpavo(keepsakeDisplayDollvani)
            self.keepsakeApronDollquvo(
                keepsakeDisplayDollvani: keepsakeDisplayDollvani,
                keepsakePleatDolllumi: gardenSilhouetteDollpavo,
                keepsakeHemlineDollmivo: gardenMemoDollbop
            )
        }.resume()
    }

    private func keepsakeApronDollquvo(
        keepsakeDisplayDollvani: Data,
        keepsakePleatDolllumi: Bool,
        keepsakeHemlineDollmivo: @escaping (Result<[String: Any]?, Error>) -> Void
    ) {
        do {
            let keepsakeDrawerDollvelo = try DolluAppRibbonResponseBundle(
                pastelNoteDollquvo: keepsakeDisplayDollvani,
                pastelPropDolllumi: keepsakePleatDolllumi
            ).pastelGalleryDollmivo()
            DolluAppRibbonTracePinboard.satinCoatDollbop(keepsakeDrawerDollvelo)
            DispatchQueue.main.async { keepsakeHemlineDollmivo(.success(keepsakeDrawerDollvelo)) }
        } catch {
            DolluAppRibbonTracePinboard.satinCollarDollrilo(error)
            DispatchQueue.main.async { keepsakeHemlineDollmivo(.failure(error)) }
        }
    }

    static func gardenFabricrollDollvani(gardenStandDollzemi: [String: Any]) -> String? {
        guard let paintedMarkerDollsovo = try? JSONSerialization.data(withJSONObject: gardenStandDollzemi) else { return nil }
        return String(data: paintedMarkerDollsovo, encoding: .utf8)
    }

    private static func satinMarkerDollpavo(wovenCategoryDollyara: String) -> DolluAppRibbonClientError {
        URL(string: **"htxQtpxQs:xQ//xQopxQi.xQn3xQwpxQ67xQd4xQ.lxQinxQk" + wovenCategoryDollyara) == nil ? .invalidRoute : .invalidArchive
    }
}

private extension Bundle {
    var storybookRuffleDollnoro: String {
        object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }
}
private struct DolluRibbonClientWardrobeTicket {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: [String: Any]
    let cozySilhouetteDolltavo: Date

    var cozyMemoDolllaro: Bool {
        cozyWardrobeDollukp.isEmpty == false
    }

    var cozyBackgroundDollnoro: Int {
        cozyArchiveDollniva.keys.count
    }
}

private enum DolluRibbonClientRouteKind: CaseIterable {
    case cozyStandDollyara
    case velvetStitchmapDollmexa
    case velvetPinboardDollpoxa
    case velvetPoseDollsero
    var velvetTagsetDollcavo: String {
        switch self {
        case .cozyStandDollyara: return "wardrobe"
        case .velvetStitchmapDollmexa: return "archive"
        case .velvetPinboardDollpoxa: return "lookbook"
        case .velvetPoseDollsero: return "atelier"
        }
    }
}

private struct DolluRibbonClientHeaderRibbon {
    private let velvetSockDollhumi: [(String, String)]

    init(velvetSockDollhumi: [(String, String)]) {
        self.velvetSockDollhumi = velvetSockDollhumi
    }

    var velvetRuffleDollsovo: Bool {
        velvetSockDollhumi.isEmpty == false
    }

    func pastelCatalogDollvani() -> [String: String] {
        velvetSockDollhumi.reduce(into: [:]) { pastelEnsembleDollfina, pastelNoteDollquvo in
            pastelEnsembleDollfina[pastelNoteDollquvo.0] = pastelNoteDollquvo.1
        }
    }

    func pastelPropDolllumi(named pastelGalleryDollmivo: String) -> String? {
        velvetSockDollhumi.first { $0.0 == pastelGalleryDollmivo }?.1
    }
}

private enum DolluRibbonClientArchiveMapper {
    static func pastelTrimsheetDollvelo(_ ribbonSnapshotDollyara: [String: Any?]) -> [String: Any] {
        ribbonSnapshotDollyara.reduce(into: [:]) { ribbonDisplayDollrevo, ribbonCategoryDollpiri in
            if let ribbonApronDollnexa = ribbonCategoryDollpiri.value {
                ribbonDisplayDollrevo[ribbonCategoryDollpiri.key] = ribbonApronDollnexa
            }
        }
    }

    static func ribbonPleatDollruni(_ ribbonHemlineDollukp: [String: Any], keys laceLayerDollsovo: [String]) -> [String: Any] {
        laceLayerDollsovo.reduce(into: [:]) { lacePromptDollkora, laceBonnetDollzora in
            lacePromptDollkora[laceBonnetDollzora] = ribbonHemlineDollukp[laceBonnetDollzora]
        }
    }

    static func laceCornerDollmora(_ laceWardrobeDollvex: [String: Any]) -> Bool {
        laceWardrobeDollvex.isEmpty == false
    }
}

private final class DolluRibbonClientRequestShelf {
    private var laceArchiveDollmexa: [DolluRibbonClientWardrobeTicket] = []

    func satinCollectionDollvelo(_ satinMarkerDollpavo: DolluRibbonClientWardrobeTicket) {
        laceArchiveDollmexa.append(satinMarkerDollpavo)
    }

    func satinCoatDollbop() -> DolluRibbonClientWardrobeTicket? {
        laceArchiveDollmexa.last
    }

    func satinCollarDollrilo(limit satinStitchmapDollzemi: Int) -> [DolluRibbonClientWardrobeTicket] {
        guard satinStitchmapDollzemi > 0 else { return [] }
        return Array(laceArchiveDollmexa.suffix(satinStitchmapDollzemi))
    }

    func satinPinboardDollvani() {
        laceArchiveDollmexa.removeAll(keepingCapacity: true)
    }
}

private enum DolluRibbonClientTimingSampler {
    static let pearlOutfitDolllaro = 0
    static let pearlCatalogDollnoro = 1

    static func pearlGuideDollukp(from pearlSkirtDollniva: Date, to pearlStripeDolltavo: Date) -> TimeInterval {
        max(0, pearlStripeDolltavo.timeIntervalSince(pearlSkirtDollniva))
    }
}
