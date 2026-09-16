import UIKit

final class DollukeepsakeCategoryHeaderView: UICollectionReusableView {
    static let dollReuseIdentifier = "DollukeepsakeCategoryHeaderView"
    private let braidedCatalogDollrilo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        braidedCatalogDollrilo.translatesAutoresizingMaskIntoConstraints = false
        braidedCatalogDollrilo.textColor = .white
        braidedCatalogDollrilo.font = UIFont.systemFont(ofSize: 15.8, weight: .semibold)
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

final class DollukeepsakeDisplayDollvaniseCell: UICollectionViewCell {
    static let dollReuseIdentifier = "DollukeepsakeDisplayDollvaniseCell"

    var satinMarkerDollpavo: (() -> Void)?

    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let velvetTagsetDollcavo = UIView()
    private let pearlOutfitDolllaro = UILabel()
    private let glossyIdeaDollsovo = UIButton(type: .custom)

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 12
        contentView.clipsToBounds = true
        contentView.backgroundColor = DolluWardrobePalette.dollArchivePanelSoft

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        contentView.addSubview(tinyCoverDollmexa)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.setImage(UIImage(named: "DolluDelicatePromptDollmora")?.withRenderingMode(.alwaysOriginal), for: .normal)
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
        pearlOutfitDolllaro.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
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
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 30),
            glossyIdeaDollsovo.heightAnchor.constraint(equalTo: glossyIdeaDollsovo.widthAnchor),

            velvetTagsetDollcavo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            velvetTagsetDollcavo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            velvetTagsetDollcavo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            velvetTagsetDollcavo.heightAnchor.constraint(equalToConstant: 21),

            pearlOutfitDolllaro.leadingAnchor.constraint(equalTo: velvetTagsetDollcavo.leadingAnchor, constant: 8),
            pearlOutfitDolllaro.trailingAnchor.constraint(equalTo: velvetTagsetDollcavo.trailingAnchor, constant: -8),
            pearlOutfitDolllaro.centerYAnchor.constraint(equalTo: velvetTagsetDollcavo.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollItem: DollutrimmedClosetDollrevo) {
        pearlOutfitDolllaro.text = dollItem.dollTitle
        tinyCoverDollmexa.setDollImage(dollURL: dollItem.dolltrimmedLaceworkDollyaraL, fallbackTitle: dollItem.dollTitle)
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
    private let satinStitchmapDollzemi = CAShapeLayer()
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let glossyIdeaDollsovo = UIButton(type: .custom)

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .clear

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.backgroundColor = UIColor(red: 33/255, green: 30/255, blue: 65/255, alpha: 1)
        satinPinboardDollvani.layer.cornerRadius = 24
        satinPinboardDollvani.clipsToBounds = true
        contentView.addSubview(satinPinboardDollvani)
        satinStitchmapDollzemi.fillRule = .evenOdd
        satinStitchmapDollzemi.fillColor = UIColor(red: 54/255, green: 50/255, blue: 90/255, alpha: 1).cgColor
        satinStitchmapDollzemi.shadowColor = satinStitchmapDollzemi.fillColor
        satinStitchmapDollzemi.shadowOpacity = 0.75
        satinStitchmapDollzemi.shadowRadius = 17
        satinStitchmapDollzemi.shadowOffset = CGSize(width: 0, height: 4)
        satinPinboardDollvani.layer.addSublayer(satinStitchmapDollzemi)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        tinyCoverDollmexa.layer.cornerRadius = 12
        satinPinboardDollvani.addSubview(tinyCoverDollmexa)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.setImage(UIImage(named: "DolluDelicatePromptDollmora")?.withRenderingMode(.alwaysOriginal), for: .normal)
        glossyIdeaDollsovo.accessibilityLabel = "Collector safety feedback"
        glossyIdeaDollsovo.addTarget(self, action: #selector(openDollSafetyRoute), for: .touchUpInside)
        glossyIdeaDollsovo.addTarget(self, action: #selector(pressDollSafetyButton), for: .touchDown)
        glossyIdeaDollsovo.addTarget(self, action: #selector(releaseDollSafetyButton), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        satinPinboardDollvani.addSubview(glossyIdeaDollsovo)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(16, gentleGalleryDollvani: true)
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = false
        layeredCatalogDollquvo.minimumScaleFactor = 0.72
        satinPinboardDollvani.addSubview(layeredCatalogDollquvo)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = UIColor(white: 192/255, alpha: 1)
        cozyMemoDolllaro.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(14, gentleGalleryDollvani: false)
        cozyMemoDolllaro.numberOfLines = 2
        satinPinboardDollvani.addSubview(cozyMemoDolllaro)

        NSLayoutConstraint.activate([
            satinPinboardDollvani.topAnchor.constraint(equalTo: contentView.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: satinPinboardDollvani.leadingAnchor, constant: 20),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: satinPinboardDollvani.centerYAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 80),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 76),

            glossyIdeaDollsovo.topAnchor.constraint(equalTo: satinPinboardDollvani.topAnchor, constant: 14),
            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: satinPinboardDollvani.trailingAnchor, constant: -16),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 30),
            glossyIdeaDollsovo.heightAnchor.constraint(equalTo: glossyIdeaDollsovo.widthAnchor),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: 25),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: glossyIdeaDollsovo.leadingAnchor, constant: -12),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: satinPinboardDollvani.topAnchor, constant: 16),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: layeredCatalogDollquvo.trailingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.topAnchor, constant: 27)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let satinCoatDollbop = UIBezierPath(rect: satinPinboardDollvani.bounds.insetBy(dx: -100, dy: -100))
        satinCoatDollbop.append(UIBezierPath(roundedRect: satinPinboardDollvani.bounds, cornerRadius: 24).reversing())
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        satinStitchmapDollzemi.frame = satinPinboardDollvani.bounds
        satinStitchmapDollzemi.path = satinCoatDollbop.cgPath
        satinStitchmapDollzemi.shadowPath = satinCoatDollbop.cgPath
        CATransaction.commit()
    }

    func configure(dollItem: DollutrimmedClosetDollrevo) {
        layeredCatalogDollquvo.text = dollItem.dollTitle
        cozyMemoDolllaro.text = dollItem.dollSummary
        tinyCoverDollmexa.setDollImage(dollURL: dollItem.dolltrimmedLaceworkDollyaraL, fallbackTitle: dollItem.dollTitle)
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
