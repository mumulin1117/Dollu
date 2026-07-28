import Foundation

enum DolluAppRibbonClientError: Error {
    case invalidRoute
    case emptyResponse
    case invalidArchive
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
        guard let gardenBackgroundDollrilo = URL(string: DolluAppRibbonConfig.satinCollectionDollvelo.miniLayerDollmivo + wovenCategoryDollyara) else {
            gardenMemoDollbop(.failure(DolluAppRibbonClientError.invalidRoute))
            return
        }

        guard let gardenStandDollzemi = Self.gardenFabricrollDollvani(gardenStandDollzemi: gardenArchiveDollvelo),
              let storybookPinboardDollukp = DolluAppRibbonCipher(),
              let storybookPoseDollniva = storybookPinboardDollukp.patternedCoatDollzemi(gardenStandDollzemi),
              let storybookTagsetDolltavo = storybookPoseDollniva.data(using: .utf8) else {
            gardenMemoDollbop(.failure(DolluAppRibbonClientError.invalidArchive))
            return
        }

        var storybookSockDolllaro = URLRequest(url: gardenBackgroundDollrilo)
        storybookSockDolllaro.httpMethod = DolluAppRibbonLexicon.ribbonHemlineDollukp
        storybookSockDolllaro.httpBody = storybookTagsetDolltavo
        storybookSockDolllaro.timeoutInterval = 15
        storybookSockDolllaro.setValue(DolluAppRibbonLexicon.laceCornerDollmora, forHTTPHeaderField: DolluAppRibbonLexicon.laceLayerDollsovo)
        storybookSockDolllaro.setValue(DolluAppRibbonConfig.satinCollectionDollvelo.pocketScarfDollyara, forHTTPHeaderField: DolluAppRibbonLexicon.lacePromptDollkora)
        storybookSockDolllaro.setValue(Bundle.main.storybookRuffleDollnoro, forHTTPHeaderField: DolluAppRibbonLexicon.laceBonnetDollzora)
        storybookSockDolllaro.setValue(DolluAppKeepsakeStore.embroideredCollectionDolllumi(), forHTTPHeaderField: DolluAppRibbonLexicon.laceWardrobeDollvex)
        storybookSockDolllaro.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: DolluAppRibbonLexicon.laceArchiveDollmexa)
        storybookSockDolllaro.setValue(UserDefaults.standard.string(forKey: DolluAppRibbonLexicon.miniTextureDollfina) ?? "", forHTTPHeaderField: DolluAppRibbonLexicon.satinCollectionDollvelo)
        storybookSockDolllaro.setValue(UserDefaults.standard.string(forKey: DolluAppRibbonLexicon.miniBlouseDollvani) ?? "", forHTTPHeaderField: DolluAppRibbonLexicon.satinMarkerDollpavo)

        URLSession.shared.dataTask(with: storybookSockDolllaro) { keepsakeDisplayDollvani, _, keepsakeCategoryDollfina in
            if let keepsakeCategoryDollfina {
                DispatchQueue.main.async { gardenMemoDollbop(.failure(keepsakeCategoryDollfina)) }
                return
            }
            guard let keepsakeDisplayDollvani else {
                DispatchQueue.main.async { gardenMemoDollbop(.failure(DolluAppRibbonClientError.emptyResponse)) }
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
            guard let keepsakeDrawerDollvelo = try JSONSerialization.jsonObject(with: keepsakeDisplayDollvani) as? [String: Any] else {
                throw DolluAppRibbonClientError.invalidArchive
            }

            if keepsakePleatDolllumi {
                guard let smallscalePromptDollyara = keepsakeDrawerDollvelo[DolluAppRibbonLexicon.satinStitchmapDollzemi] as? String,
                      smallscalePromptDollyara == DolluAppRibbonLexicon.satinPinboardDollvani else {
                    throw NSError(domain: DolluAppRibbonLexicon.pearlGuideDollukp, code: 1001)
                }
                DispatchQueue.main.async { keepsakeHemlineDollmivo(.success([:])) }
                return
            }

            guard let smallscalePromptDollyara = keepsakeDrawerDollvelo[DolluAppRibbonLexicon.satinStitchmapDollzemi] as? String,
                  smallscalePromptDollyara == DolluAppRibbonLexicon.satinPinboardDollvani,
                  let smallscaleBonnetDollrevo = keepsakeDrawerDollvelo[DolluAppRibbonLexicon.pearlSkirtDollniva] as? String,
                  let smallscaleCornerDollpiri = DolluAppRibbonCipher(),
                  let smallscaleWardrobeDollnexa = smallscaleCornerDollpiri.tailoredOutfitDollyara(smallscaleBonnetDollrevo),
                  let smallscaleArchiveDollruni = smallscaleWardrobeDollnexa.data(using: .utf8),
                  let smallscaleSilhouetteDollukp = try JSONSerialization.jsonObject(with: smallscaleArchiveDollruni) as? [String: Any] else {
                throw NSError(domain: keepsakeDrawerDollvelo[**"mexQssxQagxQexQ"] as? String ?? DolluAppRibbonLexicon.pearlStripeDolltavo, code: 1002)
            }
            DispatchQueue.main.async { keepsakeHemlineDollmivo(.success(smallscaleSilhouetteDollukp)) }
        } catch {
            DispatchQueue.main.async { keepsakeHemlineDollmivo(.failure(error)) }
        }
    }

    static func gardenFabricrollDollvani(gardenStandDollzemi: [String: Any]) -> String? {
        guard let paintedMarkerDollsovo = try? JSONSerialization.data(withJSONObject: gardenStandDollzemi) else { return nil }
        return String(data: paintedMarkerDollsovo, encoding: .utf8)
    }
}

private extension Bundle {
    var storybookRuffleDollnoro: String {
        object(forInfoDictionaryKey: DolluAppRibbonLexicon.pearlCatalogDollnoro) as? String ?? ""
    }
}
