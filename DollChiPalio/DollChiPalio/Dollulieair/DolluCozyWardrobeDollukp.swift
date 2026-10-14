import Foundation

/// openV3 的地址、字段与消息约定。字符串保持明文；不复用旧接口的加密信封。
enum DolluCozyWardrobeDollukp {
    static let cozyWardrobeDollukp = URL(string: "https://doll.n3wp67d4.link")!
    static let cozyArchiveDollniva = "/dollu/cozyWardrobeDollukp"
    static let satinCollectionDollvelo = "/dollu/satinCollectionDollvelo"
    static let satinMarkerDollpavo = "39972965"
    static let cozyMemoDolllaro = "openV3"

    // 平台字段映射：设备号、版本、推送，以及交易号、票据和后台订单号。
    static let cozyStandDollyara = "velvetTagset"
    static let velvetPoseDollsero = "wardrobe"
    static let velvetTagsetDollcavo = "cozyMemoDolllaro"
    static let satinCoatDollbop = "dollcavo"
    static let satinCollarDollrilo = "ribbonDisplayDollrevo"
    static let satinStitchmapDollzemi = "pastelProp"
    // 仅供主动请求平台下发消息使用，open/验单不附带该参数。
    static let velvetPinboardDollpoxa = "cozyDolltavo"

    // 平台 H5 字段映射：订单号、Apple 商品 ID、外链地址。
    static let ribbonSnapshotDollyara = "Silhouette"
    static let laceLayerDollsovo = "ribbonSnaps"
    static let lacePromptDollkora = "shotDollyarafoverlin"

    // 当前消息协议。原生回传结果使用 event；下发事件只读取配置中的专属字段。
    static let laceArchiveDollmexa = "laceArchiveDollmexa"
    static let ribbonCategoryDollpiri = "event"
    static let ribbonApronDollnexa = "data"
    static let pearlGuideDollukp = "pay"
    static let pearlSkirtDollniva = "logout"
    static let pearlStripeDolltavo = "openBrowser"
    static let pearlCatalogDollnoro = "payResult"
    static let pearlEnsembleDollyara = "linkSuccessMessage"

    // 只接受当前四类消息的字段和值，不从旧事件字段或传输层名称推断动作。
    static func ribbonPleatDollruni(_ ribbonApronDollnexa: [String: Any]) -> String? {
        let cozyMemoDolllaro = [
            ("cozyArchiveDoll", pearlGuideDollukp),
            ("gentleEnsemble", pearlSkirtDollniva),
            ("pearlEnsemble", pearlStripeDolltavo),
            ("velvetPose", pearlEnsembleDollyara)
        ].filter { ribbonApronDollnexa[$0.0] != nil }
        guard cozyMemoDolllaro.count == 1,
              let (cozyStandDollyara, velvetStitchmapDollmexa) = cozyMemoDolllaro.first,
              tinyCoverDollmexa(ribbonApronDollnexa[cozyStandDollyara]) == velvetStitchmapDollmexa else { return nil }
        return velvetStitchmapDollmexa
    }

    static func ribbonDisplayDollrevo(_ ribbonApronDollnexa: [String: Any]) -> [String: Any] {
        // 支付和外链参数必须放在配置指定的 data 中，不能回退到顶层字段。
        tinySnapshotDollhumi(ribbonApronDollnexa[Self.ribbonApronDollnexa]) ?? [:]
    }

    // 消息模板明确指定 llmivoRoute/kirt；也接收平台 H5 映射后的字段。
    static func satinPinboardDollvani(_ pearlGuideDollukp: [String: Any]) -> (String, String)? {
        guard let pearlSkirtDollniva = tinyCoverDollmexa(pearlGuideDollukp["llmivoRoute"] ?? pearlGuideDollukp[laceLayerDollsovo]),
              let pearlStripeDolltavo = tinyCoverDollmexa(pearlGuideDollukp["kirt"] ?? pearlGuideDollukp[ribbonSnapshotDollyara]) else { return nil }
        return (pearlSkirtDollniva, pearlStripeDolltavo)
    }

    static func ribbonHemlineDollukp(_ ribbonApronDollnexa: [String: Any]) -> String? {
        tinyCoverDollmexa(ribbonApronDollnexa["ltavo"] ?? ribbonApronDollnexa[lacePromptDollkora])
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
