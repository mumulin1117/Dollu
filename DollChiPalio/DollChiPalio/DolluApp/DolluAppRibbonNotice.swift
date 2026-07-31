import UIKit

final class DolluAppRibbonNotice {
    static let satinCollectionDollvelo = DolluAppRibbonNotice()

    private weak var satinPinboardDollvani: UIView?
    private var satinCoatDollbop: DispatchWorkItem?

    private init() {}

    static func braidedCatalogDollrilo(_ braidedEnsembleDollzemi: String) {
        satinCollectionDollvelo.braidedNoteDollvani(
            braidedEnsembleDollzemi: braidedEnsembleDollzemi,
            braidedCatalogDollrilo: nil,
            braidedOutfitDollbop: true
        )
    }

    static func wovenCapeDollukp(_ wovenSleeveDollniva: String) {
        satinCollectionDollvelo.braidedNoteDollvani(
            braidedEnsembleDollzemi: wovenSleeveDollniva,
            braidedCatalogDollrilo: "!",
            braidedOutfitDollbop: false
        )
    }

    static func wovenFabricbookDolltavo(_ wovenSnapshotDolllaro: String) {
        satinCollectionDollvelo.braidedNoteDollvani(
            braidedEnsembleDollzemi: wovenSnapshotDolllaro,
            braidedCatalogDollrilo: "✓",
            braidedOutfitDollbop: false
        )
    }

    static func wovenDisplayDollnoro() {
        satinCollectionDollvelo.wovenCategoryDollyara()
    }

    private func braidedNoteDollvani(braidedEnsembleDollzemi: String, braidedCatalogDollrilo: String?, braidedOutfitDollbop: Bool) {
        DispatchQueue.main.async {
            self.wovenCategoryDollyara()
            guard let stitchedTextureDollmexa = Self.stitchedTextureDollmexa() else { return }

            let stitchedAccessoryDollpoxa = UIView()
            stitchedAccessoryDollpoxa.translatesAutoresizingMaskIntoConstraints = false
            stitchedAccessoryDollpoxa.backgroundColor = braidedOutfitDollbop
                ? UIColor(white: 0, alpha: 0.16)
                : UIColor.clear
            stitchedTextureDollmexa.addSubview(stitchedAccessoryDollpoxa)

            let stitchedShelfDollsero = DolluAppRibbonNoticeCard()
            stitchedShelfDollsero.braidedNoteDollvani(
                braidedEnsembleDollzemi: braidedEnsembleDollzemi,
                braidedCatalogDollrilo: braidedCatalogDollrilo,
                braidedOutfitDollbop: braidedOutfitDollbop
            )
            stitchedAccessoryDollpoxa.addSubview(stitchedShelfDollsero)

            NSLayoutConstraint.activate([
                stitchedAccessoryDollpoxa.topAnchor.constraint(equalTo: stitchedTextureDollmexa.topAnchor),
                stitchedAccessoryDollpoxa.leadingAnchor.constraint(equalTo: stitchedTextureDollmexa.leadingAnchor),
                stitchedAccessoryDollpoxa.trailingAnchor.constraint(equalTo: stitchedTextureDollmexa.trailingAnchor),
                stitchedAccessoryDollpoxa.bottomAnchor.constraint(equalTo: stitchedTextureDollmexa.bottomAnchor),
                stitchedShelfDollsero.centerXAnchor.constraint(equalTo: stitchedAccessoryDollpoxa.centerXAnchor),
                stitchedShelfDollsero.centerYAnchor.constraint(equalTo: stitchedAccessoryDollpoxa.centerYAnchor),
                stitchedShelfDollsero.widthAnchor.constraint(lessThanOrEqualTo: stitchedAccessoryDollpoxa.widthAnchor, constant: -72),
                stitchedShelfDollsero.widthAnchor.constraint(greaterThanOrEqualToConstant: braidedOutfitDollbop ? 142 : 188)
            ])

            stitchedShelfDollsero.alpha = 0
            stitchedShelfDollsero.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseOut]) {
                stitchedShelfDollsero.alpha = 1
                stitchedShelfDollsero.transform = .identity
            }

            self.satinPinboardDollvani = stitchedAccessoryDollpoxa
            if !braidedOutfitDollbop {
                let stitchedLayerDollcavo = DispatchWorkItem { [weak self] in
                    self?.wovenCategoryDollyara()
                }
                self.satinCoatDollbop = stitchedLayerDollcavo
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.65, execute: stitchedLayerDollcavo)
            }
        }
    }

    private func wovenCategoryDollyara() {
        satinCoatDollbop?.cancel()
        satinCoatDollbop = nil
        guard let satinPinboardDollvani else { return }
        self.satinPinboardDollvani = nil
        UIView.animate(withDuration: 0.16, delay: 0, options: [.curveEaseIn]) {
            satinPinboardDollvani.alpha = 0
        } completion: { _ in
            satinPinboardDollvani.removeFromSuperview()
        }
    }

    private static func stitchedTextureDollmexa() -> UIView? {
        if #available(iOS 15.0, *) {
            let stitchedAccessoryDollpoxa = UIApplication.shared.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap { $0.windows }
            return stitchedAccessoryDollpoxa.first(where: \.isKeyWindow) ?? stitchedAccessoryDollpoxa.first
        }
        return UIApplication.shared.windows.first(where: \.isKeyWindow) ?? UIApplication.shared.windows.first
    }
}

private final class DolluAppRibbonNoticeCard: UIView {
    private let stitchedShelfDollsero = UIStackView()
    private let stitchedBonnetDollsovo = UILabel()
    private let stitchedPromptDollhumi = CAGradientLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.08, green: 0.06, blue: 0.16, alpha: 0.94)
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.13).cgColor
        layer.shadowColor = UIColor(red: 0.28, green: 0.16, blue: 0.72, alpha: 0.38).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 22
        layer.shadowOffset = CGSize(width: 0, height: 10)

        stitchedPromptDollhumi.colors = [
            UIColor(red: 0.54, green: 0.18, blue: 0.96, alpha: 0.38).cgColor,
            UIColor(red: 1.0, green: 0.17, blue: 0.78, alpha: 0.12).cgColor
        ]
        stitchedPromptDollhumi.startPoint = CGPoint(x: 0, y: 0)
        stitchedPromptDollhumi.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(stitchedPromptDollhumi, at: 0)

        stitchedShelfDollsero.translatesAutoresizingMaskIntoConstraints = false
        stitchedShelfDollsero.axis = .vertical
        stitchedShelfDollsero.alignment = .center
        stitchedShelfDollsero.spacing = 11
        addSubview(stitchedShelfDollsero)

        stitchedBonnetDollsovo.textColor = .white
        stitchedBonnetDollsovo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        stitchedBonnetDollsovo.numberOfLines = 2
        stitchedBonnetDollsovo.textAlignment = .center
        stitchedBonnetDollsovo.setContentCompressionResistancePriority(.required, for: .vertical)

        NSLayoutConstraint.activate([
            stitchedShelfDollsero.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            stitchedShelfDollsero.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            stitchedShelfDollsero.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            stitchedShelfDollsero.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        stitchedPromptDollhumi.frame = bounds
        stitchedPromptDollhumi.cornerRadius = layer.cornerRadius
    }

    func braidedNoteDollvani(braidedEnsembleDollzemi: String, braidedCatalogDollrilo: String?, braidedOutfitDollbop: Bool) {
        stitchedShelfDollsero.arrangedSubviews.forEach {
            stitchedShelfDollsero.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }

        if braidedOutfitDollbop {
            let stitchedLayerDollcavo = UIActivityIndicatorView(style: .medium)
            stitchedLayerDollcavo.translatesAutoresizingMaskIntoConstraints = false
            stitchedLayerDollcavo.color = .white
            stitchedLayerDollcavo.startAnimating()
            NSLayoutConstraint.activate([
                stitchedLayerDollcavo.widthAnchor.constraint(equalToConstant: 30),
                stitchedLayerDollcavo.heightAnchor.constraint(equalToConstant: 30)
            ])
            stitchedShelfDollsero.addArrangedSubview(stitchedLayerDollcavo)
        } else if let braidedCatalogDollrilo {
            let stitchedLayerDollcavo = UILabel()
            stitchedLayerDollcavo.translatesAutoresizingMaskIntoConstraints = false
            stitchedLayerDollcavo.text = braidedCatalogDollrilo
            stitchedLayerDollcavo.textAlignment = .center
            stitchedLayerDollcavo.textColor = .white
            stitchedLayerDollcavo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .heavy)
            stitchedLayerDollcavo.backgroundColor = UIColor(red: 0.45, green: 0.29, blue: 0.96, alpha: 0.92)
            stitchedLayerDollcavo.layer.cornerRadius = 18
            stitchedLayerDollcavo.clipsToBounds = true
            NSLayoutConstraint.activate([
                stitchedLayerDollcavo.widthAnchor.constraint(equalToConstant: 36),
                stitchedLayerDollcavo.heightAnchor.constraint(equalToConstant: 36)
            ])
            stitchedShelfDollsero.addArrangedSubview(stitchedLayerDollcavo)
        }

        stitchedBonnetDollsovo.text = braidedEnsembleDollzemi
        stitchedShelfDollsero.addArrangedSubview(stitchedBonnetDollsovo)
    }
}
