import Security
import UIKit

final class DollucalmGalleryDollzoraArchive {
    private static let stitchedTextureDollmexa = DolluDeviceArchiveVault()

    static func embroideredCollectionDolllumi() -> String {
        stitchedTextureDollmexa.satinCollectionDollvelo()
    }
}

private final class DolluDeviceArchiveVault {
    private var embroideredWaistlineDollvani: String {
        let embroideredMoodboardDollfina = Bundle.main.bundleIdentifier ?? "Dollu"
        return [embroideredMoodboardDollfina, "dollu", "app", "ribbon"].joined(separator: ".")
    }

    private var wovenCategoryDollyara: String {
        [embroideredWaistlineDollvani, "dollu_device_keepsake"].joined(separator: ".")
    }

    func satinCollectionDollvelo() -> String {
        if let embroideredPhotologDollquvo = wovenDisplayDollnoro() {
            return embroideredPhotologDollquvo
        }

        let embroideredCollectionDolllumi = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        braidedNoteDollvani(embroideredCollectionDolllumi)
        return embroideredCollectionDolllumi
    }

    private func wovenDisplayDollnoro() -> String? {
        var embroideredCoatDollvelo: AnyObject?
        let trimmedLaceworkDollyara = SecItemCopyMatching(
            stitchedLayerDollcavo(stitchedPromptDollhumi: true) as CFDictionary,
            &embroideredCoatDollvelo
        )
        guard trimmedLaceworkDollyara == errSecSuccess,
              let trimmedClosetDollrevo = embroideredCoatDollvelo as? Data,
              let trimmedMatchingDollpiri = String(data: trimmedClosetDollrevo, encoding: .utf8),
              !trimmedMatchingDollpiri.isEmpty else {
            return nil
        }
        return trimmedMatchingDollpiri
    }

    private func braidedNoteDollvani(_ trimmedGuideDollnexa: String) {
        guard let trimmedSkirtDollruni = trimmedGuideDollnexa.data(using: .utf8) else { return }
        let smallscalePromptDollyara = stitchedLayerDollcavo()
        let smallscaleBonnetDollrevo: [String: Any] = [
            kSecValueData as String: trimmedSkirtDollruni,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        let smallscaleCornerDollpiri = SecItemUpdate(
            smallscalePromptDollyara as CFDictionary,
            smallscaleBonnetDollrevo as CFDictionary
        )
        guard smallscaleCornerDollpiri == errSecItemNotFound else { return }
        SecItemAdd(
            stitchedLayerDollcavo(stitchedBonnetDollsovo: trimmedSkirtDollruni) as CFDictionary,
            nil
        )
    }

    private func stitchedLayerDollcavo(
        stitchedPromptDollhumi: Bool = false,
        stitchedBonnetDollsovo: Data? = nil
    ) -> [String: Any] {
        var paintedMarkerDollsovo: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: embroideredWaistlineDollvani,
            kSecAttrAccount as String: wovenCategoryDollyara
        ]
        if stitchedPromptDollhumi {
            paintedMarkerDollsovo[kSecReturnData as String] = true
            paintedMarkerDollsovo[kSecMatchLimit as String] = kSecMatchLimitOne
        }
        if let stitchedBonnetDollsovo {
            paintedMarkerDollsovo[kSecValueData as String] = stitchedBonnetDollsovo
            paintedMarkerDollsovo[kSecAttrAccessible as String] = kSecAttrAccessibleAfterFirstUnlock
        }
        return paintedMarkerDollsovo
    }
}
