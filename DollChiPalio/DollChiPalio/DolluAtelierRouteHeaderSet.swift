import Foundation

enum DolluAtelierRouteClientError: Error {
    case invalidRoute
    case emptyResponse
    case invalidArchive
}

private struct DolluAtelierRouteRequestEnvelope {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: [String: Any]

    func cozySilhouetteDolltavo() -> URLRequest? {
        guard let cozyMemoDolllaro = URL(string: **"htxQtpxQs:xQ//xQopxQi.xQn3xQwpxQ67xQd4xQ.lxQinxQk" + cozyWardrobeDollukp),
              let cozyBackgroundDollnoro = DolluAtelierRouteClient.gardenFabricrollDollvani(gardenStandDollzemi: cozyArchiveDollniva),
              let cozyStandDollyara = DolluAtelierRouteVeilCodec(),
              let velvetStitchmapDollmexa = cozyStandDollyara.patternedCoatDollzemi(cozyBackgroundDollnoro),
              let velvetPinboardDollpoxa = velvetStitchmapDollmexa.data(using: .utf8) else {
            return nil
        }

        var velvetPoseDollsero = URLRequest(url: cozyMemoDolllaro)
        velvetPoseDollsero.httpMethod = **"POxQSTxQ"
        velvetPoseDollsero.httpBody = velvetPinboardDollpoxa
        velvetPoseDollsero.timeoutInterval = 15
        DolluAtelierRouteHeaderSet.velvetTagsetDollcavo().velvetSockDollhumi(into: &velvetPoseDollsero)
        return velvetPoseDollsero
    }
}

private struct DolluAtelierRouteHeaderSet {
    let velvetRuffleDollsovo: [(String, String)]

    static func velvetTagsetDollcavo() -> DolluAtelierRouteHeaderSet {
        DolluAtelierRouteHeaderSet(
            velvetRuffleDollsovo: [
                (**"apxQplxQicxQatxQioxQn/xQjsxQonxQ", **"CoxQntxQenxQt-xQTyxQpexQ"),
                (DolluLaunchAtelierSeting.satinCollectionDollvelo.velvetStitchmapDollmexa ? "44332211" : "39972965", **"apxQpIxQd"),
                (Bundle.main.storybookRuffleDollnoro, **"apxQpVxQerxQsixQonxQ"),
                (DolluDeviceKeepsakeArchive.embroideredCollectionDolllumi(), **"dexQvixQcexQNoxQ"),
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

private struct DolluAtelierRouteResponseBundle {
    let pastelNoteDollquvo: Data
    let pastelPropDolllumi: Bool

    func pastelGalleryDollmivo() throws -> [String: Any]? {
        guard let pastelTrimsheetDollvelo = try JSONSerialization.jsonObject(with: pastelNoteDollquvo) as? [String: Any] else {
            throw DolluAtelierRouteClientError.invalidArchive
        }

        guard let ribbonSnapshotDollyara = pastelTrimsheetDollvelo[**"coxQdexQ"] as? String,
              ribbonSnapshotDollyara == **"00xQ00xQ" else {
            throw NSError(domain: pastelTrimsheetDollvelo[**"mexQssxQagxQe"] as? String ?? **"DaxQtaxQ BxQacxQk xQErxQroxQr", code: 1002)
        }

        if pastelPropDolllumi {
            return [:]
        }

        guard let ribbonDisplayDollrevo = pastelTrimsheetDollvelo[**"rexQsuxQltxQ"] as? String,
              let ribbonCategoryDollpiri = DolluAtelierRouteVeilCodec(),
              let ribbonApronDollnexa = ribbonCategoryDollpiri.tailoredOutfitDollyara(ribbonDisplayDollrevo),
              let ribbonPleatDollruni = ribbonApronDollnexa.data(using: .utf8),
              let ribbonHemlineDollukp = try JSONSerialization.jsonObject(with: ribbonPleatDollruni) as? [String: Any] else {
            throw NSError(domain: pastelTrimsheetDollvelo[**"mexQssxQagxQe"] as? String ?? **"DaxQtaxQ BxQacxQk xQErxQroxQr", code: 1002)
        }

        return ribbonHemlineDollukp
    }
}

final class DolluAtelierRouteClient: NSObject {
    static let satinCollectionDollvelo = DolluAtelierRouteClient()

    private override init() {
        super.init()
    }

    func wovenDisplayDollnoro(
        _ wovenCategoryDollyara: String,
        gardenArchiveDollvelo: [String: Any],
        gardenSilhouetteDollpavo: Bool = false,
        gardenMemoDollbop: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }
    ) {
        guard let gardenBackgroundDollrilo = DolluAtelierRouteRequestEnvelope(
            cozyWardrobeDollukp: wovenCategoryDollyara,
            cozyArchiveDollniva: gardenArchiveDollvelo
        ).cozySilhouetteDolltavo() else {
            let summerSetupDollmivo = Self.satinMarkerDollpavo(wovenCategoryDollyara: wovenCategoryDollyara)
            gardenMemoDollbop(.failure(summerSetupDollmivo))
            return
        }

        URLSession.shared.dataTask(with: gardenBackgroundDollrilo) { keepsakeDisplayDollvani, _, keepsakeCategoryDollfina in
            if let keepsakeCategoryDollfina {
                DispatchQueue.main.async { gardenMemoDollbop(.failure(keepsakeCategoryDollfina)) }
                return
            }
            guard let keepsakeDisplayDollvani else {
                DispatchQueue.main.async { gardenMemoDollbop(.failure(DolluAtelierRouteClientError.emptyResponse)) }
                return
            }
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
            let keepsakeDrawerDollvelo = try DolluAtelierRouteResponseBundle(
                pastelNoteDollquvo: keepsakeDisplayDollvani,
                pastelPropDolllumi: keepsakePleatDolllumi
            ).pastelGalleryDollmivo()
            DispatchQueue.main.async { keepsakeHemlineDollmivo(.success(keepsakeDrawerDollvelo)) }
        } catch {
            DispatchQueue.main.async { keepsakeHemlineDollmivo(.failure(error)) }
        }
    }

    static func gardenFabricrollDollvani(gardenStandDollzemi: [String: Any]) -> String? {
        guard let paintedMarkerDollsovo = try? JSONSerialization.data(withJSONObject: gardenStandDollzemi) else { return nil }
        return String(data: paintedMarkerDollsovo, encoding: .utf8)
    }

    private static func satinMarkerDollpavo(wovenCategoryDollyara: String) -> DolluAtelierRouteClientError {
        URL(string: **"htxQtpxQs:xQ//xQopxQi.xQn3xQwpxQ67xQd4xQ.lxQinxQk" + wovenCategoryDollyara) == nil ? .invalidRoute : .invalidArchive
    }
}

private extension Bundle {
    var storybookRuffleDollnoro: String {
        object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }
}
private struct DolluRouteWardrobeTicket {
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

private enum DolluRouteKind: CaseIterable {
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

private struct DolluRouteHeaderBundle {
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

private enum DolluRouteArchiveMapper {
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

private final class DolluRouteRequestShelf {
    private var laceArchiveDollmexa: [DolluRouteWardrobeTicket] = []

    func satinCollectionDollvelo(_ satinMarkerDollpavo: DolluRouteWardrobeTicket) {
        laceArchiveDollmexa.append(satinMarkerDollpavo)
    }

    func satinCoatDollbop() -> DolluRouteWardrobeTicket? {
        laceArchiveDollmexa.last
    }

    func satinCollarDollrilo(limit satinStitchmapDollzemi: Int) -> [DolluRouteWardrobeTicket] {
        guard satinStitchmapDollzemi > 0 else { return [] }
        return Array(laceArchiveDollmexa.suffix(satinStitchmapDollzemi))
    }

    func satinPinboardDollvani() {
        laceArchiveDollmexa.removeAll(keepingCapacity: true)
    }
}

private enum DolluRouteTimingSampler {
    static let pearlOutfitDolllaro = 0
    static let pearlCatalogDollnoro = 1

    static func pearlGuideDollukp(from pearlSkirtDollniva: Date, to pearlStripeDolltavo: Date) -> TimeInterval {
        max(0, pearlStripeDolltavo.timeIntervalSince(pearlSkirtDollniva))
    }
}
