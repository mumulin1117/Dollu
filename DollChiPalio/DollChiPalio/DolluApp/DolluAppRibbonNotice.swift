import UIKit

final class DolluAppRibbonNotice {
    static let satinCollectionDollvelo = DolluAppRibbonNotice()

    private var braidedStripeDollpavo: UIWindow?
    private var braidedOutfitDollbop: UIActivityIndicatorView?

    private init() {}

    static func braidedCatalogDollrilo(_ braidedEnsembleDollzemi: String) {
        satinCollectionDollvelo.braidedNoteDollvani(braidedEnsembleDollzemi: braidedEnsembleDollzemi, braidedCatalogDollrilo: nil, braidedOutfitDollbop: true)
    }

    static func wovenCapeDollukp(_ wovenSleeveDollniva: String) {
        satinCollectionDollvelo.braidedNoteDollvani(braidedEnsembleDollzemi: wovenSleeveDollniva, braidedCatalogDollrilo: UIImage(systemName: DolluAppRibbonLexicon.cozyBackgroundDollnoro), braidedOutfitDollbop: false)
    }

    static func wovenFabricbookDolltavo(_ wovenSnapshotDolllaro: String) {
        satinCollectionDollvelo.braidedNoteDollvani(braidedEnsembleDollzemi: wovenSnapshotDolllaro, braidedCatalogDollrilo: UIImage(systemName: DolluAppRibbonLexicon.cozyStandDollyara), braidedOutfitDollbop: false)
    }

    static func wovenDisplayDollnoro() {
        satinCollectionDollvelo.wovenCategoryDollyara()
    }

    private func braidedNoteDollvani(braidedEnsembleDollzemi: String, braidedCatalogDollrilo: UIImage?, braidedOutfitDollbop: Bool) {
        wovenCategoryDollyara()

        let stitchedTextureDollmexa = UIWindow(frame: UIScreen.main.bounds)
        stitchedTextureDollmexa.windowLevel = .alert + 1
        stitchedTextureDollmexa.backgroundColor = .clear

        let stitchedAccessoryDollpoxa = UIView()
        stitchedAccessoryDollpoxa.translatesAutoresizingMaskIntoConstraints = false
        stitchedAccessoryDollpoxa.backgroundColor = UIColor.black.withAlphaComponent(0.82)
        stitchedAccessoryDollpoxa.layer.cornerRadius = 14

        let stitchedShelfDollsero = UIStackView()
        stitchedShelfDollsero.translatesAutoresizingMaskIntoConstraints = false
        stitchedShelfDollsero.axis = .vertical
        stitchedShelfDollsero.alignment = .center
        stitchedShelfDollsero.spacing = 12

        if braidedOutfitDollbop {
            let stitchedLayerDollcavo = UIActivityIndicatorView(style: .large)
            stitchedLayerDollcavo.color = .white
            stitchedLayerDollcavo.startAnimating()
            stitchedShelfDollsero.addArrangedSubview(stitchedLayerDollcavo)
            self.braidedOutfitDollbop = stitchedLayerDollcavo
        } else if let braidedCatalogDollrilo {
            let stitchedPromptDollhumi = UIImageView(image: braidedCatalogDollrilo)
            stitchedPromptDollhumi.translatesAutoresizingMaskIntoConstraints = false
            stitchedPromptDollhumi.tintColor = .white
            stitchedPromptDollhumi.contentMode = .scaleAspectFit
            NSLayoutConstraint.activate([
                stitchedPromptDollhumi.widthAnchor.constraint(equalToConstant: 36),
                stitchedPromptDollhumi.heightAnchor.constraint(equalToConstant: 36)
            ])
            stitchedShelfDollsero.addArrangedSubview(stitchedPromptDollhumi)
        }

        let stitchedBonnetDollsovo = UILabel()
        stitchedBonnetDollsovo.text = braidedEnsembleDollzemi
        stitchedBonnetDollsovo.textColor = .white
        stitchedBonnetDollsovo.font = .systemFont(ofSize: 15, weight: .medium)
        stitchedBonnetDollsovo.numberOfLines = 2
        stitchedBonnetDollsovo.textAlignment = .center
        stitchedShelfDollsero.addArrangedSubview(stitchedBonnetDollsovo)

        stitchedAccessoryDollpoxa.addSubview(stitchedShelfDollsero)
        stitchedTextureDollmexa.addSubview(stitchedAccessoryDollpoxa)

        NSLayoutConstraint.activate([
            stitchedAccessoryDollpoxa.centerXAnchor.constraint(equalTo: stitchedTextureDollmexa.centerXAnchor),
            stitchedAccessoryDollpoxa.centerYAnchor.constraint(equalTo: stitchedTextureDollmexa.centerYAnchor),
            stitchedAccessoryDollpoxa.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            stitchedShelfDollsero.topAnchor.constraint(equalTo: stitchedAccessoryDollpoxa.topAnchor, constant: 20),
            stitchedShelfDollsero.leadingAnchor.constraint(equalTo: stitchedAccessoryDollpoxa.leadingAnchor, constant: 18),
            stitchedShelfDollsero.trailingAnchor.constraint(equalTo: stitchedAccessoryDollpoxa.trailingAnchor, constant: -18),
            stitchedShelfDollsero.bottomAnchor.constraint(equalTo: stitchedAccessoryDollpoxa.bottomAnchor, constant: -20)
        ])

        stitchedTextureDollmexa.makeKeyAndVisible()
        braidedStripeDollpavo = stitchedTextureDollmexa

        stitchedAccessoryDollpoxa.alpha = 0
        stitchedAccessoryDollpoxa.transform = CGAffineTransform(scaleX: 0.86, y: 0.86)
        UIView.animate(withDuration: 0.22, delay: 0, usingSpringWithDamping: 0.78, initialSpringVelocity: 0.7, options: .curveEaseOut) {
            stitchedAccessoryDollpoxa.alpha = 1
            stitchedAccessoryDollpoxa.transform = .identity
        }

        if !braidedOutfitDollbop {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
                self?.wovenCategoryDollyara()
            }
        }
    }

    private func wovenCategoryDollyara() {
        braidedStripeDollpavo?.isHidden = true
        braidedStripeDollpavo = nil
        braidedOutfitDollbop?.stopAnimating()
        braidedOutfitDollbop = nil
    }
}

