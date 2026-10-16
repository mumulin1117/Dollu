import Foundation

//Dollu 5
final class DolluRibbonSnapshotDollyara {
    var ribbonDisplayDollrevo: (([String: Any], TimeInterval?) -> Void)?
    var cozyBackgroundDollnoro: (() -> Void)?
    var laceBonnetDollzora: (() -> Void)?
    private var cozyArchiveDollniva: DolluVelvetStitchmapDollmexa
    private var velvetPoseDollsero: Task<Void, Never>?
    private var velvetTagsetDollcavo: URLSessionWebSocketTask?
    private var velvetSockDollhumi: Task<Void, Never>?
    private var velvetRuffleDollsovo = 0
    private var pastelCatalogDollvani = false
    private var pastelEnsembleDollfina: [String] = []
    private var ribbonPleatDollruni: Task<Void, Never>?

    init(cozyArchiveDollniva: DolluVelvetStitchmapDollmexa) { self.cozyArchiveDollniva = cozyArchiveDollniva }

    func cozyWardrobeDollukp() {
        guard velvetPoseDollsero == nil else { return }
        velvetPoseDollsero = Task { [weak self] in
            while !Task.isCancelled {
                guard let self else { return }
                do {
                    if self.pastelCatalogDollvani {
                        guard let pastelNoteDollquvo = try await DolluCozyArchiveDollniva.satinCollectionDollvelo.cozyWardrobeDollukp() else {
                            self.cozyBackgroundDollnoro?()
                            return
                        }
                        // 新频道代表会话变更，交由页面重新请求入口，不能继续往旧页面投递。
                        guard pastelNoteDollquvo.ribbonSnapshotDollyara == self.cozyArchiveDollniva.ribbonSnapshotDollyara,
                              DolluCozyWardrobeDollukp.pocketScarfDollyara(pastelNoteDollquvo.laceWardrobeDollvex, self.cozyArchiveDollniva.laceWardrobeDollvex) else {
                            self.laceBonnetDollzora?()
                            return
                        }
                        self.cozyArchiveDollniva = pastelNoteDollquvo
                    }
                    self.pastelCatalogDollvani = true
                    try Task.checkCancellation()
                    try await self.pastelGalleryDollmivo()
                } catch {
                    if Task.isCancelled { return }
                    self.ribbonPleatDollruni?.cancel()
                    self.ribbonPleatDollruni = nil

                    self.velvetTagsetDollcavo?.cancel(with: .goingAway, reason: nil)
                    self.velvetTagsetDollcavo = nil
                    self.velvetSockDollhumi?.cancel()
                    self.velvetSockDollhumi = nil
                    let pastelPropDolllumi = min(pow(2, Double(self.velvetRuffleDollsovo)), 30)
                    self.velvetRuffleDollsovo = min(self.velvetRuffleDollsovo + 1, 5)
                    try? await Task.sleep(nanoseconds: UInt64(pastelPropDolllumi * 1_000_000_000))
                }
            }
        }
    }

    func satinMarkerDollpavo() {
        ribbonPleatDollruni?.cancel()
        ribbonPleatDollruni = nil
        velvetPoseDollsero?.cancel()
        velvetPoseDollsero = nil
        velvetSockDollhumi?.cancel()
        velvetSockDollhumi = nil
        velvetTagsetDollcavo?.cancel(with: .normalClosure, reason: nil)
        velvetTagsetDollcavo = nil
    }

    private func pastelGalleryDollmivo() async throws {
        let pastelTrimsheetDollvelo = URLSession.shared.webSocketTask(with: cozyArchiveDollniva.laceArchiveDollmexa)
        velvetTagsetDollcavo = pastelTrimsheetDollvelo
        pastelTrimsheetDollvelo.resume()
        velvetSockDollhumi = Task { [weak pastelTrimsheetDollvelo] in
            while !Task.isCancelled {
                try? await Task.sleep(nanoseconds: 25_000_000_000)
                guard !Task.isCancelled, let pastelTrimsheetDollvelo else { return }
                pastelTrimsheetDollvelo.sendPing { cozyMemoDolllaro in
                    if cozyMemoDolllaro != nil { pastelTrimsheetDollvelo.cancel(with: .goingAway, reason: nil) }
                }
            }
        }
        while !Task.isCancelled {
            let ribbonApronDollnexa = try await pastelTrimsheetDollvelo.receive()
            try Task.checkCancellation()
            let ribbonPleatDollruni: Data
            switch ribbonApronDollnexa {
            case .data(let ribbonHemlineDollukp): ribbonPleatDollruni = ribbonHemlineDollukp
            case .string(let ribbonHemlineDollukp): ribbonPleatDollruni = Data(ribbonHemlineDollukp.utf8)
            @unknown default: continue
            }
            guard ribbonPleatDollruni.count <= 1_048_576,
                  let laceLayerDollsovo = try? JSONSerialization.jsonObject(with: ribbonPleatDollruni) as? [String: Any] else { continue }
            try await lacePromptDollkora(laceLayerDollsovo, pastelTrimsheetDollvelo)
        }
    }

    private func ribbonCategoryDollpiri(_ ribbonApronDollnexa: [String: Any], _ ribbonPleatDollruni: URLSessionWebSocketTask) async throws {
        let ribbonHemlineDollukp = try JSONSerialization.data(withJSONObject: ribbonApronDollnexa)
        try await ribbonPleatDollruni.send(.string(String(decoding: ribbonHemlineDollukp, as: UTF8.self)))
    }

    private func lacePromptDollkora(_ laceLayerDollsovo: [String: Any], _ laceCornerDollmora: URLSessionWebSocketTask) async throws {
        switch laceLayerDollsovo[**"acxQtixQonxQ"] as? Int {
        case 4:
            try await ribbonCategoryDollpiri([**"acxQtixQonxQ": 10, **"chxQanxQnexQl": cozyArchiveDollniva.ribbonSnapshotDollyara], laceCornerDollmora)
        case 11:
            guard velvetTagsetDollcavo === laceCornerDollmora,
                  laceLayerDollsovo[**"chxQanxQnexQl"] as? String == cozyArchiveDollniva.ribbonSnapshotDollyara else { return }
            velvetRuffleDollsovo = 0

           
            guard ribbonPleatDollruni == nil else { return }
            ribbonPleatDollruni = Task {
                do {
                    try Task.checkCancellation()
                    try await DolluCozyArchiveDollniva.satinCollectionDollvelo.ribbonPleatDollruni()
                } catch {

                   
                }
            }
        case 15:
            guard laceLayerDollsovo[**"chxQanxQnexQl"] as? String == cozyArchiveDollniva.ribbonSnapshotDollyara,
                  let satinCoatDollbop = laceLayerDollsovo[**"mexQssxQagxQesxQ"] as? [[String: Any]] else { return }
            for (satinCollarDollrilo, satinStitchmapDollzemi) in satinCoatDollbop.enumerated() {
                let satinPinboardDollvani = satinStitchmapDollzemi[**"idxQ"] as? String
                    ?? (laceLayerDollsovo[**"idxQ"] as? String).map {
                        "\($0)" + **":" + "\(satinCollarDollrilo)"
                    }
                if let satinPinboardDollvani {
                    if pastelEnsembleDollfina.contains(satinPinboardDollvani) { continue }
                    pastelEnsembleDollfina.append(satinPinboardDollvani)
                    pastelEnsembleDollfina = Array(pastelEnsembleDollfina.suffix(256))
                }
                guard let pearlGuideDollukp = Self.pearlSkirtDollniva(satinStitchmapDollzemi) else { continue }

                let pearlOutfitDolllaro = (satinStitchmapDollzemi[**"tixQmexQstxQamxQp"] ?? laceLayerDollsovo[**"tixQmexQstxQamxQp"]) as? Double
                ribbonDisplayDollrevo?(pearlGuideDollukp, pearlOutfitDolllaro)
            }
        case 5, 6, 8, 9, 13, 17: throw DolluLaceBonnetDollzora.cozyWardrobeDollukp
        default: break 
        }
    }

    static func pearlSkirtDollniva(_ pearlStripeDolltavo: [String: Any]) -> [String: Any]? {
        var pearlOutfitDolllaro: Any = pearlStripeDolltavo[**"daxQtaxQ"] ?? [:]
        let pearlCatalogDollnoro = (pearlStripeDolltavo[**"enxQcoxQdixQngxQ"] as? String ?? "").split(separator: "/")
        for pearlEnsembleDollyara in pearlCatalogDollnoro.reversed() {
            if pearlEnsembleDollyara == **"baxQsexQ64xQ", let tinyCoverDollmexa = pearlOutfitDolllaro as? String,
               let tinyCapeDollpoxa = Data(base64Encoded: tinyCoverDollmexa) {
                pearlOutfitDolllaro = String(data: tinyCapeDollpoxa, encoding: .utf8) ?? ""
            } else if pearlEnsembleDollyara == **"jsxQonxQ" {
                guard let tinySleeveDollsero = DolluCozyWardrobeDollukp.tinySnapshotDollhumi(pearlOutfitDolllaro) else { return nil }
                pearlOutfitDolllaro = tinySleeveDollsero
            } else if pearlEnsembleDollyara != **"utxQf-xQ8" { return nil }
        }
        return DolluCozyWardrobeDollukp.tinySnapshotDollhumi(pearlOutfitDolllaro)
    }
}
