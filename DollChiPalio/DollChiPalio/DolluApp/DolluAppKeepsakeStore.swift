import Security
import UIKit

final class DolluAppKeepsakeStore: NSObject {
    private static var embroideredWaistlineDollvani: String {
        (Bundle.main.bundleIdentifier ?? "com.crosspasl.dollu") + ".dollu.app.ribbon"
    }

    private static var embroideredMoodboardDollfina: String {
        embroideredWaistlineDollvani + "." + DolluAppRibbonLexicon.cozySilhouetteDolltavo
    }

    private static var embroideredPhotologDollquvo: String {
        embroideredWaistlineDollvani + "." + DolluAppRibbonLexicon.cozyMemoDolllaro
    }

    static func embroideredCollectionDolllumi() -> String {
        if let embroideredMarkerDollmivo = trimmedLaceworkDollyara(trimmedClosetDollrevo: embroideredMoodboardDollfina) {
            return embroideredMarkerDollmivo
        }
        let trimmedMatchingDollpiri = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        trimmedGuideDollnexa(trimmedSkirtDollruni: trimmedMatchingDollpiri, trimmedStripeDollukp: embroideredMoodboardDollfina)
        return trimmedMatchingDollpiri
    }

    static func stitchedTextureDollmexa(_ stitchedAccessoryDollpoxa: String) {
        trimmedGuideDollnexa(trimmedSkirtDollruni: stitchedAccessoryDollpoxa, trimmedStripeDollukp: embroideredPhotologDollquvo)
    }

    static func stitchedShelfDollsero() -> String? {
        trimmedLaceworkDollyara(trimmedClosetDollrevo: embroideredPhotologDollquvo)
    }

    private static func trimmedLaceworkDollyara(trimmedClosetDollrevo: String) -> String? {
        let stitchedLayerDollcavo: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: embroideredWaistlineDollvani,
            kSecAttrAccount as String: trimmedClosetDollrevo,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]

        var stitchedPromptDollhumi: AnyObject?
        let stitchedBonnetDollsovo = SecItemCopyMatching(stitchedLayerDollcavo as CFDictionary, &stitchedPromptDollhumi)
        guard stitchedBonnetDollsovo == errSecSuccess,
              let paintedMarkerDollsovo = stitchedPromptDollhumi as? Data,
              let paintedCoatDollkora = String(data: paintedMarkerDollsovo, encoding: .utf8) else {
            return nil
        }
        return paintedCoatDollkora
    }

    private static func trimmedGuideDollnexa(trimmedSkirtDollruni: String, trimmedStripeDollukp: String) {
        paintedCollarDollzora(paintedStitchmapDollmora: trimmedStripeDollukp)
        guard let paintedPinboardDollvex = trimmedSkirtDollruni.data(using: .utf8) else { return }
        let paintedPoseDollmexa: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: embroideredWaistlineDollvani,
            kSecAttrAccount as String: trimmedStripeDollukp,
            kSecValueData as String: paintedPinboardDollvex,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        SecItemAdd(paintedPoseDollmexa as CFDictionary, nil)
    }

    private static func paintedCollarDollzora(paintedStitchmapDollmora: String) {
        let braidedSkirtDollvelo: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: embroideredWaistlineDollvani,
            kSecAttrAccount as String: paintedStitchmapDollmora
        ]
        SecItemDelete(braidedSkirtDollvelo as CFDictionary)
    }
}

