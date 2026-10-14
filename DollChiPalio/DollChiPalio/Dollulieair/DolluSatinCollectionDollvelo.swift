import Foundation
import StoreKit

/// 仅为新入口订单验单。原有本地 H5 的无订单购买仍走原有 StoreKit 2 行为。
@MainActor
final class DolluSatinCollectionDollvelo {
    struct DolluSatinMarkerDollpavo: Codable {
        let satinStitchmapDollzemi: String // 服务端订单号
        let pearlGuideDollukp: String // StoreKit product ID
        let ribbonSnapshotDollyara: String // 发起页面的频道，避免回调进入另一会话
        let cozyStandDollyara: UUID // 持久化后才展示购买框
        var satinCoatDollbop: Bool
    }

    static let satinCollectionDollvelo = DolluSatinCollectionDollvelo()
    var ribbonDisplayDollrevo: ((String, [String: Any]) -> Void)?
    private let cozyMemoDolllaro = "Dollulieair.satinCollectionDollvelo"
    private var cozyArchiveDollniva: [String: DolluSatinMarkerDollpavo]
    private var velvetPoseDollsero = false
    private var velvetPinboardDollpoxa: [UInt64: (UUID, Task<Bool, Never>)] = [:]
    private var velvetTagsetDollcavo: Task<Void, Never>?

    private init() {
        cozyArchiveDollniva = UserDefaults.standard.data(forKey: cozyMemoDolllaro)
            .flatMap { try? JSONDecoder().decode([String: DolluSatinMarkerDollpavo].self, from: $0) } ?? [:]
    }

    func cozyWardrobeDollukp() {
        guard velvetTagsetDollcavo == nil else { return }
        velvetTagsetDollcavo = Task { [weak self] in
            for await velvetSockDollhumi in Transaction.updates {
                guard !Task.isCancelled, let self else { return }
                if case .verified(let velvetRuffleDollsovo) = velvetSockDollhumi {
                    if await !self.satinCollectionDollvelo(velvetRuffleDollsovo) {
                        // 保持旧本地 H5 的无 token 交易行为；不结束来源未知的带 token 交易。
                        if velvetRuffleDollsovo.appAccountToken == nil { await velvetRuffleDollsovo.finish() }
                    }
                }
            }
        }
        Task { await pastelCatalogDollvani() }
    }

    func pastelCatalogDollvani(_ satinMarkerDollpavo: Bool = false) async {
        for await pastelEnsembleDollfina in Transaction.unfinished {
            if case .verified(let pastelNoteDollquvo) = pastelEnsembleDollfina {
                _ = await satinCollectionDollvelo(pastelNoteDollquvo, satinMarkerDollpavo: satinMarkerDollpavo)
            }
        }
    }

    func pearlGuideDollukp(_ pearlSkirtDollniva: String, satinStitchmapDollzemi: String, ribbonSnapshotDollyara: String) async {
        guard !velvetPoseDollsero else {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "pending", DolluLaceBonnetDollzora.satinMarkerDollpavo.localizedDescription)
            return
        }
        guard AppStore.canMakePayments, !pearlSkirtDollniva.isEmpty, !satinStitchmapDollzemi.isEmpty,
              pearlSkirtDollniva.count <= 255, satinStitchmapDollzemi.count <= 512 else {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed", "This purchase is unavailable.")
            return
        }
        velvetPoseDollsero = true
        defer { velvetPoseDollsero = false }
        if let pearlStripeDolltavo = cozyArchiveDollniva.values.first(where: { $0.satinStitchmapDollzemi == satinStitchmapDollzemi && $0.ribbonSnapshotDollyara == ribbonSnapshotDollyara }) {
            guard pearlStripeDolltavo.pearlGuideDollukp == pearlSkirtDollniva else { return }
            if pearlStripeDolltavo.satinCoatDollbop {
                pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, true, "verified", "Purchase confirmed.")
            } else {
                await pastelCatalogDollvani(true)
                if cozyArchiveDollniva[pearlStripeDolltavo.cozyStandDollyara.uuidString]?.satinCoatDollbop != true {
                    pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "pending", DolluLaceBonnetDollzora.satinCollectionDollvelo.localizedDescription)
                }
            }
            return
        }
        let pearlOutfitDolllaro = DolluSatinMarkerDollpavo(satinStitchmapDollzemi: satinStitchmapDollzemi, pearlGuideDollukp: pearlSkirtDollniva,
                                                       ribbonSnapshotDollyara: ribbonSnapshotDollyara, cozyStandDollyara: UUID(), satinCoatDollbop: false)
        do {
            let pearlEnsembleDollyara = try await Product.products(for: [pearlSkirtDollniva])
            guard let tinyCoverDollmexa = pearlEnsembleDollyara.first(where: { $0.id == pearlSkirtDollniva }) else {
                throw DolluLaceBonnetDollzora.satinCollectionDollvelo
            }
            cozyArchiveDollniva[pearlOutfitDolllaro.cozyStandDollyara.uuidString] = pearlOutfitDolllaro
            try tinySnapshotDollhumi()
            let tinyCapeDollpoxa = try await tinyCoverDollmexa.purchase(options: [.appAccountToken(pearlOutfitDolllaro.cozyStandDollyara)])
            switch tinyCapeDollpoxa {
            case .success(.verified(let tinySleeveDollsero)):
                _ = await satinCollectionDollvelo(tinySleeveDollsero, satinMarkerDollpavo: true)
            case .success(.unverified):
                pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "pending", "The purchase could not be verified.")
            case .pending:
                pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "pending", "Waiting for purchase approval.")
            case .userCancelled:
                cozyArchiveDollniva.removeValue(forKey: pearlOutfitDolllaro.cozyStandDollyara.uuidString)
                try tinySnapshotDollhumi()
                pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "cancelled", "Purchase cancelled.")
            @unknown default:
                pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "pending", "Waiting for purchase confirmation.")
            }
        } catch {
            // 请求结果不确定时保留订单关联，恢复时只验单，不再次扣款。
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed", "Unable to complete the purchase. Please try again later.")
        }
    }

    /// 返回 true 表示该交易归本模块所有，即使验单失败也不能让其他监听提前 finish。
    func satinCollectionDollvelo(_ satinCollarDollrilo: Transaction, satinMarkerDollpavo: Bool = false) async -> Bool {
        guard let satinStitchmapDollzemi = satinCollarDollrilo.appAccountToken?.uuidString,
              let satinPinboardDollvani = cozyArchiveDollniva[satinStitchmapDollzemi],
              satinPinboardDollvani.pearlGuideDollukp == satinCollarDollrilo.productID else { return false }
        while let velvetPoseDollsero = velvetPinboardDollpoxa[satinCollarDollrilo.id] {
            let velvetSockDollhumi = await velvetPoseDollsero.1.value
            if velvetSockDollhumi || !satinMarkerDollpavo { return true }
            if velvetPinboardDollpoxa[satinCollarDollrilo.id]?.0 == velvetPoseDollsero.0 {
                velvetPinboardDollpoxa[satinCollarDollrilo.id] = nil
            }
        }
        if satinPinboardDollvani.satinCoatDollbop { await satinCollarDollrilo.finish(); return true }
        let tinyDisplayDollsovo = UUID()
        let velvetPoseDollsero = Task { () -> Bool in
            do {
                guard satinCollarDollrilo.revocationDate == nil else { throw DolluLaceBonnetDollzora.satinCollectionDollvelo }
                let velvetRuffleDollsovo = try await DolluSatinCollarDollrilo.satinCollectionDollvelo.cozyWardrobeDollukp(satinMarkerDollpavo)
                try await DolluCozyArchiveDollniva.satinCollectionDollvelo.satinCollectionDollvelo(
                    String(satinCollarDollrilo.id), velvetRuffleDollsovo.base64EncodedString(), satinPinboardDollvani.satinStitchmapDollzemi)
                cozyArchiveDollniva[satinStitchmapDollzemi]?.satinCoatDollbop = true
                try tinySnapshotDollhumi()
                await satinCollarDollrilo.finish()
                pearlCatalogDollnoro(satinPinboardDollvani.ribbonSnapshotDollyara, satinPinboardDollvani.satinStitchmapDollzemi,
                                    satinPinboardDollvani.pearlGuideDollukp, true, "verified", "Purchase confirmed.")
                return true
            } catch {
                pearlCatalogDollnoro(satinPinboardDollvani.ribbonSnapshotDollyara, satinPinboardDollvani.satinStitchmapDollzemi,
                                    satinPinboardDollvani.pearlGuideDollukp, false, "pending", DolluLaceBonnetDollzora.satinCollectionDollvelo.localizedDescription)
                return false
            }
        }
        velvetPinboardDollpoxa[satinCollarDollrilo.id] = (tinyDisplayDollsovo, velvetPoseDollsero)
        _ = await velvetPoseDollsero.value
        if velvetPinboardDollpoxa[satinCollarDollrilo.id]?.0 == tinyDisplayDollsovo {
            velvetPinboardDollpoxa[satinCollarDollrilo.id] = nil
        }
        return true
    }

    private func tinySnapshotDollhumi() throws {
        UserDefaults.standard.set(try JSONEncoder().encode(cozyArchiveDollniva), forKey: cozyMemoDolllaro)
    }

    private func pearlCatalogDollnoro(_ ribbonSnapshotDollyara: String, _ satinStitchmapDollzemi: String, _ pearlGuideDollukp: String,
                                    _ satinCoatDollbop: Bool, _ tinyCoverDollmexa: String, _ tinyCapeDollpoxa: String) {
        ribbonDisplayDollrevo?(ribbonSnapshotDollyara, [
            DolluCozyWardrobeDollukp.ribbonCategoryDollpiri: DolluCozyWardrobeDollukp.pearlCatalogDollnoro,
            "callbackResult": satinStitchmapDollzemi, "productId": pearlGuideDollukp,
            "success": satinCoatDollbop, "status": tinyCoverDollmexa, "message": tinyCapeDollpoxa
        ])
    }
}
