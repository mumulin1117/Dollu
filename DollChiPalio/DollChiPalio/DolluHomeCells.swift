import UIKit

final class DolluHomeSectionHeaderView: UICollectionReusableView {
    static let dollReuseIdentifier = "DolluHomeSectionHeaderView"
    private let braidedCatalogDollrilo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        braidedCatalogDollrilo.translatesAutoresizingMaskIntoConstraints = false
        braidedCatalogDollrilo.textColor = .white
        braidedCatalogDollrilo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 26, dollFontWeight: .heavy)
        addSubview(braidedCatalogDollrilo)
        NSLayoutConstraint.activate([
            braidedCatalogDollrilo.leadingAnchor.constraint(equalTo: leadingAnchor),
            braidedCatalogDollrilo.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollTitle: String) {
        braidedCatalogDollrilo.text = dollTitle
    }
}

final class DolluHomeShowcaseCell: UICollectionViewCell {
    static let dollReuseIdentifier = "DolluHomeShowcaseCell"

    var satinMarkerDollpavo: (() -> Void)?

    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let velvetTagsetDollcavo = UIView()
    private let pearlOutfitDolllaro = UILabel()
    private let glossyIdeaDollsovo = UIButton(type: .custom)

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 22
        contentView.clipsToBounds = true
        contentView.backgroundColor = DolluWardrobePalette.dollArchivePanelSoft

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        contentView.addSubview(tinyCoverDollmexa)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.backgroundColor = .white
        glossyIdeaDollsovo.setTitle("!", for: .normal)
        glossyIdeaDollsovo.setTitleColor(UIColor(red: 0.06, green: 0.05, blue: 0.12, alpha: 1), for: .normal)
        glossyIdeaDollsovo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        glossyIdeaDollsovo.layer.cornerRadius = 17
        glossyIdeaDollsovo.layer.shadowColor = UIColor.black.cgColor
        glossyIdeaDollsovo.layer.shadowOpacity = 0.18
        glossyIdeaDollsovo.layer.shadowRadius = 7
        glossyIdeaDollsovo.layer.shadowOffset = CGSize(width: 0, height: 4)
        glossyIdeaDollsovo.accessibilityLabel = "Collector safety feedback"
        glossyIdeaDollsovo.addTarget(self, action: #selector(openDollSafetyRoute), for: .touchUpInside)
        glossyIdeaDollsovo.addTarget(self, action: #selector(pressDollSafetyButton), for: .touchDown)
        glossyIdeaDollsovo.addTarget(self, action: #selector(releaseDollSafetyButton), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        contentView.addSubview(glossyIdeaDollsovo)

        velvetTagsetDollcavo.translatesAutoresizingMaskIntoConstraints = false
        velvetTagsetDollcavo.backgroundColor = UIColor(red: 0.28, green: 0.18, blue: 0.17, alpha: 0.72)
        contentView.addSubview(velvetTagsetDollcavo)

        pearlOutfitDolllaro.translatesAutoresizingMaskIntoConstraints = false
        pearlOutfitDolllaro.textColor = .white
        pearlOutfitDolllaro.textAlignment = .center
        pearlOutfitDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        pearlOutfitDolllaro.adjustsFontSizeToFitWidth = true
        pearlOutfitDolllaro.minimumScaleFactor = 0.72
        velvetTagsetDollcavo.addSubview(pearlOutfitDolllaro)

        NSLayoutConstraint.activate([
            tinyCoverDollmexa.topAnchor.constraint(equalTo: contentView.topAnchor),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tinyCoverDollmexa.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tinyCoverDollmexa.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            glossyIdeaDollsovo.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 34),
            glossyIdeaDollsovo.heightAnchor.constraint(equalTo: glossyIdeaDollsovo.widthAnchor),

            velvetTagsetDollcavo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            velvetTagsetDollcavo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            velvetTagsetDollcavo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            velvetTagsetDollcavo.heightAnchor.constraint(equalToConstant: 40),

            pearlOutfitDolllaro.leadingAnchor.constraint(equalTo: velvetTagsetDollcavo.leadingAnchor, constant: 8),
            pearlOutfitDolllaro.trailingAnchor.constraint(equalTo: velvetTagsetDollcavo.trailingAnchor, constant: -8),
            pearlOutfitDolllaro.centerYAnchor.constraint(equalTo: velvetTagsetDollcavo.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollItem: DolluHomeDynamicItem) {
        pearlOutfitDolllaro.text = dollItem.dollTitle
        tinyCoverDollmexa.setDollImage(dollURL: dollItem.dollCoverURL, fallbackTitle: dollItem.dollTitle)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        satinMarkerDollpavo = nil
        glossyIdeaDollsovo.transform = .identity
        glossyIdeaDollsovo.alpha = 1
    }

    @objc private func openDollSafetyRoute() {
        satinMarkerDollpavo?()
    }

    @objc private func pressDollSafetyButton() {
        UIView.animate(withDuration: 0.12) {
            self.glossyIdeaDollsovo.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
            self.glossyIdeaDollsovo.alpha = 0.82
        }
    }

    @objc private func releaseDollSafetyButton() {
        UIView.animate(withDuration: 0.18) {
            self.glossyIdeaDollsovo.transform = .identity
            self.glossyIdeaDollsovo.alpha = 1
        }
    }
}

final class DolluDollpediaCardCell: UICollectionViewCell {
    static let dollReuseIdentifier = "DolluDollpediaCardCell"

    var satinMarkerDollpavo: (() -> Void)?

    private let satinPinboardDollvani = UIView()
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let glossyIdeaDollsovo = UIButton(type: .custom)

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .clear

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.backgroundColor = UIColor(red: 0.14, green: 0.12, blue: 0.31, alpha: 0.96)
        satinPinboardDollvani.layer.cornerRadius = 24
        satinPinboardDollvani.clipsToBounds = true
        contentView.addSubview(satinPinboardDollvani)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        tinyCoverDollmexa.layer.cornerRadius = 20
        satinPinboardDollvani.addSubview(tinyCoverDollmexa)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.backgroundColor = .white
        glossyIdeaDollsovo.setTitle("!", for: .normal)
        glossyIdeaDollsovo.setTitleColor(UIColor(red: 0.06, green: 0.05, blue: 0.12, alpha: 1), for: .normal)
        glossyIdeaDollsovo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 21, dollFontWeight: .heavy)
        glossyIdeaDollsovo.layer.cornerRadius = 21
        glossyIdeaDollsovo.layer.shadowColor = UIColor.black.cgColor
        glossyIdeaDollsovo.layer.shadowOpacity = 0.2
        glossyIdeaDollsovo.layer.shadowRadius = 8
        glossyIdeaDollsovo.layer.shadowOffset = CGSize(width: 0, height: 5)
        glossyIdeaDollsovo.accessibilityLabel = "Collector safety feedback"
        glossyIdeaDollsovo.addTarget(self, action: #selector(openDollSafetyRoute), for: .touchUpInside)
        glossyIdeaDollsovo.addTarget(self, action: #selector(pressDollSafetyButton), for: .touchDown)
        glossyIdeaDollsovo.addTarget(self, action: #selector(releaseDollSafetyButton), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        satinPinboardDollvani.addSubview(glossyIdeaDollsovo)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 25, dollFontWeight: .heavy)
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.72
        satinPinboardDollvani.addSubview(layeredCatalogDollquvo)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = UIColor(white: 1, alpha: 0.66)
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .regular)
        cozyMemoDolllaro.numberOfLines = 2
        satinPinboardDollvani.addSubview(cozyMemoDolllaro)

        NSLayoutConstraint.activate([
            satinPinboardDollvani.topAnchor.constraint(equalTo: contentView.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: satinPinboardDollvani.leadingAnchor, constant: 40),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: satinPinboardDollvani.centerYAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalTo: satinPinboardDollvani.heightAnchor, multiplier: 0.68),
            tinyCoverDollmexa.heightAnchor.constraint(equalTo: tinyCoverDollmexa.widthAnchor),

            glossyIdeaDollsovo.topAnchor.constraint(equalTo: satinPinboardDollvani.topAnchor, constant: 14),
            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: satinPinboardDollvani.trailingAnchor, constant: -16),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 42),
            glossyIdeaDollsovo.heightAnchor.constraint(equalTo: glossyIdeaDollsovo.widthAnchor),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: 36),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: glossyIdeaDollsovo.leadingAnchor, constant: -12),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: satinPinboardDollvani.topAnchor, constant: 32),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: layeredCatalogDollquvo.trailingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 12)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollItem: DolluHomeDynamicItem) {
        layeredCatalogDollquvo.text = dollItem.dollTitle
        cozyMemoDolllaro.text = dollItem.dollSummary
        tinyCoverDollmexa.setDollImage(dollURL: dollItem.dollCoverURL, fallbackTitle: dollItem.dollTitle)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        satinMarkerDollpavo = nil
        glossyIdeaDollsovo.transform = .identity
        glossyIdeaDollsovo.alpha = 1
    }

    @objc private func openDollSafetyRoute() {
        satinMarkerDollpavo?()
    }

    @objc private func pressDollSafetyButton() {
        UIView.animate(withDuration: 0.12) {
            self.glossyIdeaDollsovo.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
            self.glossyIdeaDollsovo.alpha = 0.82
        }
    }

    @objc private func releaseDollSafetyButton() {
        UIView.animate(withDuration: 0.18) {
            self.glossyIdeaDollsovo.transform = .identity
            self.glossyIdeaDollsovo.alpha = 1
        }
    }
}
