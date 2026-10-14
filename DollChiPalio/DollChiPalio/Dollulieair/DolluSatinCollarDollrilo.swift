import Foundation
import StoreKit

/// 购买仍使用 StoreKit 2。openV3 要求 app receipt，缺少时刷新 receipt，不能换成 JWS。
@MainActor
final class DolluSatinCollarDollrilo: NSObject, SKRequestDelegate {
    static let satinCollectionDollvelo = DolluSatinCollarDollrilo()
    private var velvetPoseDollsero: Task<Data, Error>?
    private var satinCoatDollbop: SKReceiptRefreshRequest?
    private var satinStitchmapDollzemi: CheckedContinuation<Void, Error>?
    private var satinPinboardDollvani: DispatchWorkItem?

    func cozyWardrobeDollukp(_ satinMarkerDollpavo: Bool) async throws -> Data {
        if let velvetPoseDollsero { return try await velvetPoseDollsero.value }
        // 后台恢复只读取已存在的票据，不在冷启动时触发 Apple ID 登录提示。
        if !satinMarkerDollpavo {
            guard let velvetTagsetDollcavo = Bundle.main.appStoreReceiptURL,
                  let velvetSockDollhumi = try? Data(contentsOf: velvetTagsetDollcavo), !velvetSockDollhumi.isEmpty else {
                throw DolluLaceBonnetDollzora.satinCollectionDollvelo
            }
            return velvetSockDollhumi
        }
        let cozyArchiveDollniva = Task { () throws -> Data in
            // StoreKit 2 的购买不会保证旧格式 receipt 已包含本次交易，先刷新再上传。
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
            guard let velvetTagsetDollcavo = Bundle.main.appStoreReceiptURL,
                  let velvetSockDollhumi = try? Data(contentsOf: velvetTagsetDollcavo), !velvetSockDollhumi.isEmpty else {
                throw DolluLaceBonnetDollzora.satinCollectionDollvelo
            }
            return velvetSockDollhumi
        }
        velvetPoseDollsero = cozyArchiveDollniva
        defer { velvetPoseDollsero = nil }
        return try await cozyArchiveDollniva.value
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
