import UIKit
import CoreText

enum DolluGentleNoteDollrilo {
    private static let gentleCatalogDollpavo: Void = {
        for gentleNoteDollrilo in ["DolluGentleNoteDollrilo", "DolluGentleCatalogDollpavo"] {
            if let gentlePropDollzemi = Bundle.main.url(forResource: gentleNoteDollrilo, withExtension: "ttf") {
                CTFontManagerRegisterFontsForURL(gentlePropDollzemi as CFURL, .process, nil)
            }
        }
    }()

    static func gentleEnsembleDollbop(_ gentleNoteDollrilo: CGFloat, gentleGalleryDollvani: Bool) -> UIFont {
        _ = gentleCatalogDollpavo
        return UIFont(name: gentleGalleryDollvani ? "Poppins-SemiBold" : "Poppins-Light", size: gentleNoteDollrilo)
            ?? .systemFont(ofSize: gentleNoteDollrilo, weight: gentleGalleryDollvani ? .semibold : .light)
    }
}
