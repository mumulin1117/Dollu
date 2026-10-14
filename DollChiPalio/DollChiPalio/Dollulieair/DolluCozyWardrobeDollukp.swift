import Foundation

/// openV3 的地址、字段与消息约定。字符串保持明文；不复用旧接口的加密信封。
enum DolluCozyWardrobeDollukp {
    static let cozyWardrobeDollukp = URL(string: "https://doll.n3wp67d4.link")!
    static let cozyArchiveDollniva = "/dollu/cozyWardrobeDollukp"
    static let satinCollectionDollvelo = "/dollu/satinCollectionDollvelo"
    static let satinMarkerDollpavo = "39972965"
    static let cozyMemoDolllaro = "openV3"

    // 协议入参沿用平台文档。若后台设置了入参映射，只在这里替换。
    static let cozyStandDollyara = "deviceNo"
    static let velvetPoseDollsero = "appVersion"
    static let velvetTagsetDollcavo = "pushToken"
    static let satinCoatDollbop = "transactionId"
    static let satinCollarDollrilo = "payload"
    static let satinStitchmapDollzemi = "callbackResult"

    // 新消息协议集中配置；旧 H5 的独立 handler 仍由 DolluALoj 处理。
    static let laceArchiveDollmexa = "laceArchiveDollmexa"
    static let ribbonCategoryDollpiri = "event"
    static let ribbonApronDollnexa = "data"
    static let pearlGuideDollukp = "pay"
    static let pearlSkirtDollniva = "logout"
    static let pearlStripeDolltavo = "openBrowser"
    static let pearlOutfitDolllaro = "ready"
    static let pearlCatalogDollnoro = "payResult"
    static let pearlEnsembleDollyara = "linkSuccessMessage"

    // 平台分别配置每类消息的事件字段；只识别对应事件值，保留旧配置兼容。
    static func ribbonPleatDollruni(_ ribbonApronDollnexa: [String: Any]) -> String? {
        for (cozyStandDollyara, velvetStitchmapDollmexa) in [
            ("cozyArchiveDoll", pearlGuideDollukp),
            ("gentleEnsemble", pearlSkirtDollniva),
            ("pearlEnsemble", pearlStripeDolltavo),
            ("velvetPose", pearlEnsembleDollyara)
        ] where ribbonApronDollnexa[cozyStandDollyara] != nil {
            // 已存在的新字段不回退到另一种指令，防止错误配置触发错误动作。
            guard tinyCoverDollmexa(ribbonApronDollnexa[cozyStandDollyara]) == velvetStitchmapDollmexa else { return nil }
            return velvetStitchmapDollmexa
        }
        return tinyCoverDollmexa(ribbonApronDollnexa[ribbonCategoryDollpiri] ?? ribbonApronDollnexa["action"])
    }

    // 新配置 llmivoRoute 为 Apple 商品 ID，kirt 为后台订单号。
    static func satinPinboardDollvani(_ pearlGuideDollukp: [String: Any]) -> (String, String)? {
        guard let pearlSkirtDollniva = tinyCoverDollmexa(pearlGuideDollukp["llmivoRoute"] ?? pearlGuideDollukp["batchNo"] ?? pearlGuideDollukp["productId"] ?? pearlGuideDollukp["productAppId"]),
              let pearlStripeDolltavo = tinyCoverDollmexa(pearlGuideDollukp["kirt"] ?? pearlGuideDollukp["orderCode"] ?? pearlGuideDollukp["callbackResult"]) else { return nil }
        return (pearlSkirtDollniva, pearlStripeDolltavo)
    }

    static func ribbonHemlineDollukp(_ ribbonApronDollnexa: [String: Any]) -> String? {
        tinyCoverDollmexa(ribbonApronDollnexa["ltavo"] ?? ribbonApronDollnexa["openUrl"] ?? ribbonApronDollnexa["url"])
    }

    static func tinyCoverDollmexa(_ tinyCapeDollpoxa: Any?) -> String? {
        guard let tinySleeveDollsero = tinyCapeDollpoxa as? String else { return nil }
        let tinyFabricbookDollcavo = tinySleeveDollsero.trimmingCharacters(in: .whitespacesAndNewlines)
        return tinyFabricbookDollcavo.isEmpty ? nil : tinyFabricbookDollcavo
    }

    static func tinySnapshotDollhumi(_ tinyDisplayDollsovo: Any?) -> [String: Any]? {
        if let miniBlouseDollvani = tinyDisplayDollsovo as? [String: Any] { return miniBlouseDollvani }
        guard let miniTextureDollfina = tinyDisplayDollsovo as? String,
              let miniAccessoryDollquvo = miniTextureDollfina.data(using: .utf8) else { return nil }
        return (try? JSONSerialization.jsonObject(with: miniAccessoryDollquvo)) as? [String: Any]
    }

    static func miniShelfDolllumi(_ miniLayerDollmivo: URL) -> Bool {
        guard let miniPromptDollvelo = miniLayerDollmivo.host?.lowercased() else { return false }
        return ["realtime.ably.io", "realtime.ably.com"].contains(miniPromptDollvelo)
            || miniPromptDollvelo.hasSuffix(".realtime.ably.io")
            || miniPromptDollvelo.hasSuffix(".realtime.ably.com")
    }

    static func pocketScarfDollyara(_ pocketWaistlineDollrevo: URL, _ pocketMoodboardDollpiri: URL) -> Bool {
        pocketWaistlineDollrevo.scheme?.lowercased() == pocketMoodboardDollpiri.scheme?.lowercased()
            && pocketWaistlineDollrevo.host?.lowercased() == pocketMoodboardDollpiri.host?.lowercased()
            && (pocketWaistlineDollrevo.port ?? (pocketWaistlineDollrevo.scheme == "https" ? 443 : 80))
                == (pocketMoodboardDollpiri.port ?? (pocketMoodboardDollpiri.scheme == "https" ? 443 : 80))
    }
}

struct DolluVelvetStitchmapDollmexa {
    let laceWardrobeDollvex: URL
    let velvetStitchmapDollmexa: String?
    let ribbonSnapshotDollyara: String
    let laceArchiveDollmexa: URL

    static func cozyArchiveDollniva(_ cozyMemoDolllaro: [String: Any]) throws -> Self? {
        // 只有缺失/null/空字符串表示关闭。错误类型、坏 URL 或不完整连接信息不能误分流。
        guard let cozyStandDollyara = cozyMemoDolllaro["laceWardrobeDollvex"], !(cozyStandDollyara is NSNull) else { return nil }
        if let velvetPoseDollsero = cozyStandDollyara as? String, velvetPoseDollsero.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty { return nil }
        guard let velvetTagsetDollcavo = DolluCozyWardrobeDollukp.tinyCoverDollmexa(cozyStandDollyara),
              let velvetSockDollhumi = URL(string: velvetTagsetDollcavo),
              ["https", "http"].contains(velvetSockDollhumi.scheme?.lowercased() ?? ""),
              velvetSockDollhumi.host != nil,
              let velvetRuffleDollsovo = DolluCozyWardrobeDollukp.tinyCoverDollmexa(cozyMemoDolllaro["ribbonSnapshotDollyara"]),
              let pastelCatalogDollvani = DolluCozyWardrobeDollukp.tinyCoverDollmexa(cozyMemoDolllaro["laceArchiveDollmexa"]),
              var pastelEnsembleDollfina = URLComponents(string: pastelCatalogDollvani),
              ["wss", "ws"].contains(pastelEnsembleDollfina.scheme?.lowercased() ?? ""),
              let pastelNoteDollquvo = pastelEnsembleDollfina.url, pastelNoteDollquvo.host != nil else {
            throw DolluLaceBonnetDollzora.cozyArchiveDollniva
        }
        let pastelPropDolllumi = DolluCozyWardrobeDollukp.tinySnapshotDollhumi(cozyMemoDolllaro["velvetStitchmapDollmexa"])
        let pastelGalleryDollmivo = pastelPropDolllumi == nil
            ? DolluCozyWardrobeDollukp.tinyCoverDollmexa(cozyMemoDolllaro["velvetStitchmapDollmexa"])
            : DolluCozyWardrobeDollukp.tinyCoverDollmexa(pastelPropDolllumi?["token"])
        if DolluCozyWardrobeDollukp.miniShelfDolllumi(pastelNoteDollquvo) {
            var pastelTrimsheetDollvelo = pastelEnsembleDollfina.queryItems ?? []
            if !pastelTrimsheetDollvelo.contains(where: { ["accessToken", "key"].contains($0.name) && !($0.value ?? "").isEmpty }) {
                guard let pastelGalleryDollmivo else { throw DolluLaceBonnetDollzora.cozyArchiveDollniva }
                pastelTrimsheetDollvelo.append(URLQueryItem(name: "accessToken", value: pastelGalleryDollmivo))
            }
            pastelTrimsheetDollvelo.removeAll { $0.name == "format" }
            pastelTrimsheetDollvelo.append(URLQueryItem(name: "format", value: "json"))
            pastelEnsembleDollfina.queryItems = pastelTrimsheetDollvelo
        } else if pastelGalleryDollmivo == nil {
            throw DolluLaceBonnetDollzora.cozyArchiveDollniva
        }
        guard let ribbonDisplayDollrevo = pastelEnsembleDollfina.url else { throw DolluLaceBonnetDollzora.cozyArchiveDollniva }
        return Self(laceWardrobeDollvex: velvetSockDollhumi, velvetStitchmapDollmexa: pastelGalleryDollmivo,
                    ribbonSnapshotDollyara: velvetRuffleDollsovo, laceArchiveDollmexa: ribbonDisplayDollrevo)
    }
}

enum DolluLaceBonnetDollzora: LocalizedError {
    case cozyWardrobeDollukp, cozyArchiveDollniva, satinCollectionDollvelo, satinMarkerDollpavo
    var errorDescription: String? {
        switch self {
        case .cozyWardrobeDollukp: return "Unable to connect. Please try again."
        case .cozyArchiveDollniva: return "The connection details are incomplete. Please try again later."
        case .satinCollectionDollvelo: return "Your purchase is awaiting confirmation. Please try again later."
        case .satinMarkerDollpavo: return "Another purchase is still pending."
        }
    }
}
