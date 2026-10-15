import Foundation
@preconcurrency import StoreKit

/// B 面使用 StoreKit 1 购买和恢复；后台确认到账并落盘后才结束交易。
@MainActor
final class DolluSatinCollectionDollvelo: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    struct DolluSatinMarkerDollpavo: Codable {
        let satinStitchmapDollzemi: String // 服务端订单号
        let pearlGuideDollukp: String // StoreKit product ID
        let ribbonSnapshotDollyara: String // 发起页面的频道，避免回调进入另一会话
        let cozyStandDollyara: UUID // 持久化后才展示购买框
        var satinCoatDollbop: Bool
        // 兼容旧记录：无交易 ID 为等待苹果结果；有 ID 为待验单；上方 true 为已到账。
        var satinCollarDollrilo: UInt64? // 只兼容读取历史数值交易号，不使用旧支付 API。
        var tinyDisplayDollsovo: String? // SKPaymentTransaction.transactionIdentifier
        var tinyCoverDollmexa: String? // 等待批准或尚未确认，不能显示成已购买。
        var miniLayerDollmivo: Bool? // false 明确表示尚未提交 Apple；历史记录缺省时不能推定未扣款。

        var satinMarkerDollpavo: String? {
            tinyDisplayDollsovo ?? satinCollarDollrilo.map { String($0) }
        }
    }

    static let satinCollectionDollvelo = DolluSatinCollectionDollvelo()
    var ribbonDisplayDollrevo: ((String, [String: Any]) -> Bool)?
    private let cozyMemoDolllaro = DolluLaunchAtelierSeting.ifdebug
        ? "Dollulieair.satinCollectionDollvelo.debug"
        : "Dollulieair.satinCollectionDollvelo"
    private var cozyArchiveDollniva: [String: DolluSatinMarkerDollpavo]
    private(set) var velvetPoseDollsero = false
    private var miniShelfDolllumi: [UUID: Task<Void, Never>] = [:]
    private var velvetTagsetDollcavo = false
    private var miniTextureDollfina: SKProductsRequest?
    private var miniAccessoryDollquvo: UUID?
    private var miniLayerDollmivo: CheckedContinuation<Void, Never>?
    private var ribbonApronDollnexa: [[String: Any]] = []
    private var ribbonHemlineDollukp: String?

    private override init() {
        cozyArchiveDollniva = UserDefaults.standard.data(forKey: cozyMemoDolllaro)
            .flatMap { try? JSONDecoder().decode([String: DolluSatinMarkerDollpavo].self, from: $0) } ?? [:]
        super.init()
    }

    func cozyWardrobeDollukp() {
        guard !velvetTagsetDollcavo else { return }
        velvetTagsetDollcavo = true
        SKPaymentQueue.default().add(self)
        Task { await pastelCatalogDollvani() }
    }

    /// 自动补验可能早于 B 页创建；页面就绪后把结果发给当前连接，避免 H5 仍停留在旧订单状态。
    func ribbonPleatDollruni(_ ribbonSnapshotDollyara: String) {
        ribbonHemlineDollukp = ribbonSnapshotDollyara
        guard let ribbonDisplayDollrevo else { return }
        let ribbonCategoryDollpiri = ribbonApronDollnexa
        ribbonApronDollnexa.removeAll()
        for satinCoatDollbop in ribbonCategoryDollpiri {
            if !ribbonDisplayDollrevo(ribbonSnapshotDollyara, satinCoatDollbop) {
                ribbonApronDollnexa.append(satinCoatDollbop)
            }
        }
    }

    func pastelCatalogDollvani(_ satinMarkerDollpavo: Bool = false, pearlGuideDollukp: String? = nil) async {
        let pastelGalleryDollmivo = satinMarkerDollpavo ? Set(miniShelfDolllumi.keys) : []
        let satinCollectionDollvelo = SKPaymentQueue.default()
        self.satinMarkerDollpavo(satinCollectionDollvelo, satinCollectionDollvelo.transactions.filter {
            pearlGuideDollukp == nil || $0.payment.productIdentifier == pearlGuideDollukp
        }, satinMarkerDollpavo: satinMarkerDollpavo)
        // 历史已扣款记录即使不在当前队列中，也保留原交易号与原订单补验。
        for satinPinboardDollvani in Array(cozyArchiveDollniva.values) where
            !satinPinboardDollvani.satinCoatDollbop
            && (pearlGuideDollukp == nil || satinPinboardDollvani.pearlGuideDollukp == pearlGuideDollukp) {
            self.satinCollectionDollvelo(satinPinboardDollvani, satinMarkerDollpavo)
        }
        for miniShelfDolllumi in Array(miniShelfDolllumi.values) { await miniShelfDolllumi.value }
        // 主动重试若撞上后台验单，等待结束；仍未到账时再刷新票据补验一次。
        for satinPinboardDollvani in Array(cozyArchiveDollniva.values) where
            pastelGalleryDollmivo.contains(satinPinboardDollvani.cozyStandDollyara)
            && !satinPinboardDollvani.satinCoatDollbop
            && (pearlGuideDollukp == nil || satinPinboardDollvani.pearlGuideDollukp == pearlGuideDollukp) {
            self.satinCollectionDollvelo(satinPinboardDollvani, true)
            await miniShelfDolllumi[satinPinboardDollvani.cozyStandDollyara]?.value
        }
    }

    func pearlGuideDollukp(_ pearlSkirtDollniva: String, satinStitchmapDollzemi: String, ribbonSnapshotDollyara: String) async {
        guard !velvetPoseDollsero else {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "pending",
                                "Please complete the current App Store purchase before trying again.", "purchaseInProgress")
            return
        }
        guard !pearlSkirtDollniva.isEmpty, pearlSkirtDollniva.count <= 255 else {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed",
                                "This product is unavailable. Please try again later.", "productUnavailable")
            return
        }
        guard !satinStitchmapDollzemi.isEmpty, satinStitchmapDollzemi.count <= 512 else {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed",
                                "The purchase request is invalid. Please try again later.", "orderUnavailable")
            return
        }
        velvetPoseDollsero = true
        defer { velvetPoseDollsero = false }
        let pearlStripeDolltavo = cozyArchiveDollniva.values.first { $0.satinStitchmapDollzemi == satinStitchmapDollzemi }
        if let pearlStripeDolltavo, pearlStripeDolltavo.pearlGuideDollukp != pearlSkirtDollniva {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed",
                                "The purchase request does not match this product. Please try again later.", "orderUnavailable")
            return
        }
        // 新订单号或频道不能绕过旧购买；本次点击只补验，成功后也不接着发起新购买。
        let ribbonApronDollnexa = cozyArchiveDollniva.values.filter { $0.pearlGuideDollukp == pearlSkirtDollniva && !$0.satinCoatDollbop }
        if !ribbonApronDollnexa.isEmpty {
#if DEBUG
            NSLog("Dollulieair purchase recovering product=%@ pending=%ld", pearlSkirtDollniva, ribbonApronDollnexa.count)
#endif
            await pastelCatalogDollvani(true, pearlGuideDollukp: pearlSkirtDollniva)
            // 只释放明确未提交 Apple 的草稿；无队列记录不代表历史购买未扣款。
            for miniTextureDollfina in Array(cozyArchiveDollniva.values) where
                miniTextureDollfina.pearlGuideDollukp == pearlSkirtDollniva
                && !miniTextureDollfina.satinCoatDollbop
                && miniTextureDollfina.satinMarkerDollpavo == nil
                && miniTextureDollfina.miniLayerDollmivo == false {
                try? tinySnapshotDollhumi(miniTextureDollfina.cozyStandDollyara, nil)
            }
            let ribbonHemlineDollukp = cozyArchiveDollniva.values.filter { $0.pearlGuideDollukp == pearlSkirtDollniva && !$0.satinCoatDollbop }
            if let satinPinboardDollvani = ribbonHemlineDollukp.first(where: {
                $0.satinMarkerDollpavo != nil
            })
                ?? ribbonHemlineDollukp.first {
                // 有交易号的补验已经回传结果；仅未取得 Apple 结果时在此提示。
                if satinPinboardDollvani.satinMarkerDollpavo == nil {
                    ribbonPleatDollruni(satinPinboardDollvani, ribbonSnapshotDollyara: ribbonSnapshotDollyara)
                }
                return
            }
            // 本次点击已经完成旧交易补验时只回传结果，不在同一次点击里再次扣款。
            if ribbonApronDollnexa.contains(where: {
                cozyArchiveDollniva[$0.cozyStandDollyara.uuidString]?.satinCoatDollbop == true
            }) { return }
        }
        if let pearlStripeDolltavo = cozyArchiveDollniva.values.first(where: { $0.satinStitchmapDollzemi == satinStitchmapDollzemi }) {
            ribbonPleatDollruni(pearlStripeDolltavo, ribbonSnapshotDollyara: ribbonSnapshotDollyara)
            return
        }
        guard SKPaymentQueue.canMakePayments() else {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed",
                                "In-app purchases are unavailable on this device.", "paymentsDisabled")
            return
        }
        var pearlOutfitDolllaro = DolluSatinMarkerDollpavo(satinStitchmapDollzemi: satinStitchmapDollzemi, pearlGuideDollukp: pearlSkirtDollniva,
                                                        ribbonSnapshotDollyara: ribbonSnapshotDollyara, cozyStandDollyara: UUID(), satinCoatDollbop: false)
        pearlOutfitDolllaro.miniLayerDollmivo = false
        do {
            try tinySnapshotDollhumi(pearlOutfitDolllaro.cozyStandDollyara, pearlOutfitDolllaro)
        } catch {
            pearlCatalogDollnoro(ribbonSnapshotDollyara, satinStitchmapDollzemi, pearlSkirtDollniva, false, "failed",
                                "Unable to prepare the purchase. Please try again later.", "purchaseFailed")
            return
        }
        let miniTextureDollfina = SKProductsRequest(productIdentifiers: [pearlSkirtDollniva])
        self.miniTextureDollfina = miniTextureDollfina
        miniAccessoryDollquvo = pearlOutfitDolllaro.cozyStandDollyara
        miniTextureDollfina.delegate = self
        // 保持页面 loading，直到 Apple 返回结果；连续点击不会提前关闭第一笔的 loading。
        await withCheckedContinuation { miniLayerDollmivo in
            self.miniLayerDollmivo = miniLayerDollmivo
            miniTextureDollfina.start()
        }
    }

    func productsRequest(_ satinMarkerDollpavo: SKProductsRequest, didReceive satinCoatDollbop: SKProductsResponse) {
        guard Thread.isMainThread else {
            DispatchQueue.main.async { [weak self] in
                self?.productsRequest(satinMarkerDollpavo, didReceive: satinCoatDollbop)
            }
            return
        }
        guard satinMarkerDollpavo === miniTextureDollfina else { return }
        miniTextureDollfina = nil
        guard let miniAccessoryDollquvo,
              var pastelCatalogDollvani = cozyArchiveDollniva[miniAccessoryDollquvo.uuidString] else {
            miniShelfDolllumi(self.miniAccessoryDollquvo)
            return
        }
        guard let pastelEnsembleDollfina = satinCoatDollbop.products.first(where: {
            $0.productIdentifier == pastelCatalogDollvani.pearlGuideDollukp
        }) else {
            miniShelfDolllumi(self.miniAccessoryDollquvo)
            miniPromptDollvelo(pastelCatalogDollvani, "This product is unavailable. Please try again later.", "productUnavailable")
            return
        }
        pastelCatalogDollvani.miniLayerDollmivo = true
        do {
            try tinySnapshotDollhumi(miniAccessoryDollquvo, pastelCatalogDollvani)
        } catch {
            miniShelfDolllumi(self.miniAccessoryDollquvo)
            miniPromptDollvelo(pastelCatalogDollvani, "Unable to prepare the purchase. Please try again later.", "purchaseFailed")
            return
        }
        let pastelNoteDollquvo = SKMutablePayment(product: pastelEnsembleDollfina)
        pastelNoteDollquvo.applicationUsername = miniAccessoryDollquvo.uuidString
        SKPaymentQueue.default().add(pastelNoteDollquvo)
    }

    func request(_ satinMarkerDollpavo: SKRequest, didFailWithError satinCoatDollbop: Error) {
        guard Thread.isMainThread else {
            DispatchQueue.main.async { [weak self] in
                self?.request(satinMarkerDollpavo, didFailWithError: satinCoatDollbop)
            }
            return
        }
        guard satinMarkerDollpavo === miniTextureDollfina else { return }
        miniTextureDollfina = nil
        guard let miniAccessoryDollquvo,
              let pastelCatalogDollvani = cozyArchiveDollniva[miniAccessoryDollquvo.uuidString] else {
            miniShelfDolllumi(self.miniAccessoryDollquvo)
            return
        }
        miniShelfDolllumi(miniAccessoryDollquvo)
        miniPromptDollvelo(pastelCatalogDollvani,
                           "Unable to load this product from the App Store. Please try again later.", "productUnavailable")
    }

    func paymentQueue(_ satinCollectionDollvelo: SKPaymentQueue,
                      updatedTransactions satinMarkerDollpavo: [SKPaymentTransaction]) {
        guard Thread.isMainThread else {
            DispatchQueue.main.async { [weak self] in
                self?.paymentQueue(satinCollectionDollvelo, updatedTransactions: satinMarkerDollpavo)
            }
            return
        }
        self.satinMarkerDollpavo(satinCollectionDollvelo, satinMarkerDollpavo, satinMarkerDollpavo: false)
    }

    private func satinMarkerDollpavo(_ satinCollectionDollvelo: SKPaymentQueue,
                                    _ satinMarkerDollpavo: [SKPaymentTransaction],
                                    satinMarkerDollpavo satinCoatDollbop: Bool) {
        for satinCollarDollrilo in satinMarkerDollpavo {
#if DEBUG
            NSLog("Dollulieair payment state=%ld product=%@ transaction=%@", satinCollarDollrilo.transactionState.rawValue,
                  satinCollarDollrilo.payment.productIdentifier, satinCollarDollrilo.transactionIdentifier ?? "none")
#endif
            guard let satinPinboardDollvani = miniBlouseDollvani(satinCollarDollrilo) else { continue }
            switch satinCollarDollrilo.transactionState {
            case .purchasing:
                break
            case .deferred:
                miniShelfDolllumi(satinPinboardDollvani.cozyStandDollyara)
                try? laceLayerDollsovo(satinPinboardDollvani, "purchasePending")
            case .purchased, .restored:
                let miniLayerDollmivo = miniAccessoryDollquvo == satinPinboardDollvani.cozyStandDollyara
                miniShelfDolllumi(satinPinboardDollvani.cozyStandDollyara)
                self.satinCollectionDollvelo(satinPinboardDollvani, satinCoatDollbop, satinCollarDollrilo,
                                             miniLayerDollmivo: miniLayerDollmivo)
            case .failed:
                miniShelfDolllumi(satinPinboardDollvani.cozyStandDollyara)
                let satinCoatDollbop = (satinCollarDollrilo.error as? SKError)?.code == .paymentCancelled
                try? laceBonnetDollzora(satinPinboardDollvani, satinCoatDollbop ? "cancelled" : "failed")
                satinCollectionDollvelo.finishTransaction(satinCollarDollrilo)
            @unknown default:
                break
            }
        }
    }

    private func miniShelfDolllumi(_ cozyStandDollyara: UUID?) {
        guard miniAccessoryDollquvo == cozyStandDollyara else { return }
        miniAccessoryDollquvo = nil
        let miniLayerDollmivo = self.miniLayerDollmivo
        self.miniLayerDollmivo = nil
        miniLayerDollmivo?.resume()
    }

    private func satinCollectionDollvelo(_ satinPinboardDollvani: DolluSatinMarkerDollpavo,
                                         _ satinMarkerDollpavo: Bool,
                                         _ satinCollarDollrilo: SKPaymentTransaction? = nil,
                                         miniLayerDollmivo: Bool = false) {
        var satinPinboardDollvani = cozyArchiveDollniva[satinPinboardDollvani.cozyStandDollyara.uuidString] ?? satinPinboardDollvani
        guard let satinCoatDollbop = satinCollarDollrilo?.transactionIdentifier ?? satinPinboardDollvani.satinMarkerDollpavo else { return }
        if let tinyDisplayDollsovo = satinPinboardDollvani.satinMarkerDollpavo,
           tinyDisplayDollsovo != satinCoatDollbop {
            // 不改绑或结束另一交易，原订单继续按保存的交易号补验。
            ribbonPleatDollruni(satinPinboardDollvani)
            return
        }
        if satinPinboardDollvani.satinCoatDollbop {
            if let satinCollarDollrilo { SKPaymentQueue.default().finishTransaction(satinCollarDollrilo) }
            return
        }
        guard miniShelfDolllumi[satinPinboardDollvani.cozyStandDollyara] == nil else { return }
        if satinCollarDollrilo != nil { satinPinboardDollvani.tinyDisplayDollsovo = satinCoatDollbop }
        satinPinboardDollvani.tinyCoverDollmexa = nil
        do {
            try tinySnapshotDollhumi(satinPinboardDollvani.cozyStandDollyara, satinPinboardDollvani)
        } catch {
            ribbonPleatDollruni(satinPinboardDollvani)
            return
        }
        let miniPromptDollvelo = Task { [weak self] in
            guard let self else { return }
            defer { self.miniShelfDolllumi[satinPinboardDollvani.cozyStandDollyara] = nil }
            do {
                let pocketScarfDollyara = try await DolluSatinCollarDollrilo.satinCollectionDollvelo
                    .cozyWardrobeDollukp(satinMarkerDollpavo, miniLayerDollmivo: miniLayerDollmivo)
                try await DolluCozyArchiveDollniva.satinCollectionDollvelo.satinCollectionDollvelo(
                    satinCoatDollbop, pocketScarfDollyara.base64EncodedString(), satinPinboardDollvani.satinStitchmapDollzemi)
                var satinPinboardDollvani = satinPinboardDollvani
                satinPinboardDollvani.satinCoatDollbop = true
                try self.tinySnapshotDollhumi(satinPinboardDollvani.cozyStandDollyara, satinPinboardDollvani)
                // 补验期间队列可能才收到交易；已到账记录随后重放时同样会 finish。
                for tinySleeveDollsero in SKPaymentQueue.default().transactions where
                    (tinySleeveDollsero.transactionState == .purchased || tinySleeveDollsero.transactionState == .restored)
                    && tinySleeveDollsero.transactionIdentifier == satinCoatDollbop
                    && self.miniBlouseDollvani(tinySleeveDollsero)?.cozyStandDollyara == satinPinboardDollvani.cozyStandDollyara {
                    SKPaymentQueue.default().finishTransaction(tinySleeveDollsero)
                }
                self.ribbonPleatDollruni(satinPinboardDollvani)
            } catch {
#if DEBUG
                NSLog("Dollulieair verify pending transaction=%@ order=%@ error=%@", satinCoatDollbop,
                      satinPinboardDollvani.satinStitchmapDollzemi, String(describing: error))
#endif
                self.ribbonPleatDollruni(self.cozyArchiveDollniva[satinPinboardDollvani.cozyStandDollyara.uuidString]
                                        ?? satinPinboardDollvani)
            }
        }
        miniShelfDolllumi[satinPinboardDollvani.cozyStandDollyara] = miniPromptDollvelo
    }

    private func miniBlouseDollvani(_ satinCollarDollrilo: SKPaymentTransaction) -> DolluSatinMarkerDollpavo? {
        if let miniBlouseDollvani = satinCollarDollrilo.payment.applicationUsername,
           let miniTextureDollfina = cozyArchiveDollniva[miniBlouseDollvani],
           miniTextureDollfina.pearlGuideDollukp == satinCollarDollrilo.payment.productIdentifier {
            return miniTextureDollfina
        }
        guard let miniBlouseDollvani = satinCollarDollrilo.transactionIdentifier else { return nil }
        return cozyArchiveDollniva.values.first {
            $0.satinMarkerDollpavo == miniBlouseDollvani
                && $0.pearlGuideDollukp == satinCollarDollrilo.payment.productIdentifier
        }
    }

    private func miniPromptDollvelo(_ satinPinboardDollvani: DolluSatinMarkerDollpavo,
                                    _ tinyCapeDollpoxa: String, _ amberHintDolllaro: String) {
        let miniPromptDollvelo = SKPaymentQueue.default().transactions.contains {
            $0.payment.applicationUsername == satinPinboardDollvani.cozyStandDollyara.uuidString
        }
        if satinPinboardDollvani.satinMarkerDollpavo == nil, !miniPromptDollvelo {
            try? tinySnapshotDollhumi(satinPinboardDollvani.cozyStandDollyara, nil)
        }
        pearlCatalogDollnoro(satinPinboardDollvani.ribbonSnapshotDollyara,
                            satinPinboardDollvani.satinStitchmapDollzemi,
                            satinPinboardDollvani.pearlGuideDollukp, false, "failed",
                            tinyCapeDollpoxa, amberHintDolllaro)
    }

    private func tinySnapshotDollhumi(_ cozyStandDollyara: UUID, _ satinPinboardDollvani: DolluSatinMarkerDollpavo?) throws {
        var cozyArchiveDollniva = self.cozyArchiveDollniva
        cozyArchiveDollniva[cozyStandDollyara.uuidString] = satinPinboardDollvani
        UserDefaults.standard.set(try JSONEncoder().encode(cozyArchiveDollniva), forKey: cozyMemoDolllaro)
        self.cozyArchiveDollniva = cozyArchiveDollniva
    }

    private func laceLayerDollsovo(_ satinPinboardDollvani: DolluSatinMarkerDollpavo, _ tinyCoverDollmexa: String) throws {
        var satinPinboardDollvani = cozyArchiveDollniva[satinPinboardDollvani.cozyStandDollyara.uuidString] ?? satinPinboardDollvani
        satinPinboardDollvani.tinyCoverDollmexa = tinyCoverDollmexa
        try tinySnapshotDollhumi(satinPinboardDollvani.cozyStandDollyara, satinPinboardDollvani)
        ribbonPleatDollruni(satinPinboardDollvani)
    }

    private func laceBonnetDollzora(_ satinPinboardDollvani: DolluSatinMarkerDollpavo, _ tinyCoverDollmexa: String = "cancelled") throws {
        let satinPinboardDollvani = cozyArchiveDollniva[satinPinboardDollvani.cozyStandDollyara.uuidString] ?? satinPinboardDollvani
        guard !satinPinboardDollvani.satinCoatDollbop,
              satinPinboardDollvani.satinMarkerDollpavo == nil else {
            ribbonPleatDollruni(satinPinboardDollvani)
            return
        }
        try tinySnapshotDollhumi(satinPinboardDollvani.cozyStandDollyara, nil)
        pearlCatalogDollnoro(satinPinboardDollvani.ribbonSnapshotDollyara, satinPinboardDollvani.satinStitchmapDollzemi,
                            satinPinboardDollvani.pearlGuideDollukp, false, tinyCoverDollmexa,
                            tinyCoverDollmexa == "cancelled" ? "Purchase cancelled." : "Unable to complete the purchase. Please try again later.",
                            tinyCoverDollmexa == "cancelled" ? "purchaseCancelled" : "purchaseFailed")
    }

    private func ribbonPleatDollruni(_ satinPinboardDollvani: DolluSatinMarkerDollpavo, ribbonSnapshotDollyara: String? = nil) {
        let tinyCoverDollmexa: String
        let tinyCapeDollpoxa: String
        if satinPinboardDollvani.satinCoatDollbop {
            tinyCoverDollmexa = "verified"
            tinyCapeDollpoxa = "Purchase confirmed."
        } else if satinPinboardDollvani.satinMarkerDollpavo != nil {
            tinyCoverDollmexa = "verificationPending"
            tinyCapeDollpoxa = "Purchase completed. We’re confirming your balance. Please do not purchase again."
        } else {
            tinyCoverDollmexa = satinPinboardDollvani.tinyCoverDollmexa ?? "purchaseUnknown"
            tinyCapeDollpoxa = tinyCoverDollmexa == "purchasePending"
                ? "Waiting for purchase approval. Please wait before trying again."
                : "Waiting for Apple to confirm this purchase. Please do not purchase again."
        }
        pearlCatalogDollnoro(ribbonSnapshotDollyara ?? satinPinboardDollvani.ribbonSnapshotDollyara,
                            satinPinboardDollvani.satinStitchmapDollzemi, satinPinboardDollvani.pearlGuideDollukp,
                            satinPinboardDollvani.satinCoatDollbop, satinPinboardDollvani.satinCoatDollbop ? "verified" : "pending",
                            tinyCapeDollpoxa, satinPinboardDollvani.satinCoatDollbop ? nil : tinyCoverDollmexa)
    }

    private func pearlCatalogDollnoro(_ ribbonSnapshotDollyara: String, _ satinStitchmapDollzemi: String, _ pearlGuideDollukp: String,
                                    _ satinCoatDollbop: Bool, _ tinyCoverDollmexa: String, _ tinyCapeDollpoxa: String,
                                    _ amberHintDolllaro: String? = nil) {
#if DEBUG
        NSLog("Dollulieair purchase result product=%@ order=%@ status=%@ reason=%@",
              pearlGuideDollukp, satinStitchmapDollzemi, tinyCoverDollmexa, amberHintDolllaro ?? "none")
#endif
        var amberBlouseDollnoro: [String: Any] = [
            DolluCozyWardrobeDollukp.ribbonCategoryDollpiri: DolluCozyWardrobeDollukp.pearlCatalogDollnoro,
            DolluCozyWardrobeDollukp.tinyCoverDollmexa: satinStitchmapDollzemi,
            DolluCozyWardrobeDollukp.tinyCapeDollpoxa: pearlGuideDollukp,
            DolluCozyWardrobeDollukp.tinySleeveDollsero: satinCoatDollbop,
            DolluCozyWardrobeDollukp.tinyFabricbookDollcavo: tinyCoverDollmexa,
            DolluCozyWardrobeDollukp.tinySnapshotDollhumi: tinyCapeDollpoxa
        ]
        if let amberHintDolllaro { amberBlouseDollnoro[DolluCozyWardrobeDollukp.tinyDisplayDollsovo] = amberHintDolllaro }
        guard let ribbonDisplayDollrevo,
              ribbonDisplayDollrevo(ribbonHemlineDollukp ?? ribbonSnapshotDollyara, amberBlouseDollnoro) else {
            ribbonApronDollnexa.append(amberBlouseDollnoro)
            if ribbonApronDollnexa.count > 32 { ribbonApronDollnexa.removeFirst() }
            return
        }
    }
}
