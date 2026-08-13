import UIKit

final class DollumarbleRuffleDollvaniController: UIViewController {
    var dollPartnerChanged: ((String) -> Void)?
    var dollArchiveChanged: ((DollutailoredGuideDolltavoState) -> Void)?
    private var patternedCollectionDollbop: [whimsyCapeDollcavoPartnerArchive]
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let pearlGuideDollukp = DolluCheckinArchiveRepository()

    init(dollPartners: [whimsyCapeDollcavoPartnerArchive]) {
        patternedCollectionDollbop = dollPartners
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollPartnerArchive()
        reloadDollPartners()
    }

    private func buildDollPartnerArchive() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        navigationController?.setNavigationBarHidden(true, animated: false)

        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollBackButton = UIButton(type: .system)
        dollBackButton.translatesAutoresizingMaskIntoConstraints = false
        dollBackButton.setTitle("‹", for: .normal)
        dollBackButton.setTitleColor(.white, for: .normal)
        dollBackButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 30, dollFontWeight: .heavy)
        dollBackButton.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollBackButton.layer.cornerRadius = 16
        dollBackButton.addTarget(self, action: #selector(closeDollPartnerArchive), for: .touchUpInside)
        view.addSubview(dollBackButton)

        let dollTitleLabel = UILabel()
        dollTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollTitleLabel.text = "Buddy Check-in"
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        dollTitleLabel.textAlignment = .center
        view.addSubview(dollTitleLabel)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 14
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            dollBackButton.widthAnchor.constraint(equalToConstant: 34),
            dollBackButton.heightAnchor.constraint(equalToConstant: 34),

            dollTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dollTitleLabel.centerYAnchor.constraint(equalTo: dollBackButton.centerYAnchor),
            dollTitleLabel.leadingAnchor.constraint(greaterThanOrEqualTo: dollBackButton.trailingAnchor, constant: 12),
            dollTitleLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 22),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: 20),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -20),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -34),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -40)
        ])
    }

    private func reloadDollPartners() {
        satinPinboardDollvani.arrangedSubviews.forEach { $0.removeFromSuperview() }
        satinPinboardDollvani.addArrangedSubview(makeDollInviteCard())
        satinPinboardDollvani.addArrangedSubview(makeDollSectionTitle("Invite for you"))
        let dollTodayInvites = patternedCollectionDollbop.filter { !$0.dollName.hasPrefix("Your ") }
        dollTodayInvites.forEach { dollPartner in
            let dollRow = DolluCheckinPartnerInviteRow(dollPartner)
            dollRow.dollJoinTapped = { [weak self] in
                self?.openDollInviteJoin(dollPartner)
            }
            satinPinboardDollvani.addArrangedSubview(dollRow)
        }
    }

    private func makeDollInviteCard() -> UIView {
        let dollCard = UIControl()
        dollCard.translatesAutoresizingMaskIntoConstraints = false
        dollCard.backgroundColor = UIColor(red: 0.18, green: 0.11, blue: 0.42, alpha: 0.95)
        dollCard.layer.cornerRadius = 18
        dollCard.addTarget(self, action: #selector(openDollInviteComposer), for: .touchUpInside)

        let dollPlus = UILabel()
        dollPlus.translatesAutoresizingMaskIntoConstraints = false
        dollPlus.text = "+"
        dollPlus.textAlignment = .center
        dollPlus.textColor = .white
        dollPlus.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 24, dollFontWeight: .regular)
        dollPlus.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        dollPlus.layer.cornerRadius = 19
        dollPlus.clipsToBounds = true

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = "Invite a buddy"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "Post your own check-in invite"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)

        let dollArrow = UILabel()
        dollArrow.translatesAutoresizingMaskIntoConstraints = false
        dollArrow.text = "›"
        dollArrow.textColor = UIColor(white: 1, alpha: 0.72)
        dollArrow.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .bold)

        [dollPlus, dollTitle, dollCopy, dollArrow].forEach { dollCard.addSubview($0) }
        NSLayoutConstraint.activate([
            dollCard.heightAnchor.constraint(equalToConstant: 68),
            dollPlus.leadingAnchor.constraint(equalTo: dollCard.leadingAnchor, constant: 13),
            dollPlus.centerYAnchor.constraint(equalTo: dollCard.centerYAnchor),
            dollPlus.widthAnchor.constraint(equalToConstant: 38),
            dollPlus.heightAnchor.constraint(equalToConstant: 38),

            dollTitle.leadingAnchor.constraint(equalTo: dollPlus.trailingAnchor, constant: 13),
            dollTitle.topAnchor.constraint(equalTo: dollCard.topAnchor, constant: 15),
            dollTitle.trailingAnchor.constraint(lessThanOrEqualTo: dollArrow.leadingAnchor, constant: -10),

            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 4),
            dollCopy.trailingAnchor.constraint(lessThanOrEqualTo: dollArrow.leadingAnchor, constant: -10),

            dollArrow.trailingAnchor.constraint(equalTo: dollCard.trailingAnchor, constant: -16),
            dollArrow.centerYAnchor.constraint(equalTo: dollCard.centerYAnchor)
        ])
        return dollCard
    }

    private func makeDollSectionTitle(_ dollText: String) -> UILabel {
        let dollLabel = UILabel()
        dollLabel.text = dollText
        dollLabel.textColor = .white
        dollLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        return dollLabel
    }

    private func toggleDollPartner(_ dollPartnerId: String) {
        patternedCollectionDollbop = patternedCollectionDollbop.map {
            var dollPartner = $0
            if dollPartner.dollPartnerId == dollPartnerId {
                dollPartner.pastelGalleryDollmivo.toggle()
            }
            return dollPartner
        }
        dollPartnerChanged?(dollPartnerId)
        reloadDollPartners()
    }

    @objc private func openDollInviteComposer() {
        let dollController = DollufrillyAccessoryDollmivoController()
        dollController.dollInvitePosted = { [weak self] dollInvite in
            self?.appendDollInvite(dollInvite)
        }
        navigationController?.pushViewController(dollController, animated: true)
    }

    private func appendDollInvite(_ dollInvite: DollufrillyCapsuleDArchive) {
        let dollArchive = pearlGuideDollukp.recordDollPostedInvite(dollInvite)
        patternedCollectionDollbop = dollArchive.dollPartners
        dollArchiveChanged?(dollArchive)
        reloadDollPartners()
    }

    private func openDollInviteJoin(_ dollPartner: whimsyCapeDollcavoPartnerArchive) {
        let dollInvite = DolluginghamStylingDollcavoArchive(
            dollInviteId: dollPartner.dollPartnerId,
            dollPartnerId: dollPartner.dollPartnerId,
            dollPartnerName: dollPartner.dollName,
            dollPartnerAvatarURL: nil,
            dollPartnerPreviewURL: dollPartner.dollPreviewURL,
            dollPartnerAvatarAssetName: dollPartner.dollAvatarAssetName,
            dollPartnerPreviewAssetName: dollPartner.dollPreviewAssetName,
            dollThemeName: "Pastel Day",
            dollHonorPointCount: dollPartner.dollStreakCount,
            dollCurrentUploadState: dollPartner.pastelGalleryDollmivo ? .localReady : .empty,
            dollPartnerUploadState: .localReady,
            dollTogetherState: dollPartner.pastelGalleryDollmivo ? .completed : .waitingForCurrentCollectorUpload,
            dollCreatedAt: Date(),
            dollLocalPreviewState: dollPartner.pastelGalleryDollmivo
        )
        let dollController = DolluginghamLookbookDollserontroller(dollInvite: dollInvite)
        dollController.dollInviteFinished = { [weak self] dollPartnerId in
            self?.markDollPartnerFinished(dollPartnerId)
        }
        navigationController?.pushViewController(dollController, animated: true)
    }

    private func markDollPartnerFinished(_ dollPartnerId: String) {
        let dollHonorCount = patternedCollectionDollbop.first(where: { $0.dollPartnerId == dollPartnerId })?.dollStreakCount ?? 25
        let dollArchive = pearlGuideDollukp.completeDollPartnerJoin(dollPartnerId: dollPartnerId, dollHonorCount: dollHonorCount)
        patternedCollectionDollbop = dollArchive.dollPartners
        dollArchiveChanged?(dollArchive)
        reloadDollPartners()
    }

    @objc private func closeDollPartnerArchive() {
        navigationController?.popViewController(animated: true)
    }
}

final class DolluCheckinPartnerInviteRow: UIView {
    var dollJoinTapped: (() -> Void)?
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let crispProgressDollsovo = UILabel()
    private let satinMarkerDollpavo = UIButton(type: .system)

    init(_ dollPartner: whimsyCapeDollcavoPartnerArchive) {
        super.init(frame: .zero)
        buildDollPartnerRow()
        configure(dollPartner)
    }

    required init?(coder: NSCoder) {
        nil
    }

    private func buildDollPartnerRow() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.96)
        layer.cornerRadius = 18

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.layer.cornerRadius = 18
        tinyCoverDollmexa.clipsToBounds = true
        addSubview(tinyCoverDollmexa)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = DolluWardrobePalette.dollMemoMuted
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .regular)
        cozyMemoDolllaro.numberOfLines = 2
        addSubview(cozyMemoDolllaro)

        crispProgressDollsovo.translatesAutoresizingMaskIntoConstraints = false
        crispProgressDollsovo.textColor = UIColor(red: 1, green: 0.76, blue: 0.28, alpha: 1)
        crispProgressDollsovo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        addSubview(crispProgressDollsovo)

        satinMarkerDollpavo.translatesAutoresizingMaskIntoConstraints = false
        satinMarkerDollpavo.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        satinMarkerDollpavo.setTitleColor(.white, for: .normal)
        satinMarkerDollpavo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        satinMarkerDollpavo.layer.cornerRadius = 16
        satinMarkerDollpavo.addTarget(self, action: #selector(tapDollJoin), for: .touchUpInside)
        addSubview(satinMarkerDollpavo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 92),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            tinyCoverDollmexa.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 36),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 36),

            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            satinMarkerDollpavo.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 78),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 32),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: 10),
            layeredCatalogDollquvo.trailingAnchor.constraint(lessThanOrEqualTo: satinMarkerDollpavo.leadingAnchor, constant: -10),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 16),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(lessThanOrEqualTo: satinMarkerDollpavo.leadingAnchor, constant: -10),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 4),

            crispProgressDollsovo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.leadingAnchor),
            crispProgressDollsovo.topAnchor.constraint(equalTo: tinyCoverDollmexa.bottomAnchor, constant: 14),
            crispProgressDollsovo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -13),
            crispProgressDollsovo.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -14)
        ])
    }

    private func configure(_ dollPartner: whimsyCapeDollcavoPartnerArchive) {
        if let dollAssetName = dollPartner.dollAvatarAssetName, let dollImage = UIImage(named: dollAssetName) {
            tinyCoverDollmexa.image = dollImage
        } else {
            tinyCoverDollmexa.setDollImage(dollURL: nil, fallbackTitle: dollPartner.dollName)
        }
        layeredCatalogDollquvo.text = dollPartner.dollName
        cozyMemoDolllaro.text = dollPartner.dollGoal
        crispProgressDollsovo.text = "+ \(dollPartner.dollStreakCount) each"
        satinMarkerDollpavo.setTitle(dollPartner.pastelGalleryDollmivo ? "Joned" : "Join", for: .normal)
        satinMarkerDollpavo.backgroundColor = dollPartner.pastelGalleryDollmivo ? UIColor(red: 0.15, green: 0.42, blue: 0.42, alpha: 0.92) : DolluWardrobePalette.dollRibbonPurple
    }

    @objc private func tapDollJoin() {
        UIView.animate(withDuration: 0.12, animations: {
            self.satinMarkerDollpavo.transform = CGAffineTransform(scaleX: 0.94, y: 0.94)
        }, completion: { _ in
            self.satinMarkerDollpavo.transform = .identity
            self.dollJoinTapped?()
        })
    }
}
