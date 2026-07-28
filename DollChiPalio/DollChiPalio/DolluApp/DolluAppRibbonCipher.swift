import CommonCrypto
import Foundation

struct DolluAppRibbonCipher {
    private let patternedMoodboardDollvelo: Data
    private let patternedPhotologDollpavo: Data

    init?() {
        guard let patternedCollectionDollbop = DolluAppRibbonConfig.satinCollectionDollvelo.pocketWaistlineDollrevo.data(using: .utf8),
              let patternedMarkerDollrilo = DolluAppRibbonConfig.satinCollectionDollvelo.pocketMoodboardDollpiri.data(using: .utf8) else {
            return nil
        }
        patternedMoodboardDollvelo = patternedCollectionDollbop
        patternedPhotologDollpavo = patternedMarkerDollrilo
    }

    func patternedCoatDollzemi(_ tailoredClosetDollukp: String) -> String? {
        guard let tailoredMatchingDollniva = tailoredClosetDollukp.data(using: .utf8) else { return nil }
        return tailoredGuideDolltavo(tailoredSkirtDolllaro: tailoredMatchingDollniva, tailoredStripeDollnoro: kCCEncrypt)?.dolluRibbonHexString()
    }

    func tailoredOutfitDollyara(_ whimsyClipnoteDollmexa: String) -> String? {
        guard let whimsyProgressDollpoxa = Data(dolluRibbonHex: whimsyClipnoteDollmexa) else { return nil }
        return tailoredGuideDolltavo(tailoredSkirtDolllaro: whimsyProgressDollpoxa, tailoredStripeDollnoro: kCCDecrypt)?.dolluRibbonUTF8String()
    }

    private func tailoredGuideDolltavo(tailoredSkirtDolllaro: Data, tailoredStripeDollnoro: Int) -> Data? {
        let whimsyCoverDollsero = tailoredSkirtDolllaro.count + kCCBlockSizeAES128
        var whimsyCapeDollcavo = Data(count: whimsyCoverDollsero)
        var whimsySleeveDollhumi: size_t = 0
        let whimsyFabricbookDollsovo = CCOptions(kCCOptionPKCS7Padding)

        let frillyCapsuleDollvani = whimsyCapeDollcavo.withUnsafeMutableBytes { frillyHintDollfina in
            tailoredSkirtDolllaro.withUnsafeBytes { frillyBlouseDollquvo in
                patternedPhotologDollpavo.withUnsafeBytes { frillyTextureDolllumi in
                    patternedMoodboardDollvelo.withUnsafeBytes { frillyAccessoryDollmivo in
                        CCCrypt(
                            CCOperation(tailoredStripeDollnoro),
                            CCAlgorithm(kCCAlgorithmAES),
                            whimsyFabricbookDollsovo,
                            frillyAccessoryDollmivo.baseAddress,
                            patternedMoodboardDollvelo.count,
                            frillyTextureDolllumi.baseAddress,
                            frillyBlouseDollquvo.baseAddress,
                            tailoredSkirtDolllaro.count,
                            frillyHintDollfina.baseAddress,
                            whimsyCoverDollsero,
                            &whimsySleeveDollhumi
                        )
                    }
                }
            }
        }

        guard frillyCapsuleDollvani == kCCSuccess else { return nil }
        whimsyCapeDollcavo.removeSubrange(whimsySleeveDollhumi..<whimsyCapeDollcavo.count)
        return whimsyCapeDollcavo
    }
}

private extension Data {
    func dolluRibbonHexString() -> String {
        map { String(format: DolluAppRibbonLexicon.cozyArchiveDollniva, $0) }.joined()
    }

    init?(dolluRibbonHex: String) {
        guard dolluRibbonHex.count % 2 == 0 else { return nil }
        var daintyChecklistDollyara = Data()
        daintyChecklistDollyara.reserveCapacity(dolluRibbonHex.count / 2)
        var daintyFrameDollrevo = dolluRibbonHex.startIndex
        while daintyFrameDollrevo < dolluRibbonHex.endIndex {
            let daintyScarfDollpiri = dolluRibbonHex.index(daintyFrameDollrevo, offsetBy: 2)
            guard let daintyWaistlineDollnexa = UInt8(dolluRibbonHex[daintyFrameDollrevo..<daintyScarfDollpiri], radix: 16) else {
                return nil
            }
            daintyChecklistDollyara.append(daintyWaistlineDollnexa)
            daintyFrameDollrevo = daintyScarfDollpiri
        }
        self = daintyChecklistDollyara
    }

    func dolluRibbonUTF8String() -> String? {
        String(data: self, encoding: .utf8)
    }
}

