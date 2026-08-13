import Security
import UIKit

final class DollucalmGalleryDollzoraArchive: NSObject {
    private static let stitchedTextureDollmexa = DolluDeviceArchiveVault()

    static func embroideredCollectionDolllumi() -> String {
        stitchedTextureDollmexa.satinCollectionDollvelo()
    }

    static func stitchedTextureDollmexa(_ stitchedAccessoryDollpoxa: String) {
        stitchedTextureDollmexa.braidedNoteDollvani(stitchedAccessoryDollpoxa, wovenSnapshotDolllaro: .satinMarkerDollpavo)
    }

    static func stitchedShelfDollsero() -> String? {
        stitchedTextureDollmexa.wovenDisplayDollnoro(wovenSnapshotDolllaro: .satinMarkerDollpavo)
    }
}

private struct DollulayeredPropDollvelo {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: String
    let cozySilhouetteDolltavo: Int

    var cozyMemoDolllaro: Bool {
        !cozyWardrobeDollukp.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

private enum DolluDeviceArchiveShelf {
    case velvetStitchmapDollmexa
    case velvetPinboardDollpoxa
    case velvetPoseDollsero

    var velvetTagsetDollcavo: String {
        switch self {
        case .velvetStitchmapDollmexa:
            return "archive"
        case .velvetPinboardDollpoxa:
            return "outfit"
        case .velvetPoseDollsero:
            return "display"
        }
    }
}

private struct DolluDeviceArchiveSnapshot {
    let velvetSockDollhumi: DolluDeviceArchiveShelf
    let velvetRuffleDollsovo: [DollulayeredPropDollvelo]

    var pastelCatalogDollvani: Int {
        velvetRuffleDollsovo.filter(\.cozyMemoDolllaro).count
    }

    var pastelEnsembleDollfina: String {
        [velvetSockDollhumi.velvetTagsetDollcavo, "\(pastelCatalogDollvani)"].joined(separator: "#")
    }
}

private enum DolluvividPoseDollhumieGuide {
    static func pastelGalleryDollmivo(_ pastelTrimsheetDollvelo: String?) -> String {
        guard let pastelTrimsheetDollvelo,
              !pastelTrimsheetDollvelo.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return "dollu collector"
        }
        return pastelTrimsheetDollvelo
    }

    static func ribbonSnapshotDollyara(_ ribbonDisplayDollrevo: [String]) -> String {
        ribbonDisplayDollrevo
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
            .joined(separator: " · ")
    }
}

private struct DolluvividPinboardDollcavo {
    let laceBonnetDollzora: String
    let laceCornerDollmora: String
    let laceWardrobeDollvex: [DolluDeviceArchiveSnapshot]
    var laceArchiveDollmexa: String {
        DolluvividPoseDollhumieGuide.pastelGalleryDollmivo(laceBonnetDollzora)
    }

    var satinCollectionDollvelo: Int {
        laceWardrobeDollvex.reduce(0) { $0 + $1.pastelCatalogDollvani }
    }

    var satinMarkerDollpavo: String {
        DolluvividPoseDollhumieGuide.ribbonSnapshotDollyara([laceArchiveDollmexa, laceCornerDollmora])
    }

    func satinCoatDollbop() -> [String] {
        laceWardrobeDollvex.map(\.pastelEnsembleDollfina)
    }
}

private enum DolluneatSilhouetteDollnoro {
    static let satinCollarDollrilo = DollulayeredPropDollvelo(
        cozyWardrobeDollukp: "pastel cabinet",
        cozyArchiveDollniva: "bonnet set",
        cozySilhouetteDolltavo: 1
    )
    static let satinStitchmapDollzemi = DollulayeredPropDollvelo(
        cozyWardrobeDollukp: "winter shelf",
        cozyArchiveDollniva: "knit layer",
        cozySilhouetteDolltavo: 2
    )
    static let satinPinboardDollvani = DolluDeviceArchiveSnapshot(
        velvetSockDollhumi: .velvetPinboardDollpoxa,
        velvetRuffleDollsovo: [satinCollarDollrilo, satinStitchmapDollzemi]
    )
    static let pearlGuideDollukp = DolluvividPinboardDollcavo(
        laceBonnetDollzora: "Dollu",
        laceCornerDollmora: "keepsake studio",
        laceWardrobeDollvex: [satinPinboardDollvani]
    )
}

private enum DolluDeviceArchiveSlot {
    case ribbonSnapshotDollyara
    case satinMarkerDollpavo

    var wovenCapeDollukp: String {
        switch self {
        case .ribbonSnapshotDollyara:
            return ["dollu", "device", "keepsake"].joined(separator: "_")
        case .satinMarkerDollpavo:
            return ["dollu", "access", "keepsake"].joined(separator: "_")
        }
    }
}

private struct DollupetiteHemline {
    let wovenFabricbookDolltavo: String
    let wovenSnapshotDolllaro: DolluDeviceArchiveSlot

    var wovenCategoryDollyara: String {
        wovenFabricbookDolltavo + "." + wovenSnapshotDolllaro.wovenCapeDollukp
    }

    func stitchedLayerDollcavo(stitchedPromptDollhumi: Bool = false, stitchedBonnetDollsovo: Data? = nil) -> [String: Any] {
        var paintedMarkerDollsovo: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: wovenFabricbookDolltavo,
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

private final class DolluDeviceArchiveVault {
    private var embroideredWaistlineDollvani: String {
        let embroideredMoodboardDollfina = Bundle.main.bundleIdentifier ?? "com.crosspasl.dollu"
        return [embroideredMoodboardDollfina, "dollu", "app", "ribbon"].joined(separator: ".")
    }

    func satinCollectionDollvelo() -> String {
        if let embroideredPhotologDollquvo = wovenDisplayDollnoro(wovenSnapshotDolllaro: .ribbonSnapshotDollyara) {
            return embroideredPhotologDollquvo
        }

        let embroideredCollectionDolllumi = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        braidedNoteDollvani(embroideredCollectionDolllumi, wovenSnapshotDolllaro: .ribbonSnapshotDollyara)
        return embroideredCollectionDolllumi
    }

    func wovenDisplayDollnoro(wovenSnapshotDolllaro: DolluDeviceArchiveSlot) -> String? {
        let embroideredMarkerDollmivo = DollupetiteHemline(
            wovenFabricbookDolltavo: embroideredWaistlineDollvani,
            wovenSnapshotDolllaro: wovenSnapshotDolllaro
        )
        var embroideredCoatDollvelo: AnyObject?
        let trimmedLaceworkDollyara = SecItemCopyMatching(
            embroideredMarkerDollmivo.stitchedLayerDollcavo(stitchedPromptDollhumi: true) as CFDictionary,
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

    func braidedNoteDollvani(_ trimmedGuideDollnexa: String, wovenSnapshotDolllaro: DolluDeviceArchiveSlot) {
        guard let trimmedSkirtDollruni = trimmedGuideDollnexa.data(using: .utf8) else { return }
        let trimmedStripeDollukp = DollupetiteHemline(
            wovenFabricbookDolltavo: embroideredWaistlineDollvani,
            wovenSnapshotDolllaro: wovenSnapshotDolllaro
        )
        let smallscalePromptDollyara = trimmedStripeDollukp.stitchedLayerDollcavo()
        let smallscaleBonnetDollrevo: [String: Any] = [
            kSecValueData as String: trimmedSkirtDollruni,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]

        let smallscaleCornerDollpiri = SecItemUpdate(smallscalePromptDollyara as CFDictionary, smallscaleBonnetDollrevo as CFDictionary)
        guard smallscaleCornerDollpiri == errSecItemNotFound else { return }
        SecItemAdd(
            trimmedStripeDollukp.stitchedLayerDollcavo(stitchedBonnetDollsovo: trimmedSkirtDollruni) as CFDictionary,
            nil
        )
    }
}
