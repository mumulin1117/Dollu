import UIKit

final class DolluCheckinAvatarStrip: UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    private var patternedCollectionDollbop: [DolluCheckinPeerArchive] = []
    private let ribbonDisplayDollrevo: UICollectionView
    private var satinCollectionDollvelo: String?
    var dollPeerSelected: ((DolluCheckinPeerArchive) -> Void)?

    override init(frame: CGRect) {
        let wovenDisplayDollnoroLayout = UICollectionViewFlowLayout()
        wovenDisplayDollnoroLayout.scrollDirection = .horizontal
        wovenDisplayDollnoroLayout.minimumLineSpacing = 10
        wovenDisplayDollnoroLayout.itemSize = CGSize(width: 62, height: 78)
        wovenDisplayDollnoroLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        ribbonDisplayDollrevo = UICollectionView(frame: .zero, collectionViewLayout: wovenDisplayDollnoroLayout)
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.backgroundColor = .clear
        ribbonDisplayDollrevo.showsHorizontalScrollIndicator = false
        ribbonDisplayDollrevo.dataSource = self
        ribbonDisplayDollrevo.delegate = self
        ribbonDisplayDollrevo.register(DolluCheckinAvatarCell.self, forCellWithReuseIdentifier: DolluCheckinAvatarCell.dollReuseIdentifier)
        addSubview(ribbonDisplayDollrevo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 80),
            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: topAnchor),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollPeers: [DolluCheckinPeerArchive]) {
        patternedCollectionDollbop = dollPeers
        if satinCollectionDollvelo == nil || !dollPeers.contains(where: { $0.dollPeerId == satinCollectionDollvelo }) {
            satinCollectionDollvelo = dollPeers.first(where: { $0.dollIsCurrent })?.dollPeerId ?? dollPeers.first?.dollPeerId
        }
        ribbonDisplayDollrevo.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        patternedCollectionDollbop.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dollCell = collectionView.dequeueReusableCell(withReuseIdentifier: DolluCheckinAvatarCell.dollReuseIdentifier, for: indexPath) as? DolluCheckinAvatarCell
        let dollPeer = patternedCollectionDollbop[indexPath.item]
        dollCell?.configure(dollPeer, dollIsSelected: dollPeer.dollPeerId == satinCollectionDollvelo)
        return dollCell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard patternedCollectionDollbop.indices.contains(indexPath.item) else { return }
        let dollPeer = patternedCollectionDollbop[indexPath.item]
        satinCollectionDollvelo = dollPeer.dollPeerId
        collectionView.reloadData()
        dollPeerSelected?(dollPeer)
    }
}

final class DolluCheckinAvatarCell: UICollectionViewCell {
    static let dollReuseIdentifier = "DolluCheckinAvatarCell"
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 14
        contentView.clipsToBounds = true
        contentView.backgroundColor = UIColor(white: 1, alpha: 0.10)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.layer.cornerRadius = 13
        tinyCoverDollmexa.clipsToBounds = true
        contentView.addSubview(tinyCoverDollmexa)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 9, dollFontWeight: .heavy)
        layeredCatalogDollquvo.textAlignment = .center
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.7
        contentView.addSubview(layeredCatalogDollquvo)

        NSLayoutConstraint.activate([
            tinyCoverDollmexa.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            tinyCoverDollmexa.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 48),

            layeredCatalogDollquvo.topAnchor.constraint(equalTo: tinyCoverDollmexa.bottomAnchor, constant: 4),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            layeredCatalogDollquvo.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -3)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollPeer: DolluCheckinPeerArchive, dollIsSelected: Bool) {
        layeredCatalogDollquvo.text = dollPeer.dollName
        if let dollAvatarURL = dollPeer.dollAvatarURL {
            tinyCoverDollmexa.setDollImage(dollURL: dollAvatarURL, fallbackTitle: dollPeer.dollName)
        } else if let dollFallbackAssetName = dollPeer.dollFallbackAssetName, let dollFallbackImage = UIImage(named: dollFallbackAssetName) {
            tinyCoverDollmexa.image = dollFallbackImage
        } else {
            tinyCoverDollmexa.setDollImage(dollURL: nil, fallbackTitle: dollPeer.dollName)
        }
        contentView.layer.borderWidth = dollIsSelected ? 3 : 1
        contentView.layer.borderColor = (dollIsSelected ? UIColor(red: 1, green: 0.17, blue: 0.82, alpha: 1) : UIColor(white: 1, alpha: 0.18)).cgColor
        contentView.backgroundColor = dollIsSelected ? UIColor(red: 0.55, green: 0.18, blue: 0.70, alpha: 0.34) : UIColor(white: 1, alpha: 0.10)
        contentView.transform = dollIsSelected ? CGAffineTransform(scaleX: 1.02, y: 1.02) : .identity
    }
}

final class DolluCheckinHonorBadgeButton: UIControl {
    private let cottonFrameDollukp = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.46, green: 0.22, blue: 0.52, alpha: 0.64)
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.borderColor = UIColor(red: 0.84, green: 0.58, blue: 0.26, alpha: 0.62).cgColor
    
        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.text = "★ "
        cottonFrameDollukp.textColor = UIColor(red: 1, green: 0.77, blue: 0.22, alpha: 1)
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        cottonFrameDollukp.textAlignment = .center
        addSubview(cottonFrameDollukp)

        NSLayoutConstraint.activate([
            cottonFrameDollukp.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cottonFrameDollukp.widthAnchor.constraint(equalToConstant: 88),
            cottonFrameDollukp.heightAnchor.constraint(equalToConstant: 35),
        ])
        addTarget(self, action: #selector(pressDollHonor), for: .touchUpInside)
        addTarget(self, action: #selector(releaseDollHonor), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollStarCount: Int) {
        cottonFrameDollukp.text = "★ \(dollStarCount)"
    }

    @objc private func pressDollHonor() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
            self.alpha = 0.82
        }
    }

    @objc private func releaseDollHonor() {
        UIView.animate(withDuration: 0.16) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

final class DolluCheckinStreakCard: UIControl {
    var dollPrimaryTapped: (() -> Void)?
    private let moonlitPaletteDollukp = CAGradientLayer()
    private let tinyCoverDollmexa = UIImageView(image: UIImage(named: "dollu_checkin_streak_banner"))
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let cottonMoodboardDolllaro = UIStackView()
    private let satinMarkerDollpavo = UIButton(type: .system)
    private let paintedMarkerDollsovo = DolluCheckinDollClusterView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 24
        clipsToBounds = true
        moonlitPaletteDollukp.colors = [
            UIColor(red: 0.55, green: 0.16, blue: 0.86, alpha: 0.98).cgColor,
            UIColor(red: 0.96, green: 0.42, blue: 0.70, alpha: 0.88).cgColor
        ]
        moonlitPaletteDollukp.startPoint = CGPoint(x: 0, y: 0)
        moonlitPaletteDollukp.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(moonlitPaletteDollukp, at: 0)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        tinyCoverDollmexa.alpha = 0.96
        addSubview(tinyCoverDollmexa)

        paintedMarkerDollsovo.translatesAutoresizingMaskIntoConstraints = false
        paintedMarkerDollsovo.isHidden = true
        addSubview(paintedMarkerDollsovo)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = UIColor(white: 1, alpha: 0.78)
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        cozyMemoDolllaro.numberOfLines = 2
        addSubview(cozyMemoDolllaro)

        cottonMoodboardDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cottonMoodboardDolllaro.axis = .horizontal
        cottonMoodboardDolllaro.spacing = 7
        cottonMoodboardDolllaro.distribution = .fillEqually
        addSubview(cottonMoodboardDolllaro)

        satinMarkerDollpavo.translatesAutoresizingMaskIntoConstraints = false
        satinMarkerDollpavo.layer.cornerRadius = 19
        satinMarkerDollpavo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        satinMarkerDollpavo.addTarget(self, action: #selector(tapDollPrimary), for: .touchUpInside)
        addSubview(satinMarkerDollpavo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 168),
            tinyCoverDollmexa.topAnchor.constraint(equalTo: topAnchor),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: leadingAnchor),
            tinyCoverDollmexa.trailingAnchor.constraint(equalTo: trailingAnchor),
            tinyCoverDollmexa.bottomAnchor.constraint(equalTo: bottomAnchor),

            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            layeredCatalogDollquvo.trailingAnchor.constraint(lessThanOrEqualTo: paintedMarkerDollsovo.leadingAnchor, constant: -10),

            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 5),
            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: centerXAnchor, constant: 28),

            paintedMarkerDollsovo.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            paintedMarkerDollsovo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            paintedMarkerDollsovo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.44),
            paintedMarkerDollsovo.heightAnchor.constraint(equalToConstant: 92),

            cottonMoodboardDolllaro.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            cottonMoodboardDolllaro.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            cottonMoodboardDolllaro.topAnchor.constraint(equalTo: cozyMemoDolllaro.bottomAnchor, constant: 18),
            cottonMoodboardDolllaro.heightAnchor.constraint(equalToConstant: 34),

            satinMarkerDollpavo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            satinMarkerDollpavo.topAnchor.constraint(equalTo: cottonMoodboardDolllaro.bottomAnchor, constant: 14),
            satinMarkerDollpavo.widthAnchor.constraint(greaterThanOrEqualToConstant: 132),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 38),
            satinMarkerDollpavo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        moonlitPaletteDollukp.frame = bounds
    }

    func configure(dollCollector: DolluCheckinCollectorProfile, dollDays: [DolluCheckinDayArchive]) {
        layeredCatalogDollquvo.text = "7-Day Streak"
        cozyMemoDolllaro.text = "Day \(max(1, dollCollector.dollStreakCount)) check-in to keep your wardrobe rhythm."
        cottonMoodboardDolllaro.arrangedSubviews.forEach { $0.removeFromSuperview() }
        dollDays.forEach { dollDay in
            let dollPill = DolluCheckinDayPill()
            dollPill.configure(dollDay)
            cottonMoodboardDolllaro.addArrangedSubview(dollPill)
        }
        satinMarkerDollpavo.setTitle(dollCollector.dollCheckedToday ? "Checked in today" : "Check in", for: .normal)
        satinMarkerDollpavo.backgroundColor = dollCollector.dollCheckedToday ? UIColor(white: 1, alpha: 0.22) : .white
        satinMarkerDollpavo.setTitleColor(dollCollector.dollCheckedToday ? .white : DolluWardrobePalette.dollRibbonPurple, for: .normal)
    }

    @objc private func tapDollPrimary() {
        UIView.animate(withDuration: 0.12, animations: {
            self.satinMarkerDollpavo.transform = CGAffineTransform(scaleX: 0.94, y: 0.94)
        }, completion: { _ in
            self.satinMarkerDollpavo.transform = .identity
            self.dollPrimaryTapped?()
        })
    }
}

final class DolluCheckinDayPill: UIView {
    private let layeredCatalogDollquvo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 12
        clipsToBounds = true
        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textAlignment = .center
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 10, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)
        NSLayoutConstraint.activate([
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: leadingAnchor),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: trailingAnchor),
            layeredCatalogDollquvo.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollDay: DolluCheckinDayArchive) {
        layeredCatalogDollquvo.text = dollDay.dollIsDone ? "✓" : dollDay.dollDayText
        layeredCatalogDollquvo.textColor = dollDay.dollIsDone ? DolluWardrobePalette.dollRibbonPurple : UIColor(white: 1, alpha: 0.72)
        backgroundColor = dollDay.dollIsDone ? .white : UIColor(white: 1, alpha: 0.18)
    }
}

final class DolluCheckinBuddyFeatureCard: UIControl {
    var dollOpened: (() -> Void)?
    private let paintedMarkerDollsovo = DolluCheckinMiniBadgeView()
    private let tinyCoverDollmexa = UIImageView(image: UIImage(named: "dollu_checkin_buddy_pair"))
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let satinMarkerDollpavo = UIButton(type: .system)
    private let glossyIdeaDollsovo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.96)
        layer.cornerRadius = 20
        addTarget(self, action: #selector(openDollBuddy), for: .touchUpInside)

        paintedMarkerDollsovo.isHidden = true
        tinyCoverDollmexa.contentMode = .scaleAspectFit

        [paintedMarkerDollsovo, tinyCoverDollmexa, layeredCatalogDollquvo, cozyMemoDolllaro, satinMarkerDollpavo, glossyIdeaDollsovo].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }

        layeredCatalogDollquvo.text = "Check in with 2 collectors"
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        layeredCatalogDollquvo.numberOfLines = 2

        cozyMemoDolllaro.text = "0 of 2 done · top to view"
        cozyMemoDolllaro.textColor = DolluWardrobePalette.dollMemoMuted
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)

        satinMarkerDollpavo.setTitle("Challenge", for: .normal)
        satinMarkerDollpavo.setTitleColor(UIColor(red: 0.84, green: 0.75, blue: 1, alpha: 1), for: .normal)
        satinMarkerDollpavo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        satinMarkerDollpavo.backgroundColor = UIColor(red: 0.33, green: 0.18, blue: 0.72, alpha: 0.45)
        satinMarkerDollpavo.layer.cornerRadius = 12
        satinMarkerDollpavo.isUserInteractionEnabled = false

        glossyIdeaDollsovo.text = "›"
        glossyIdeaDollsovo.textColor = UIColor(white: 1, alpha: 0.7)
        glossyIdeaDollsovo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 25, dollFontWeight: .bold)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 86),
            paintedMarkerDollsovo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            paintedMarkerDollsovo.centerYAnchor.constraint(equalTo: centerYAnchor),
            paintedMarkerDollsovo.widthAnchor.constraint(equalToConstant: 56),
            paintedMarkerDollsovo.heightAnchor.constraint(equalToConstant: 48),

            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: centerYAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 82),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 56),

            satinMarkerDollpavo.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 82),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 24),

            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            glossyIdeaDollsovo.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 12),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: 14),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: satinMarkerDollpavo.leadingAnchor, constant: -8),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 18),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(lessThanOrEqualTo: glossyIdeaDollsovo.leadingAnchor, constant: -10),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 8),
            cozyMemoDolllaro.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -16)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    @objc private func openDollBuddy() {
        UIView.animate(withDuration: 0.12, animations: {
            self.transform = CGAffineTransform(scaleX: 0.98, y: 0.98)
            self.alpha = 0.86
        }, completion: { _ in
            self.transform = .identity
            self.alpha = 1
            self.dollOpened?()
        })
    }
}

final class DolluCheckinTaskCard: UIControl {
    var dollTaskToggled: (() -> Void)?
    private let cottonFrameDollukp = UILabel()
    private let tinyCoverDollmexa = UIImageView(image: UIImage(named: "dollu_checkin_task_eye"))
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let satinMarkerDollpavo = UIButton(type: .system)

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.94)
        layer.cornerRadius = 18
        addTarget(self, action: #selector(toggleDollTask), for: .touchUpInside)

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.layer.cornerRadius = 19
        cottonFrameDollukp.clipsToBounds = true
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        cottonFrameDollukp.backgroundColor = UIColor(red: 1, green: 0.58, blue: 0.75, alpha: 0.26)
        cottonFrameDollukp.isHidden = true

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFit

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        layeredCatalogDollquvo.numberOfLines = 1
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.78

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = DolluWardrobePalette.dollMemoMuted
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        cozyMemoDolllaro.numberOfLines = 1

        satinMarkerDollpavo.translatesAutoresizingMaskIntoConstraints = false
        satinMarkerDollpavo.layer.cornerRadius = 17
        satinMarkerDollpavo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        satinMarkerDollpavo.isUserInteractionEnabled = false

        addSubview(cottonFrameDollukp)
        addSubview(tinyCoverDollmexa)
        addSubview(layeredCatalogDollquvo)
        addSubview(cozyMemoDolllaro)
        addSubview(satinMarkerDollpavo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 74),
            cottonFrameDollukp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cottonFrameDollukp.widthAnchor.constraint(equalToConstant: 42),
            cottonFrameDollukp.heightAnchor.constraint(equalToConstant: 42),

            tinyCoverDollmexa.centerXAnchor.constraint(equalTo: cottonFrameDollukp.centerXAnchor),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: cottonFrameDollukp.centerYAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 64),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 48),

            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            satinMarkerDollpavo.centerYAnchor.constraint(equalTo: centerYAnchor),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 64),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 34),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: 13),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: satinMarkerDollpavo.leadingAnchor, constant: -10),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 15),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: layeredCatalogDollquvo.trailingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 5),
            cozyMemoDolllaro.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -13)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollTask: DolluCheckinTaskArchive) {
        layeredCatalogDollquvo.text = dollTask.dollKind.dollTitle
        cozyMemoDolllaro.text = dollTask.dollIsFinished ? "Visited" : dollTask.dollCopy
        cottonFrameDollukp.text = dollTask.dollKind.dollAccentText
        satinMarkerDollpavo.setTitle(dollTask.dollIsFinished ? "Done" : "Go", for: .normal)
        satinMarkerDollpavo.backgroundColor = dollTask.dollIsFinished ? UIColor(red: 0.15, green: 0.42, blue: 0.42, alpha: 0.92) : DolluWardrobePalette.dollRibbonPurple
        satinMarkerDollpavo.setTitleColor(.white, for: .normal)
    }

    func configure(_ dollPartner: DolluCheckinPartnerArchive) {
        layeredCatalogDollquvo.text = "Check in with \(dollPartner.dollName)"
        cozyMemoDolllaro.text = dollPartner.dollIsJoined ? "Both doll records are ready" : dollPartner.dollGoal
        cottonFrameDollukp.text = "pair"
        satinMarkerDollpavo.setTitle(dollPartner.dollIsJoined ? "Done" : "Go", for: .normal)
        satinMarkerDollpavo.backgroundColor = dollPartner.dollIsJoined ? UIColor(red: 0.15, green: 0.42, blue: 0.42, alpha: 0.92) : DolluWardrobePalette.dollRibbonPurple
        satinMarkerDollpavo.setTitleColor(.white, for: .normal)
    }

    @objc private func toggleDollTask() {
        UIView.animate(withDuration: 0.12, animations: {
            self.transform = CGAffineTransform(scaleX: 0.97, y: 0.97)
        }, completion: { _ in
            self.transform = .identity
            self.dollTaskToggled?()
        })
    }
}

final class DolluCheckinRewardCard: UIView {
    private let cottonFrameDollukp = UILabel()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let ivoryProgressDollrilo = UIProgressView(progressViewStyle: .bar)

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.90)
        layer.cornerRadius = 18
        clipsToBounds = true

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.text = "B"
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        cottonFrameDollukp.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        cottonFrameDollukp.layer.cornerRadius = 20
        cottonFrameDollukp.clipsToBounds = true

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = DolluWardrobePalette.dollMemoMuted
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .regular)
        cozyMemoDolllaro.numberOfLines = 2

        ivoryProgressDollrilo.translatesAutoresizingMaskIntoConstraints = false
        ivoryProgressDollrilo.progressTintColor = DolluWardrobePalette.dollRibbonPurple
        ivoryProgressDollrilo.trackTintColor = UIColor(white: 1, alpha: 0.14)

        addSubview(cottonFrameDollukp)
        addSubview(layeredCatalogDollquvo)
        addSubview(cozyMemoDolllaro)
        addSubview(ivoryProgressDollrilo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 86),
            cottonFrameDollukp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cottonFrameDollukp.widthAnchor.constraint(equalToConstant: 40),
            cottonFrameDollukp.heightAnchor.constraint(equalTo: cottonFrameDollukp.widthAnchor),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: 12),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 14),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: layeredCatalogDollquvo.trailingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 4),

            ivoryProgressDollrilo.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            ivoryProgressDollrilo.trailingAnchor.constraint(equalTo: layeredCatalogDollquvo.trailingAnchor),
            ivoryProgressDollrilo.topAnchor.constraint(equalTo: cozyMemoDolllaro.bottomAnchor, constant: 10),
            ivoryProgressDollrilo.heightAnchor.constraint(equalToConstant: 6),
            ivoryProgressDollrilo.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -14)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollReward: DolluCheckinRewardArchive) {
        layeredCatalogDollquvo.text = dollReward.dollTitle
        cozyMemoDolllaro.text = dollReward.dollIsUnlocked ? "Unlocked collector honor" : dollReward.dollCopy
        ivoryProgressDollrilo.progress = Float(dollReward.dollProgress)
        cottonFrameDollukp.alpha = dollReward.dollIsUnlocked ? 1 : 0.55
    }
}

final class DolluCheckinHistoryRow: UIView {
    init(_ dollHistory: DolluCheckinHistoryArchive) {
        super.init(frame: .zero)
        buildDollHistoryRow(dollHistory)
    }

    required init?(coder: NSCoder) {
        nil
    }

    private func buildDollHistoryRow(_ dollHistory: DolluCheckinHistoryArchive) {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.86)
        layer.cornerRadius = 18

        let dollTitleLabel = UILabel()
        dollTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollTitleLabel.text = dollHistory.dollKind.dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)

        let dollCopyLabel = UILabel()
        dollCopyLabel.translatesAutoresizingMaskIntoConstraints = false
        dollCopyLabel.text = dollHistory.dollNote
        dollCopyLabel.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopyLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .regular)
        dollCopyLabel.numberOfLines = 2

        let dollDateLabel = UILabel()
        dollDateLabel.translatesAutoresizingMaskIntoConstraints = false
        dollDateLabel.text = dollHistory.dollDateText
        dollDateLabel.textColor = UIColor(red: 0.83, green: 0.76, blue: 1, alpha: 1)
        dollDateLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)

        addSubview(dollTitleLabel)
        addSubview(dollCopyLabel)
        addSubview(dollDateLabel)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 74),
            dollDateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            dollDateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),

            dollTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            dollTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            dollTitleLabel.trailingAnchor.constraint(lessThanOrEqualTo: dollDateLabel.leadingAnchor, constant: -12),

            dollCopyLabel.leadingAnchor.constraint(equalTo: dollTitleLabel.leadingAnchor),
            dollCopyLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            dollCopyLabel.topAnchor.constraint(equalTo: dollTitleLabel.bottomAnchor, constant: 6),
            dollCopyLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -13)
        ])
    }
}

final class DolluCheckinDollClusterView: UIView {
    override func draw(_ rect: CGRect) {
        guard let dollContext = UIGraphicsGetCurrentContext() else { return }
        dollContext.saveGState()
        let dollColors = [
            UIColor(white: 1, alpha: 0.16),
            UIColor(red: 1, green: 0.78, blue: 0.92, alpha: 0.42),
            UIColor(red: 0.62, green: 0.30, blue: 0.98, alpha: 0.40)
        ]
        for dollIndex in 0..<5 {
            let dollX = CGFloat(dollIndex) * rect.width / 6 + 8
            let dollY = CGFloat(dollIndex % 2) * 10 + 14
            dollColors[dollIndex % dollColors.count].setFill()
            UIBezierPath(ovalIn: CGRect(x: dollX, y: dollY, width: 38, height: 38)).fill()
            UIBezierPath(roundedRect: CGRect(x: dollX - 5, y: dollY + 32, width: 48, height: 32), cornerRadius: 16).fill()
        }
        dollContext.restoreGState()
    }
}

final class DolluCheckinMiniBadgeView: UIView {
    override func draw(_ rect: CGRect) {
        UIColor(red: 1, green: 0.27, blue: 0.63, alpha: 0.95).setFill()
        UIBezierPath(ovalIn: CGRect(x: 5, y: 12, width: 25, height: 25)).fill()
        UIColor(red: 1, green: 0.64, blue: 0.73, alpha: 0.95).setFill()
        UIBezierPath(ovalIn: CGRect(x: 25, y: 7, width: 28, height: 28)).fill()
        UIColor(white: 1, alpha: 0.78).setStroke()
        let dollPath = UIBezierPath()
        dollPath.lineWidth = 3
        dollPath.move(to: CGPoint(x: 17, y: 32))
        dollPath.addLine(to: CGPoint(x: 28, y: 22))
        dollPath.addLine(to: CGPoint(x: 42, y: 34))
        dollPath.stroke()
    }
}
