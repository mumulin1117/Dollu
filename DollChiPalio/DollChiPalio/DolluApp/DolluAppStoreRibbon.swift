import StoreKit
import UIKit

final class DolluAppStoreRibbon: NSObject {
    static let satinCollectionDollvelo = DolluAppStoreRibbon()

    var paintedCoatDollkora: String?
    private var paintedCollarDollzora: ((Result<Void, Error>) -> Void)?
    private var paintedStitchmapDollmora: SKProductsRequest?

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
                braidedSkirtDollvelo(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: DolluAppRibbonLexicon.pastelTrimsheetDollvelo])))
            }
            return
        }

        paintedCollarDollzora = braidedSkirtDollvelo
        paintedStitchmapDollmora?.cancel()
        let braidedStripeDollpavo = SKProductsRequest(productIdentifiers: [paintedPoseDollmexa])
        braidedStripeDollpavo.delegate = self
        paintedStitchmapDollmora = braidedStripeDollpavo
        braidedStripeDollpavo.start()
    }

    func braidedCatalogDollrilo() -> Data? {
        guard let braidedOutfitDollbop = Bundle.main.appStoreReceiptURL else { return nil }
        return try? Data(contentsOf: braidedOutfitDollbop)
    }
}

extension DolluAppStoreRibbon: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let braidedEnsembleDollzemi = response.products.first else {
            DispatchQueue.main.async {
                self.paintedCollarDollzora?(.failure(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: DolluAppRibbonLexicon.ribbonSnapshotDollyara])))
                self.paintedCollarDollzora = nil
            }
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: braidedEnsembleDollzemi))
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.paintedCollarDollzora?(.failure(error))
            self.paintedCollarDollzora = nil
        }
    }
}

extension DolluAppStoreRibbon: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for wovenCapeDollukp in transactions {
            switch wovenCapeDollukp.transactionState {
            case .purchased:
                paintedCoatDollkora = wovenCapeDollukp.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(wovenCapeDollukp)
                DispatchQueue.main.async {
                    self.paintedCollarDollzora?(.success(()))
                    self.paintedCollarDollzora = nil
                }
            case .failed:
                SKPaymentQueue.default().finishTransaction(wovenCapeDollukp)
                let wovenSleeveDollniva: Error
                if (wovenCapeDollukp.error as? SKError)?.code == .paymentCancelled {
                    wovenSleeveDollniva = NSError(domain: "", code: -999, userInfo: [NSLocalizedDescriptionKey: DolluAppRibbonLexicon.ribbonDisplayDollrevo])
                } else {
                    wovenSleeveDollniva = wovenCapeDollukp.error ?? NSError(domain: "", code: -3, userInfo: [NSLocalizedDescriptionKey: DolluAppRibbonLexicon.ribbonCategoryDollpiri])
                }
                DispatchQueue.main.async {
                    self.paintedCollarDollzora?(.failure(wovenSleeveDollniva))
                    self.paintedCollarDollzora = nil
                }
            case .restored:
                SKPaymentQueue.default().finishTransaction(wovenCapeDollukp)
            default:
                break
            }
        }
    }
}

