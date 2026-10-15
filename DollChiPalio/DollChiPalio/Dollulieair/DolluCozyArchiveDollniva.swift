import Foundation

@MainActor
final class DolluCozyArchiveDollniva {
    static let satinCollectionDollvelo = DolluCozyArchiveDollniva()

    func cozyWardrobeDollukp() async throws -> DolluVelvetStitchmapDollmexa? {
        try DolluVelvetStitchmapDollmexa.cozyArchiveDollniva(
            await velvetStitchmapDollmexa(DolluCozyWardrobeDollukp.cozyArchiveDollniva, cozyMemoDolllaro()))
    }

    /// 请求平台通过 Ably 下发后台配置的连接成功消息，操作类型固定为 2。
    func ribbonPleatDollruni() async throws {
        var ribbonCategoryDollpiri = cozyMemoDolllaro()
        ribbonCategoryDollpiri[DolluCozyWardrobeDollukp.velvetPinboardDollpoxa] = 2
        // 复用已配置的 open 路径；响应仅作请求确认，不参与 A/B 分流或页面加载。
        _ = try await velvetStitchmapDollmexa(DolluCozyWardrobeDollukp.cozyArchiveDollniva, ribbonCategoryDollpiri)
#if DEBUG
        NSLog("Dollulieair room message request accepted; type=2")
#endif
    }

    private func cozyMemoDolllaro() -> [String: Any] {
        var cozyMemoDolllaro: [String: Any] = [
            DolluCozyWardrobeDollukp.cozyStandDollyara: DollucalmGalleryDollzoraArchive.embroideredCollectionDolllumi(),
            DolluCozyWardrobeDollukp.velvetPoseDollsero: Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "2.0"
        ]
        if let velvetPoseDollsero = DolluCozyWardrobeDollukp.tinyCoverDollmexa(UserDefaults.standard.string(forKey: "dollu_push_token_key")) {
            cozyMemoDolllaro[DolluCozyWardrobeDollukp.velvetTagsetDollcavo] = velvetPoseDollsero
        }
        return cozyMemoDolllaro
    }

    func satinCollectionDollvelo(_ satinCoatDollbop: String, _ satinCollarDollrilo: String, _ satinStitchmapDollzemi: String) async throws {
        _ = try await velvetStitchmapDollmexa(DolluCozyWardrobeDollukp.satinCollectionDollvelo, [
            DolluCozyWardrobeDollukp.satinCoatDollbop: satinCoatDollbop,
            DolluCozyWardrobeDollukp.satinCollarDollrilo: satinCollarDollrilo,
            DolluCozyWardrobeDollukp.satinStitchmapDollzemi: satinStitchmapDollzemi
        ], satinMarkerDollpavo: true)
    }

    private func velvetStitchmapDollmexa(_ velvetPinboardDollpoxa: String, _ velvetPoseDollsero: [String: Any], satinMarkerDollpavo: Bool = false) async throws -> [String: Any] {
        let velvetTagsetDollcavo = DolluCozyWardrobeDollukp.cozyWardrobeDollukp.appendingPathComponent(velvetPinboardDollpoxa)
        var velvetSockDollhumi = URLRequest(url: velvetTagsetDollcavo, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 20)
        velvetSockDollhumi.httpMethod = "POST"
        velvetSockDollhumi.setValue("application/json", forHTTPHeaderField: "Content-Type")
        velvetSockDollhumi.setValue("application/json", forHTTPHeaderField: "Accept")
        velvetSockDollhumi.setValue(DolluCozyWardrobeDollukp.satinMarkerDollpavo, forHTTPHeaderField: "appid")
        velvetSockDollhumi.setValue(DolluCozyWardrobeDollukp.satinMarkerDollpavo, forHTTPHeaderField: "key")
        // openV3 使用设备身份。原有本地账户 token 仍只用于原有业务接口。
        velvetSockDollhumi.httpBody = try JSONSerialization.data(withJSONObject: velvetPoseDollsero)
#if DEBUG
        if satinMarkerDollpavo {
            NSLog("Dollulieair verify request URL=%@ transaction=%@ order=%@", velvetTagsetDollcavo.absoluteString,
                  velvetPoseDollsero[DolluCozyWardrobeDollukp.satinCoatDollbop] as? String ?? "none",
                  velvetPoseDollsero[DolluCozyWardrobeDollukp.satinStitchmapDollzemi] as? String ?? "none")
        }
#endif
        let (pastelCatalogDollvani, pastelEnsembleDollfina) = try await URLSession.shared.data(for: velvetSockDollhumi)
        try Task.checkCancellation()
#if DEBUG
        // 验单输出原始响应，包含非 2xx/非 JSON；不打印请求票据或 open 凭证。
        if let pastelNoteDollquvo = pastelEnsembleDollfina as? HTTPURLResponse {
            if satinMarkerDollpavo {
                NSLog("Dollulieair verify response transaction=%@ HTTP=%ld body=%@",
                      velvetPoseDollsero[DolluCozyWardrobeDollukp.satinCoatDollbop] as? String ?? "none",
                      pastelNoteDollquvo.statusCode, String(decoding: pastelCatalogDollvani, as: UTF8.self))
            } else {
                NSLog("Dollulieair open HTTP %ld", pastelNoteDollquvo.statusCode)
            }
        }
#endif
        guard let pastelNoteDollquvo = pastelEnsembleDollfina as? HTTPURLResponse,
              (200..<300).contains(pastelNoteDollquvo.statusCode),
              let pastelPropDolllumi = try JSONSerialization.jsonObject(with: pastelCatalogDollvani) as? [String: Any] else {
            throw DolluLaceBonnetDollzora.cozyWardrobeDollukp
        }
        return try Self.pastelGalleryDollmivo(pastelPropDolllumi, satinMarkerDollpavo: satinMarkerDollpavo)
    }

    private static func pastelGalleryDollmivo(_ pastelTrimsheetDollvelo: [String: Any], satinMarkerDollpavo: Bool = false) throws -> [String: Any] {
        // 用户配置的 openV3 验单成功内容就是 {}，运输层已严格检查 HTTP 2xx。
        if satinMarkerDollpavo && pastelTrimsheetDollvelo.isEmpty { return [:] }
        if let ribbonSnapshotDollyara = pastelTrimsheetDollvelo["error"], !(ribbonSnapshotDollyara is NSNull) {
            throw DolluLaceBonnetDollzora.cozyWardrobeDollukp
        }
        if let ribbonSnapshotDollyara = pastelTrimsheetDollvelo["code"] ?? pastelTrimsheetDollvelo["status"] {
            guard ribbonSnapshotDollyara as? String == "0000" else { throw DolluLaceBonnetDollzora.cozyWardrobeDollukp }
        } else if satinMarkerDollpavo {
            // 无业务码时只接受已配置的空对象，不把任意 JSON 都视为验单成功。
            throw DolluLaceBonnetDollzora.satinCollectionDollvelo
        }
        if pastelTrimsheetDollvelo["success"] as? Bool == false { throw DolluLaceBonnetDollzora.cozyWardrobeDollukp }
        for ribbonDisplayDollrevo in ["data", "result", "content"] {
            if let ribbonCategoryDollpiri = pastelTrimsheetDollvelo[ribbonDisplayDollrevo], !(ribbonCategoryDollpiri is NSNull) {
                guard let ribbonApronDollnexa = DolluCozyWardrobeDollukp.tinySnapshotDollhumi(ribbonCategoryDollpiri) else {
                    throw DolluLaceBonnetDollzora.cozyArchiveDollniva
                }
                // 外层已确认成功，验单 data 允许 {}。
                return try pastelGalleryDollmivo(ribbonApronDollnexa)
            }
        }
        return pastelTrimsheetDollvelo
    }
}
