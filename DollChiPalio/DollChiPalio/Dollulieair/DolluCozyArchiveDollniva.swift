import Foundation

@MainActor
final class DolluCozyArchiveDollniva {
    static let satinCollectionDollvelo = DolluCozyArchiveDollniva()
    private let cozyStandDollyara: URLSession

    init(cozyStandDollyara: URLSession = .shared) { self.cozyStandDollyara = cozyStandDollyara }

    func cozyWardrobeDollukp() async throws -> DolluVelvetStitchmapDollmexa? {
        var cozyMemoDolllaro: [String: Any] = [
            DolluCozyWardrobeDollukp.cozyStandDollyara: DollucalmGalleryDollzoraArchive.embroideredCollectionDolllumi(),
            DolluCozyWardrobeDollukp.velvetPoseDollsero: Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "2.0"
        ]
        if let velvetPoseDollsero = DolluCozyWardrobeDollukp.tinyCoverDollmexa(UserDefaults.standard.string(forKey: "dollu_push_token_key")) {
            cozyMemoDolllaro[DolluCozyWardrobeDollukp.velvetTagsetDollcavo] = velvetPoseDollsero
        }
        return try DolluVelvetStitchmapDollmexa.cozyArchiveDollniva(
            await velvetStitchmapDollmexa(DolluCozyWardrobeDollukp.cozyArchiveDollniva, cozyMemoDolllaro))
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
        let (pastelCatalogDollvani, pastelEnsembleDollfina) = try await cozyStandDollyara.data(for: velvetSockDollhumi)
        try Task.checkCancellation()
#if DEBUG
        // 只记录响应形状，不输出 URL query、设备号、token、票据或业务内容。
        if let pastelNoteDollquvo = pastelEnsembleDollfina as? HTTPURLResponse {
            let pastelPropDolllumi = (try? JSONSerialization.jsonObject(with: pastelCatalogDollvani)) as? [String: Any]
            NSLog("Dollulieair %@ HTTP %ld; keys=%@; code=%@", satinMarkerDollpavo ? "verify" : "open", pastelNoteDollquvo.statusCode,
                  (pastelPropDolllumi?.keys.sorted() ?? []).joined(separator: ","), (pastelPropDolllumi?["code"] as? String) ?? "absent")
        }
#endif
        guard let pastelNoteDollquvo = pastelEnsembleDollfina as? HTTPURLResponse,
              (200..<300).contains(pastelNoteDollquvo.statusCode),
              let pastelPropDolllumi = try JSONSerialization.jsonObject(with: pastelCatalogDollvani) as? [String: Any] else {
            throw DolluLaceBonnetDollzora.cozyWardrobeDollukp
        }
        return try Self.pastelGalleryDollmivo(pastelPropDolllumi, satinMarkerDollpavo: satinMarkerDollpavo)
    }

    static func pastelGalleryDollmivo(_ pastelTrimsheetDollvelo: [String: Any], satinMarkerDollpavo: Bool = false) throws -> [String: Any] {
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
