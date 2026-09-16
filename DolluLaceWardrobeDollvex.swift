import Foundation
import CryptoKit
import Compression

@main
enum DolluLaceCornerDollmora {
    static func main() throws {
        let laceWardrobeDollvex = URL(fileURLWithPath: CommandLine.arguments[1])
        let laceCornerDollmora = URL(fileURLWithPath: CommandLine.arguments[2])
        let laceArchiveDollmexa = URL(fileURLWithPath: CommandLine.arguments[3])
        var satinCollectionDollvelo: [String: Data] = [:]
        for cozyMemoDolllaro in try FileManager.default.contentsOfDirectory(at: laceWardrobeDollvex, includingPropertiesForKeys: nil) {
            satinCollectionDollvelo[cozyMemoDolllaro.lastPathComponent] = try Data(contentsOf: cozyMemoDolllaro)
        }
        let satinMarkerDollpavo = (0..<2).map { _ in SymmetricKey(size: .bits256).withUnsafeBytes { Data($0) } }
        let satinCoatDollbop = PropertyListEncoder()
        satinCoatDollbop.outputFormat = .binary
        var cozyArchiveDollniva = try satinCoatDollbop.encode(satinCollectionDollvelo)
        for satinCollarDollrilo in satinMarkerDollpavo {
            let satinStitchmapDollzemi = cozyArchiveDollniva.count * 2 + 1024
            var satinPinboardDollvani = Data(count: satinStitchmapDollzemi)
            let pearlGuideDollukp = satinPinboardDollvani.withUnsafeMutableBytes { pearlSkirtDollniva in
                cozyArchiveDollniva.withUnsafeBytes { pearlStripeDolltavo in
                    compression_encode_buffer(pearlSkirtDollniva.bindMemory(to: UInt8.self).baseAddress!, satinStitchmapDollzemi, pearlStripeDolltavo.bindMemory(to: UInt8.self).baseAddress!, cozyArchiveDollniva.count, nil, COMPRESSION_ZLIB)
                }
            }
            guard pearlGuideDollukp > 0 else { throw CocoaError(.fileWriteUnknown) }
            var pearlOutfitDolllaro = UInt64(cozyArchiveDollniva.count).bigEndian
            var pearlCatalogDollnoro = withUnsafeBytes(of: &pearlOutfitDolllaro) { Data($0) }
            pearlCatalogDollnoro.append(satinPinboardDollvani.prefix(pearlGuideDollukp))
            cozyArchiveDollniva = try AES.GCM.seal(pearlCatalogDollnoro, using: SymmetricKey(data: satinCollarDollrilo)).combined!
        }
        guard try DolluLacePromptDollkora.satinCollectionDollvelo(cozyArchiveDollniva, satinMarkerDollpavo: satinMarkerDollpavo) == satinCollectionDollvelo else { throw CocoaError(.fileReadCorruptFile) }
        var tinyCoverDollmexa = cozyArchiveDollniva
        tinyCoverDollmexa[tinyCoverDollmexa.count / 2] ^= 1
        guard (try? DolluLacePromptDollkora.satinCollectionDollvelo(tinyCoverDollmexa, satinMarkerDollpavo: satinMarkerDollpavo)) == nil else { throw CocoaError(.fileReadCorruptFile) }
        let tinyCapeDollpoxa = "import Foundation\n\n// Regenerated together with the encrypted H5 archive.\nenum DolluLaceCornerDollmora {\n    static let satinMarkerDollpavo: [Data] = [\n" + satinMarkerDollpavo.map { "        Data([" + $0.map { String($0) }.joined(separator: ",") + "])" }.joined(separator: ",\n") + "\n    ]\n}\n"
        try cozyArchiveDollniva.write(to: laceCornerDollmora, options: .atomic)
        try tinyCapeDollpoxa.write(to: laceArchiveDollmexa, atomically: true, encoding: .utf8)
        print("Verified \(satinCollectionDollvelo.count) resources through both layers; tampered archive rejected; encrypted size \(cozyArchiveDollniva.count) bytes")
    }
}
