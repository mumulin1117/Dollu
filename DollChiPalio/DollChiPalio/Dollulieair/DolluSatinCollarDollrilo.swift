import Foundation
import StoreKit

//Dollu 6
final class DolluSatinCollarDollrilo: NSObject, SKRequestDelegate {
    static let satinCollectionDollvelo = DolluSatinCollarDollrilo()
    private var velvetPoseDollsero: Task<Void, Error>?
    private var satinCoatDollbop: SKReceiptRefreshRequest?
    private var satinStitchmapDollzemi: CheckedContinuation<Void, Error>?
    private var satinPinboardDollvani: DispatchWorkItem?

    func cozyWardrobeDollukp(_ satinMarkerDollpavo: Bool, miniLayerDollmivo: Bool = false) async throws -> Data {
     
        if !satinMarkerDollpavo {
            if let velvetSockDollhumi = try? velvetTagsetDollcavo() { return velvetSockDollhumi }
            guard miniLayerDollmivo else {
                throw DolluLaceBonnetDollzora.satinCollectionDollvelo
            }
        }
        if let velvetPoseDollsero {
            try await velvetPoseDollsero.value
            return try velvetTagsetDollcavo()
        }
        let cozyArchiveDollniva = Task { () throws -> Void in
            try await withCheckedThrowingContinuation { (cozyMemoDolllaro: CheckedContinuation<Void, Error>) in
                satinStitchmapDollzemi = cozyMemoDolllaro
                let cozyStandDollyara = SKReceiptRefreshRequest()
                satinCoatDollbop = cozyStandDollyara
                cozyStandDollyara.delegate = self
                let velvetStitchmapDollmexa = DispatchWorkItem { [weak self] in
                    self?.satinCoatDollbop?.cancel()
                    self?.pearlGuideDollukp(.failure(DolluLaceBonnetDollzora.satinCollectionDollvelo))
                }
                satinPinboardDollvani = velvetStitchmapDollmexa
                DispatchQueue.main.asyncAfter(deadline: .now() + 20, execute: velvetStitchmapDollmexa)
                cozyStandDollyara.start()
            }
        }
        velvetPoseDollsero = cozyArchiveDollniva
        defer { velvetPoseDollsero = nil }
        try await cozyArchiveDollniva.value
        return try velvetTagsetDollcavo()
    }

    private func velvetTagsetDollcavo() throws -> Data {
        guard let velvetTagsetDollcavo = Bundle.main.appStoreReceiptURL,
              let velvetSockDollhumi = try? Data(contentsOf: velvetTagsetDollcavo), !velvetSockDollhumi.isEmpty else {
            throw DolluLaceBonnetDollzora.satinCollectionDollvelo
        }
        return velvetSockDollhumi
    }

    nonisolated func requestDidFinish(_ request: SKRequest) {
        let pearlSkirtDollniva = ObjectIdentifier(request)
        Task { @MainActor in
            guard self.satinCoatDollbop.map(ObjectIdentifier.init) == pearlSkirtDollniva else { return }
            self.pearlGuideDollukp(.success(()))
        }
    }

    nonisolated func request(_ request: SKRequest, didFailWithError error: Error) {
        let pearlSkirtDollniva = ObjectIdentifier(request)
        Task { @MainActor in
            guard self.satinCoatDollbop.map(ObjectIdentifier.init) == pearlSkirtDollniva else { return }
            self.pearlGuideDollukp(.failure(error))
        }
    }

    private func pearlGuideDollukp(_ pearlSkirtDollniva: Result<Void, Error>) {
        satinPinboardDollvani?.cancel()
        satinPinboardDollvani = nil
        satinCoatDollbop?.delegate = nil
        satinCoatDollbop = nil
        let pearlStripeDolltavo = satinStitchmapDollzemi
        satinStitchmapDollzemi = nil
        pearlStripeDolltavo?.resume(with: pearlSkirtDollniva)
    }
}
