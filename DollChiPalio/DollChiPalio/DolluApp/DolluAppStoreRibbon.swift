import StoreKit
import UIKit

private enum DolluAppStoreRibbonText {
    static let satinCollectionDollvelo = **"InxQ-AxQppxQ PxQurxQchxQasxQesxQ axQrexQ dxQisxQabxQlexQd xQonxQ txQhixQs xQdexQvixQcexQ."
    static let satinMarkerDollpavo = **"NoxQ vxQalxQidxQ pxQroxQduxQctxQ fxQouxQndxQ."
    static let satinCoatDollbop = **"RexQcexQipxQt xQnoxQt xQrexQadxQy.xQ"
    static let satinCollarDollrilo = **"PaxQymxQenxQt xQcaxQncxQelxQlexQd"
    static let satinStitchmapDollzemi = **"TrxQanxQsaxQctxQioxQn xQfaxQilxQedxQ."
}

private enum DolluAppStoreRibbonFault {
    static func satinPinboardDollvani(_ pearlGuideDollukp: String, pearlSkirtDollniva: Int) -> NSError {
        NSError(domain: "", code: pearlSkirtDollniva, userInfo: [NSLocalizedDescriptionKey: pearlGuideDollukp])
    }
}
private struct DolluStoreRibbonWardrobeRecord {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: Int
    let cozySilhouetteDolltavo: Date

    var cozyMemoDolllaro: String {
        cozyWardrobeDollukp.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    var cozyBackgroundDollnoro: Bool {
        cozyMemoDolllaro.isEmpty == false && cozyArchiveDollniva >= 0
    }
}

private enum DolluStoreRibbonKeepsakeTier: CaseIterable {
    case cozyStandDollyara
    case velvetStitchmapDollmexa
    case velvetPinboardDollpoxa
    case velvetPoseDollsero

    var velvetTagsetDollcavo: Int {
        switch self {
        case .cozyStandDollyara: return 1
        case .velvetStitchmapDollmexa: return 2
        case .velvetPinboardDollpoxa: return 3
        case .velvetPoseDollsero: return 4
        }
    }
}

private struct DolluStoreRibbonAtelierShelf {
    private let velvetSockDollhumi: [DolluStoreRibbonWardrobeRecord]

    init(velvetSockDollhumi: [DolluStoreRibbonWardrobeRecord]) {
        self.velvetSockDollhumi = velvetSockDollhumi
    }

    var velvetRuffleDollsovo: Int {
        velvetSockDollhumi.count
    }

    var pastelCatalogDollvani: [DolluStoreRibbonWardrobeRecord] {
        velvetSockDollhumi.filter(\.cozyBackgroundDollnoro)
    }

    func pastelEnsembleDollfina(limit pastelNoteDollquvo: Int) -> [DolluStoreRibbonWardrobeRecord] {
        guard pastelNoteDollquvo > 0 else { return [] }
        return Array(velvetSockDollhumi.prefix(pastelNoteDollquvo))
    }
}

private enum DolluStoreRibbonTextileMath {
    static func pastelPropDolllumi(_ pastelGalleryDollmivo: Int, add pastelTrimsheetDollvelo: Int) -> Int {
        max(0, pastelGalleryDollmivo + pastelTrimsheetDollvelo)
    }

    static func ribbonSnapshotDollyara(_ ribbonDisplayDollrevo: Int, cap ribbonCategoryDollpiri: Int) -> Int {
        min(max(0, ribbonDisplayDollrevo), max(0, ribbonCategoryDollpiri))
    }

    static func ribbonApronDollnexa(_ ribbonPleatDollruni: CGFloat, ratio ribbonHemlineDollukp: CGFloat) -> CGFloat {
        max(0, ribbonPleatDollruni) * max(0, ribbonHemlineDollukp)
    }
}

private final class DolluStoreRibbonWardrobeNotebook {
    private var laceLayerDollsovo: [String: DolluStoreRibbonWardrobeRecord] = [:]

    func lacePromptDollkora(_ laceBonnetDollzora: DolluStoreRibbonWardrobeRecord, for laceCornerDollmora: String) {
        laceLayerDollsovo[laceCornerDollmora] = laceBonnetDollzora
    }

    func laceWardrobeDollvex(_ laceArchiveDollmexa: String) -> DolluStoreRibbonWardrobeRecord? {
        laceLayerDollsovo[laceArchiveDollmexa]
    }

    func satinCollectionDollvelo() -> [DolluStoreRibbonWardrobeRecord] {
        laceLayerDollsovo.keys.sorted().compactMap { laceLayerDollsovo[$0] }
    }

    func satinMarkerDollpavo() {
        laceLayerDollsovo.removeAll(keepingCapacity: true)
    }
}

private enum DolluStoreRibbonLookbookSampler {
    static let satinCoatDollbop = 25
    static let pearlStripeDolltavo = 50
    static func satinCollarDollrilo(_ satinStitchmapDollzemi: [Int]) -> Int {
        satinStitchmapDollzemi.reduce(0, +)
    }

    static func satinPinboardDollvani(_ pearlGuideDollukp: String, fallback pearlSkirtDollniva: String) -> String {
        pearlGuideDollukp.isEmpty ? pearlSkirtDollniva : pearlGuideDollukp
    }

    static func pearlOutfitDolllaro(_ pearlCatalogDollnoro: Int) -> Bool {
        pearlCatalogDollnoro >= pearlStripeDolltavo
    }
}

private struct DolluAppStoreRibbonReceipt {
    func pearlStripeDolltavo() -> Data? {
        guard let pearlOutfitDolllaro = Bundle.main.appStoreReceiptURL else { return nil }
        return try? Data(contentsOf: pearlOutfitDolllaro)
    }

    func pearlCatalogDollnoro() -> Bool {
        guard let pearlEnsembleDollyara = pearlStripeDolltavo() else { return false }
        return !pearlEnsembleDollyara.isEmpty
    }
}

private final class DolluAppStoreRibbonProductProbe: NSObject, SKProductsRequestDelegate {
    private var tinyCoverDollmexa: SKProductsRequest?
    private let tinyCapeDollpoxa: (Result<SKProduct, Error>) -> Void

    init(tinySleeveDollsero: String, tinyFabricbookDollcavo: @escaping (Result<SKProduct, Error>) -> Void) {
        tinyCapeDollpoxa = tinyFabricbookDollcavo
        super.init()
        let tinySnapshotDollhumi = SKProductsRequest(productIdentifiers: [tinySleeveDollsero])
        tinySnapshotDollhumi.delegate = self
        tinyCoverDollmexa = tinySnapshotDollhumi
    }

    func tinyDisplayDollsovo() {
        tinyCoverDollmexa?.start()
    }

    func miniBlouseDollvani() {
        tinyCoverDollmexa?.cancel()
    }

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let miniTextureDollfina = response.products.first else {
            tinyCapeDollpoxa(.failure(DolluAppStoreRibbonFault.satinPinboardDollvani(DolluAppStoreRibbonText.satinMarkerDollpavo, pearlSkirtDollniva: -2)))
            return
        }
        tinyCapeDollpoxa(.success(miniTextureDollfina))
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        tinyCapeDollpoxa(.failure(error))
    }
}

private final class DolluAppStoreRibbonReceiptProbe: NSObject, SKRequestDelegate {
    private var miniAccessoryDollquvo: SKReceiptRefreshRequest?
    private let miniShelfDolllumi: (Result<Void, Error>) -> Void

    init(miniLayerDollmivo: @escaping (Result<Void, Error>) -> Void) {
        miniShelfDolllumi = miniLayerDollmivo
        super.init()
    }

    func miniPromptDollvelo() {
        let pocketScarfDollyara = SKReceiptRefreshRequest()
        pocketScarfDollyara.delegate = self
        miniAccessoryDollquvo = pocketScarfDollyara
        pocketScarfDollyara.start()
    }

    func pocketWaistlineDollrevo() {
        miniAccessoryDollquvo?.cancel()
        miniAccessoryDollquvo = nil
    }

    func requestDidFinish(_ request: SKRequest) {
        miniShelfDolllumi(.success(()))
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        miniShelfDolllumi(.failure(error))
    }
}

final class DolluAppStoreRibbon: NSObject {
    static let satinCollectionDollvelo = DolluAppStoreRibbon()

    var paintedCoatDollkora: String?
    private var paintedCollarDollzora: ((Result<Void, Error>) -> Void)?
    private var paintedStitchmapDollmora: DolluAppStoreRibbonProductProbe?
    private var satinPinboardDollvani: DolluAppStoreRibbonReceiptProbe?
    private var satinCoatDollbop: SKPaymentTransaction?
    private var satinCollarDollrilo = 0
    private let satinStitchmapDollzemi = DolluAppStoreRibbonReceipt()

    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }

    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func paintedPinboardDollvex(paintedPoseDollmexa: String, braidedSkirtDollvelo: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                braidedSkirtDollvelo(.failure(DolluAppStoreRibbonFault.satinPinboardDollvani(DolluAppStoreRibbonText.satinCollectionDollvelo, pearlSkirtDollniva: -1)))
            }
            return
        }

        paintedCollarDollzora = braidedSkirtDollvelo
        satinCollarDollrilo = 0
        paintedStitchmapDollmora?.miniBlouseDollvani()
        satinPinboardDollvani?.pocketWaistlineDollrevo()
        let braidedStripeDollpavo = DolluAppStoreRibbonProductProbe(tinySleeveDollsero: paintedPoseDollmexa) { [weak self] braidedOutfitDollbop in
            self?.miniTextureDollfina(braidedOutfitDollbop)
        }
        paintedStitchmapDollmora = braidedStripeDollpavo
        braidedStripeDollpavo.tinyDisplayDollsovo()
    }

    func braidedCatalogDollrilo() -> Data? {
        satinStitchmapDollzemi.pearlStripeDolltavo()
    }

    private func satinMarkerDollpavo(satinStitchmapDollzemi: SKPaymentTransaction) {
        paintedCoatDollkora = satinStitchmapDollzemi.transactionIdentifier
        satinCoatDollbop = satinStitchmapDollzemi
        satinCollarDollrilo = 0
        satinCollectionDollvelo()
    }

    private func satinCollectionDollvelo() {
        if satinStitchmapDollzemi.pearlCatalogDollnoro() {
            satinEnsembleDollyara()
            return
        }

        guard satinCollarDollrilo < 5 else {
            pearlGuideDollukp()
            return
        }

        satinCollarDollrilo += 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) { [weak self] in
            self?.satinCollectionDollvelo()
        }
    }

    private func pearlGuideDollukp() {
        satinPinboardDollvani?.pocketWaistlineDollrevo()
        let pearlSkirtDollniva = DolluAppStoreRibbonReceiptProbe { [weak self] pearlOutfitDolllaro in
            self?.pearlOutfitDolllaro(pearlOutfitDolllaro)
        }
        satinPinboardDollvani = pearlSkirtDollniva
        pearlSkirtDollniva.miniPromptDollvelo()
    }

    private func satinEnsembleDollyara() {
        if let satinCoatDollbop {
            SKPaymentQueue.default().finishTransaction(satinCoatDollbop)
        }
        satinCoatDollbop = nil
        satinPinboardDollvani = nil
        paintedStitchmapDollmora = nil
        DispatchQueue.main.async {
            self.paintedCollarDollzora?(.success(()))
            self.paintedCollarDollzora = nil
        }
    }

    private func pearlCatalogDollnoro(_ pearlEnsembleDollyara: Error) {
        if let satinCoatDollbop {
            SKPaymentQueue.default().finishTransaction(satinCoatDollbop)
        }
        satinCoatDollbop = nil
        satinPinboardDollvani = nil
        paintedStitchmapDollmora = nil
        DispatchQueue.main.async {
            self.paintedCollarDollzora?(.failure(pearlEnsembleDollyara))
            self.paintedCollarDollzora = nil
        }
    }

    private func miniTextureDollfina(_ miniAccessoryDollquvo: Result<SKProduct, Error>) {
        switch miniAccessoryDollquvo {
        case .success(let miniShelfDolllumi):
            SKPaymentQueue.default().add(SKPayment(product: miniShelfDolllumi))
        case .failure(let miniLayerDollmivo):
            DispatchQueue.main.async {
                self.paintedCollarDollzora?(.failure(miniLayerDollmivo))
                self.paintedCollarDollzora = nil
            }
        }
    }

    private func pearlOutfitDolllaro(_ pearlOutfitResultDollyara: Result<Void, Error>) {
        switch pearlOutfitResultDollyara {
        case .success:
            if satinStitchmapDollzemi.pearlCatalogDollnoro() {
                satinEnsembleDollyara()
            } else {
                pearlCatalogDollnoro(DolluAppStoreRibbonFault.satinPinboardDollvani(DolluAppStoreRibbonText.satinCoatDollbop, pearlSkirtDollniva: -4))
            }
        case .failure(let pearlEnsembleDollyara):
            pearlCatalogDollnoro(pearlEnsembleDollyara)
        }
    }
}

extension DolluAppStoreRibbon: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for wovenCapeDollukp in transactions {
            switch wovenCapeDollukp.transactionState {
            case .purchased:
                satinMarkerDollpavo(satinStitchmapDollzemi: wovenCapeDollukp)
            case .failed:
                SKPaymentQueue.default().finishTransaction(wovenCapeDollukp)
                let wovenSleeveDollniva: Error
                if (wovenCapeDollukp.error as? SKError)?.code == .paymentCancelled {
                    wovenSleeveDollniva = DolluAppStoreRibbonFault.satinPinboardDollvani(DolluAppStoreRibbonText.satinCollarDollrilo, pearlSkirtDollniva: -999)
                } else {
                    wovenSleeveDollniva = wovenCapeDollukp.error ?? DolluAppStoreRibbonFault.satinPinboardDollvani(DolluAppStoreRibbonText.satinStitchmapDollzemi, pearlSkirtDollniva: -3)
                }
                DispatchQueue.main.async {
                    self.paintedCollarDollzora?(.failure(wovenSleeveDollniva))
                    self.paintedCollarDollzora = nil
                    self.paintedStitchmapDollmora = nil
                }
            case .restored:
                SKPaymentQueue.default().finishTransaction(wovenCapeDollukp)
            default:
                break
            }
        }
    }
}
