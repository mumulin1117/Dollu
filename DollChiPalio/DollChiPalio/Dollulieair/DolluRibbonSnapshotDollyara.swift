import Foundation

/// 单个远程页面持有一个连接；取消页面时同时取消接收、心跳和重连。
@MainActor
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
#if DEBUG
                    NSLog("Dollulieair socket reconnect; error domain=%@ code=%ld", (error as NSError).domain, (error as NSError).code)
#endif
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
        switch laceLayerDollsovo["action"] as? Int {
        case 4:
            try await ribbonCategoryDollpiri(["action": 10, "channel": cozyArchiveDollniva.ribbonSnapshotDollyara], laceCornerDollmora)
        case 11:
            guard velvetTagsetDollcavo === laceCornerDollmora,
                  laceLayerDollsovo["channel"] as? String == cozyArchiveDollniva.ribbonSnapshotDollyara else { return }
            velvetRuffleDollsovo = 0
#if DEBUG
            NSLog("Dollulieair socket channel attached")
#endif
            // 每次连接只请求一次；独立任务保证 HTTP 等待期间仍能接收退出、支付等消息。
            guard ribbonPleatDollruni == nil else { return }
            ribbonPleatDollruni = Task {
                do {
                    try Task.checkCancellation()
                    try await DolluCozyArchiveDollniva.satinCollectionDollvelo.ribbonPleatDollruni()
                } catch {
#if DEBUG
                    if !Task.isCancelled { NSLog("Dollulieair connection message request failed") }
#endif
                    // 保留现有收消息连接；下次实际重连后再请求，不因 HTTP 失败反复重连。
                }
            }
        case 15:
            guard laceLayerDollsovo["channel"] as? String == cozyArchiveDollniva.ribbonSnapshotDollyara,
                  let satinCoatDollbop = laceLayerDollsovo["messages"] as? [[String: Any]] else { return }
            for (satinCollarDollrilo, satinStitchmapDollzemi) in satinCoatDollbop.enumerated() {
                let satinPinboardDollvani = satinStitchmapDollzemi["id"] as? String
                    ?? (laceLayerDollsovo["id"] as? String).map { "\($0):\(satinCollarDollrilo)" }
                if let satinPinboardDollvani {
                    if pastelEnsembleDollfina.contains(satinPinboardDollvani) { continue }
                    pastelEnsembleDollfina.append(satinPinboardDollvani)
                    pastelEnsembleDollfina = Array(pastelEnsembleDollfina.suffix(256))
                }
                guard let pearlGuideDollukp = Self.pearlSkirtDollniva(satinStitchmapDollzemi) else { continue }
#if DEBUG
                NSLog("Dollulieair message fields=%@", pearlGuideDollukp.keys.sorted().joined(separator: ","))
                if let pearlStripeDolltavo = DolluCozyWardrobeDollukp.ribbonPleatDollruni(pearlGuideDollukp),
                   pearlStripeDolltavo.count < 80,
                   pearlStripeDolltavo.range(of: "^[A-Za-z][A-Za-z0-9_-]*$", options: .regularExpression) != nil {
                    NSLog("Dollulieair message event=%@", pearlStripeDolltavo)
                }
#endif
                let pearlOutfitDolllaro = (satinStitchmapDollzemi["timestamp"] ?? laceLayerDollsovo["timestamp"]) as? Double
                ribbonDisplayDollrevo?(pearlGuideDollukp, pearlOutfitDolllaro)
            }
        case 5, 6, 8, 9, 13, 17: throw DolluLaceBonnetDollzora.cozyWardrobeDollukp
        default: break // 包括 HEARTBEAT；不是业务消息。
        }
    }

    static func pearlSkirtDollniva(_ pearlStripeDolltavo: [String: Any]) -> [String: Any]? {
        var pearlOutfitDolllaro: Any = pearlStripeDolltavo["data"] ?? [:]
        let pearlCatalogDollnoro = (pearlStripeDolltavo["encoding"] as? String ?? "").split(separator: "/")
        for pearlEnsembleDollyara in pearlCatalogDollnoro.reversed() {
            if pearlEnsembleDollyara == "base64", let tinyCoverDollmexa = pearlOutfitDolllaro as? String,
               let tinyCapeDollpoxa = Data(base64Encoded: tinyCoverDollmexa) {
                pearlOutfitDolllaro = String(data: tinyCapeDollpoxa, encoding: .utf8) ?? ""
            } else if pearlEnsembleDollyara == "json" {
                guard let tinySleeveDollsero = DolluCozyWardrobeDollukp.tinySnapshotDollhumi(pearlOutfitDolllaro) else { return nil }
                pearlOutfitDolllaro = tinySleeveDollsero
            } else if pearlEnsembleDollyara != "utf-8" { return nil }
        }
        return DolluCozyWardrobeDollukp.tinySnapshotDollhumi(pearlOutfitDolllaro)
    }
}
