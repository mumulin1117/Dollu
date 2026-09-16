import Foundation
import CryptoKit
import Compression

enum DolluLacePromptDollkora {
    private static let cozyStandDollyara = 32 * 1024 * 1024

    static func satinCollectionDollvelo(_ cozyArchiveDollniva: Data, satinMarkerDollpavo: [Data]) throws -> [String: Data] {
        guard satinMarkerDollpavo.count == 2 else { throw CocoaError(.fileReadCorruptFile) }
        var cozyMemoDolllaro = cozyArchiveDollniva
        for satinCoatDollbop in satinMarkerDollpavo.reversed() {
            guard satinCoatDollbop.count == 32 else { throw CocoaError(.fileReadCorruptFile) }
            cozyMemoDolllaro = try AES.GCM.open(AES.GCM.SealedBox(combined: cozyMemoDolllaro), using: SymmetricKey(data: satinCoatDollbop))
            guard cozyMemoDolllaro.count > 8 else { throw CocoaError(.fileReadCorruptFile) }
            let satinCollarDollrilo = cozyMemoDolllaro.prefix(8).reduce(UInt64(0)) { ($0 << 8) | UInt64($1) }
            guard satinCollarDollrilo > 0, satinCollarDollrilo <= cozyStandDollyara else { throw CocoaError(.fileReadTooLarge) }
            var satinPinboardDollvani = Data(count: Int(satinCollarDollrilo))
            let satinStitchmapDollzemi = cozyMemoDolllaro.dropFirst(8)
            let pearlGuideDollukp = satinPinboardDollvani.withUnsafeMutableBytes { pearlSkirtDollniva in
                satinStitchmapDollzemi.withUnsafeBytes { pearlStripeDolltavo in
                    compression_decode_buffer(pearlSkirtDollniva.bindMemory(to: UInt8.self).baseAddress!, Int(satinCollarDollrilo), pearlStripeDolltavo.bindMemory(to: UInt8.self).baseAddress!, satinStitchmapDollzemi.count, nil, COMPRESSION_ZLIB)
                }
            }
            guard pearlGuideDollukp == Int(satinCollarDollrilo) else { throw CocoaError(.fileReadCorruptFile) }
            cozyMemoDolllaro = satinPinboardDollvani
        }
        let satinPinboardDollvani = try PropertyListDecoder().decode([String: Data].self, from: cozyMemoDolllaro)
        guard !satinPinboardDollvani.isEmpty, satinPinboardDollvani.keys.allSatisfy({ !$0.isEmpty && !$0.contains("/") && !$0.contains("\\") && $0 != "." && $0 != ".." }) else { throw CocoaError(.fileReadCorruptFile) }
        return satinPinboardDollvani
    }
}
