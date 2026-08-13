import UIKit

enum DollutulleCapsuleDollnoroTheme: String, CaseIterable {
    case pastelDay
    case cozyKnits
    case gothic
    case sporty

    var dollTitle: String {
        switch self {
        case .pastelDay: return "Pastel Day"
        case .cozyKnits: return "Cozy Knits"
        case .gothic: return "Gothic"
        case .sporty: return "Sporty"
        }
    }
}

enum DolluCglossyBeadworkDteScope: String {
    case anyone
    case collectorsOnly

    var dollTitle: String {
        switch self {
        case .anyone: return "Anyone"
        case .collectorsOnly: return "Collectors only"
        }
    }
}

enum DolluCheckinInviteState: String {
    case waiting
    case joined
    case completed
}

struct DollufrillyCapsuleDArchive: Hashable {
    let dollInviteId: String
    let dollTheme: DollutulleCapsuleDollnoroTheme
    let dollOpenHours: Int
    let dollScope: DolluCglossyBeadworkDteScope
    let dollCollectorName: String
    let dollCollectorAvatarURL: URL?
    let dollCreatedAt: Date
    var dollState: DolluCheckinInviteState
}

final class DollufrillyAccessoryDollmivoController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var dollInvitePosted: ((DollufrillyCapsuleDArchive) -> Void)?

    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let pearlGuideDollukp = UIStackView()
    private let dreamyDisplayDolltavo = DolluCheckinDollUploadCard()
    private let gentleCatalogDollpavo = DolluCheckinJoinScopeSwitchView()
    private let satinMarkerDollpavo = DolluminiLayerDollmivoButton(dollButtonTitle: "Publish Invite")
    private let floralHintDollvelo = DolluminiLayerDollmivoButton(dollButtonTitle: "Cancel", dollUsesLightStyle: true)
    private var patternedCollectionDollbop: [DolluCheckinThemePillView] = []
    private var mistyThemeDollfina: DollutulleCapsuleDollnoroTheme = .pastelDay
    private var cozyArchiveDollniva: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        buildDollInviteComposer()
        refreshDollThemePills()
    }

    private func buildDollInviteComposer() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        navigationController?.setNavigationBarHidden(true, animated: false)

        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollBackButton = makeDollBackButton()
        view.addSubview(dollBackButton)

        let glossyLaceworkDollmora = UILabel()
        glossyLaceworkDollmora.translatesAutoresizingMaskIntoConstraints = false
        glossyLaceworkDollmora.text = "New Invite"
        glossyLaceworkDollmora.textColor = .white
        glossyLaceworkDollmora.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        view.addSubview(glossyLaceworkDollmora)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 16
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        let dollIntro = UILabel()
        dollIntro.text = "Post a partner check-in. Pick a theme and time, then let another collector join with a doll look."
        dollIntro.textColor = DolluWardrobePalette.dollMemoMuted
        dollIntro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        dollIntro.numberOfLines = 0
        satinPinboardDollvani.addArrangedSubview(dollIntro)

        satinPinboardDollvani.addArrangedSubview(makeDollSmallTitle("Today's theme"))
        buildDollThemeRow()
        satinPinboardDollvani.addArrangedSubview(pearlGuideDollukp)

        satinPinboardDollvani.addArrangedSubview(makeDollSmallTitle("Your doll"))
        dreamyDisplayDolltavo.dollUploadTapped = { [weak self] in
            self?.openDollImageSourceOptions()
        }
        satinPinboardDollvani.addArrangedSubview(dreamyDisplayDolltavo)

        satinPinboardDollvani.addArrangedSubview(makeDollSmallTitle("Who can join"))
        gentleCatalogDollpavo.dollScopeChanged = { _ in }
        satinPinboardDollvani.addArrangedSubview(gentleCatalogDollpavo)

        satinPinboardDollvani.addArrangedSubview(makeDollHonorNote())

        satinMarkerDollpavo.addTarget(self, action: #selector(publishDollInvite), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(satinMarkerDollpavo)

        floralHintDollvelo.setTitleColor(.white, for: .normal)
        floralHintDollvelo.backgroundColor = UIColor(white: 1, alpha: 0.10)
        floralHintDollvelo.addTarget(self, action: #selector(closeDollInviteComposer), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(floralHintDollvelo)

        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            dollBackButton.widthAnchor.constraint(equalToConstant: 34),
            dollBackButton.heightAnchor.constraint(equalToConstant: 34),

            glossyLaceworkDollmora.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            glossyLaceworkDollmora.centerYAnchor.constraint(equalTo: dollBackButton.centerYAnchor),
            glossyLaceworkDollmora.leadingAnchor.constraint(greaterThanOrEqualTo: dollBackButton.trailingAnchor, constant: 12),
            glossyLaceworkDollmora.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 18),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: 22),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -22),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -26),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -44)
        ])
    }

    private func buildDollThemeRow() {
        pearlGuideDollukp.axis = .horizontal
        pearlGuideDollukp.spacing = 8
        pearlGuideDollukp.alignment = .leading
        pearlGuideDollukp.distribution = .fillProportionally

        DollutulleCapsuleDollnoroTheme.allCases.forEach { dollTheme in
            let dollPill = DolluCheckinThemePillView(dollTheme: dollTheme)
            dollPill.addTarget(self, action: #selector(selectDollTheme(_:)), for: .touchUpInside)
            patternedCollectionDollbop.append(dollPill)
            pearlGuideDollukp.addArrangedSubview(dollPill)
        }
    }

    private func makeDollBackButton() -> UIButton {
        let dollBackButton = UIButton(type: .system)
        dollBackButton.translatesAutoresizingMaskIntoConstraints = false
        dollBackButton.setTitle("‹", for: .normal)
        dollBackButton.setTitleColor(.white, for: .normal)
        dollBackButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 30, dollFontWeight: .heavy)
        dollBackButton.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollBackButton.layer.cornerRadius = 16
        dollBackButton.addTarget(self, action: #selector(closeDollInviteComposer), for: .touchUpInside)
        return dollBackButton
    }

    private func makeDollSmallTitle(_ dollText: String) -> UILabel {
        let dollLabel = UILabel()
        dollLabel.text = dollText
        dollLabel.textColor = UIColor(white: 1, alpha: 0.92)
        dollLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        return dollLabel
    }

    private func makeDollHonorNote() -> UIView {
        let dollCard = UIView()
        dollCard.translatesAutoresizingMaskIntoConstraints = false
        dollCard.backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.28, alpha: 0.92)
        dollCard.layer.cornerRadius = 18
        dollCard.layer.borderWidth = 1
        dollCard.layer.borderColor = UIColor(white: 1, alpha: 0.08).cgColor

        let dollSeal = UILabel()
        dollSeal.translatesAutoresizingMaskIntoConstraints = false
        dollSeal.text = "★"
        dollSeal.textColor = UIColor(red: 1, green: 0.76, blue: 0.28, alpha: 1)
        dollSeal.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "You both earn +25 honors when you check in together."
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        dollCopy.numberOfLines = 0

        dollCard.addSubview(dollSeal)
        dollCard.addSubview(dollCopy)
        NSLayoutConstraint.activate([
            dollCard.heightAnchor.constraint(greaterThanOrEqualToConstant: 58),
            dollSeal.leadingAnchor.constraint(equalTo: dollCard.leadingAnchor, constant: 16),
            dollSeal.centerYAnchor.constraint(equalTo: dollCard.centerYAnchor),
            dollCopy.leadingAnchor.constraint(equalTo: dollSeal.trailingAnchor, constant: 12),
            dollCopy.trailingAnchor.constraint(equalTo: dollCard.trailingAnchor, constant: -16),
            dollCopy.topAnchor.constraint(equalTo: dollCard.topAnchor, constant: 12),
            dollCopy.bottomAnchor.constraint(equalTo: dollCard.bottomAnchor, constant: -12)
        ])
        return dollCard
    }

    private func refreshDollThemePills() {
        patternedCollectionDollbop.forEach {
            $0.dollIsChosen = $0.dollTheme == mistyThemeDollfina
        }
    }

    private func openDollImageSourceOptions() {
        let dollPanel = DolluCheckinImageSourcePanel(
            dollTitle: "Add doll photo",
            dollCopy: "Choose a doll styling record for this invite.",
            dollShowsCamera: UIImagePickerController.isSourceTypeAvailable(.camera)
        )
        dollPanel.dollAlbumTapped = { [weak self, weak dollPanel] in
            dollPanel?.removeFromSuperview()
            self?.presentDollImagePicker(.photoLibrary)
        }
        dollPanel.dollCameraTapped = { [weak self, weak dollPanel] in
            dollPanel?.removeFromSuperview()
            self?.presentDollImagePicker(.camera)
        }
        dollPanel.dollCancelTapped = { [weak dollPanel] in
            dollPanel?.removeFromSuperview()
        }
        view.addSubview(dollPanel)
        NSLayoutConstraint.activate([
            dollPanel.topAnchor.constraint(equalTo: view.topAnchor),
            dollPanel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dollPanel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dollPanel.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func presentDollImagePicker(_ dollSourceType: UIImagePickerController.SourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(dollSourceType) else { return }
        let dollPicker = UIImagePickerController()
        dollPicker.sourceType = dollSourceType
        dollPicker.allowsEditing = true
        dollPicker.delegate = self
        present(dollPicker, animated: true)
    }

    @objc private func selectDollTheme(_ dollSender: DolluCheckinThemePillView) {
        mistyThemeDollfina = dollSender.dollTheme
        refreshDollThemePills()
    }

    @objc private func publishDollInvite() {
        guard cozyArchiveDollniva != nil else {
            openDollImageSourceOptions()
            return
        }
        satinMarkerDollpavo.isEnabled = false
        satinMarkerDollpavo.alpha = 0.72

        let dollRecord = DolluWardrobeArchiveStore.satinCollectionArchive.currentDollCollectorRecord()
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        let dollInvite = DollufrillyCapsuleDArchive(
            dollInviteId: UUID().uuidString,
            dollTheme: mistyThemeDollfina,
            dollOpenHours: 6,
            dollScope: gentleCatalogDollpavo.dollScope,
            dollCollectorName: dollRecord?.dollCollectorName ?? dollSession.currentDollCollectorEmail ?? "Dollu Collector",
            dollCollectorAvatarURL: nil,
            dollCreatedAt: Date(),
            dollState: .waiting
        )

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) { [weak self] in
            guard let self else { return }
            self.dollInvitePosted?(dollInvite)
            let dollSuccess = DolluCheckinInviteSuccessViewController(dollInvite: dollInvite)
            self.navigationController?.pushViewController(dollSuccess, animated: true)
        }
    }

    @objc private func closeDollInviteComposer() {
        navigationController?.popViewController(animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let dollImage = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        cozyArchiveDollniva = dollImage
        dreamyDisplayDolltavo.configure(dollPreviewImage: dollImage)
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}

final class DolluCheckinThemePillView: UIControl {
    let dollTheme: DollutulleCapsuleDollnoroTheme
    private let layeredCatalogDollquvo = UILabel()
    var dollIsChosen = false {
        didSet { refreshDollPillStyle() }
    }

    init(dollTheme: DollutulleCapsuleDollnoroTheme) {
        self.dollTheme = dollTheme
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 18
        layer.borderWidth = 1

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.text = dollTheme.dollTitle
        layeredCatalogDollquvo.textAlignment = .center
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 36),
            widthAnchor.constraint(greaterThanOrEqualToConstant: 70),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            layeredCatalogDollquvo.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        refreshDollPillStyle()
    }

    required init?(coder: NSCoder) {
        nil
    }

    private func refreshDollPillStyle() {
        backgroundColor = dollIsChosen ? UIColor(red: 0.58, green: 0.18, blue: 0.82, alpha: 0.55) : UIColor(white: 1, alpha: 0.08)
        layer.borderColor = (dollIsChosen ? UIColor(red: 1, green: 0.22, blue: 0.78, alpha: 0.8) : UIColor(white: 1, alpha: 0.10)).cgColor
        layeredCatalogDollquvo.textColor = dollIsChosen ? .white : DolluWardrobePalette.dollMemoMuted
    }
}

final class DolluCheckinJoinScopeSwitchView: UIControl {
    private let moonlitPaletteDollukp = CAGradientLayer()
    private let cozyWardrobeDollukp = UIButton(type: .system)
    private let classicArchiveDollpiri = UIButton(type: .system)
    var dollScope: DolluCglossyBeadworkDteScope = .anyone {
        didSet { refreshDollScopeStyle() }
    }
    var dollScopeChanged: ((DolluCglossyBeadworkDteScope) -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(white: 1, alpha: 0.08)
        layer.cornerRadius = 18
        clipsToBounds = true
        moonlitPaletteDollukp.colors = [
            DolluWardrobePalette.dollRibbonViolet.cgColor,
            UIColor(red: 1, green: 0.13, blue: 0.66, alpha: 1).cgColor
        ]
        moonlitPaletteDollukp.startPoint = CGPoint(x: 0, y: 0.5)
        moonlitPaletteDollukp.endPoint = CGPoint(x: 1, y: 0.5)
        layer.insertSublayer(moonlitPaletteDollukp, at: 0)

        [cozyWardrobeDollukp, classicArchiveDollpiri].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.setTitleColor(.white, for: .normal)
            $0.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
            addSubview($0)
        }
        cozyWardrobeDollukp.setTitle(DolluCglossyBeadworkDteScope.anyone.dollTitle, for: .normal)
        classicArchiveDollpiri.setTitle(DolluCglossyBeadworkDteScope.collectorsOnly.dollTitle, for: .normal)
        cozyWardrobeDollukp.addTarget(self, action: #selector(selectDollAnyone), for: .touchUpInside)
        classicArchiveDollpiri.addTarget(self, action: #selector(selectDollCollectors), for: .touchUpInside)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 52),
            cozyWardrobeDollukp.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            cozyWardrobeDollukp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            cozyWardrobeDollukp.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            cozyWardrobeDollukp.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5, constant: -4),
            classicArchiveDollpiri.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            classicArchiveDollpiri.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            classicArchiveDollpiri.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            classicArchiveDollpiri.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5, constant: -4)
        ])
        refreshDollScopeStyle()
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let dollSelectedFrame = dollScope == .anyone ? cozyWardrobeDollukp.frame : classicArchiveDollpiri.frame
        moonlitPaletteDollukp.frame = dollSelectedFrame
        moonlitPaletteDollukp.cornerRadius = dollSelectedFrame.height / 2
    }

    private func refreshDollScopeStyle() {
        cozyWardrobeDollukp.alpha = dollScope == .anyone ? 1 : 0.72
        classicArchiveDollpiri.alpha = dollScope == .collectorsOnly ? 1 : 0.72
        setNeedsLayout()
    }

    @objc private func selectDollAnyone() {
        dollScope = .anyone
        dollScopeChanged?(dollScope)
    }

    @objc private func selectDollCollectors() {
        dollScope = .collectorsOnly
        dollScopeChanged?(dollScope)
    }
}

final class DolluCheckinDollUploadCard: UIControl {
    var dollUploadTapped: (() -> Void)?
    private let moonlitPaletteDollukp = CAGradientLayer()
    private let tinyCoverDollmexa = UIImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cottonFrameDollukp = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.16, green: 0.11, blue: 0.38, alpha: 0.70)
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.67, green: 0.36, blue: 1, alpha: 0.34).cgColor
        clipsToBounds = true
        moonlitPaletteDollukp.colors = [
            UIColor(red: 0.34, green: 0.19, blue: 0.72, alpha: 0.55).cgColor,
            UIColor(red: 0.11, green: 0.08, blue: 0.23, alpha: 0.45).cgColor
        ]
        moonlitPaletteDollukp.startPoint = CGPoint(x: 0, y: 0)
        moonlitPaletteDollukp.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(moonlitPaletteDollukp, at: 0)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.text = "You"
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.alpha = 0
        addSubview(tinyCoverDollmexa)

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.text = "◎"
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 25, dollFontWeight: .heavy)
        cottonFrameDollukp.backgroundColor = UIColor(white: 1, alpha: 0.12)
        cottonFrameDollukp.layer.cornerRadius = 17
        cottonFrameDollukp.clipsToBounds = true
        addSubview(cottonFrameDollukp)

        addTarget(self, action: #selector(tapDollUpload), for: .touchUpInside)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 132),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            tinyCoverDollmexa.topAnchor.constraint(equalTo: topAnchor),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: leadingAnchor),
            tinyCoverDollmexa.trailingAnchor.constraint(equalTo: trailingAnchor),
            tinyCoverDollmexa.bottomAnchor.constraint(equalTo: bottomAnchor),
            cottonFrameDollukp.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            cottonFrameDollukp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -13),
            cottonFrameDollukp.widthAnchor.constraint(equalToConstant: 34),
            cottonFrameDollukp.heightAnchor.constraint(equalToConstant: 34)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        moonlitPaletteDollukp.frame = bounds
    }

    func configure(dollPreviewImage: UIImage?) {
        tinyCoverDollmexa.image = dollPreviewImage
        let dollHasPreview = dollPreviewImage != nil
        UIView.animate(withDuration: 0.18) {
            self.tinyCoverDollmexa.alpha = dollHasPreview ? 1 : 0
            self.cottonFrameDollukp.text = dollHasPreview ? "✓" : "◎"
        }
    }

    @objc private func tapDollUpload() {
        UIView.animate(withDuration: 0.12, animations: {
            self.transform = CGAffineTransform(scaleX: 0.985, y: 0.985)
        }, completion: { _ in
            self.transform = .identity
            self.dollUploadTapped?()
        })
    }
}

final class DolluCheckinImageSourcePanel: UIControl {
    var dollAlbumTapped: (() -> Void)?
    var dollCameraTapped: (() -> Void)?
    var dollCancelTapped: (() -> Void)?
    private let satinPinboardDollvani = UIStackView()

    init(dollTitle: String, dollCopy: String, dollShowsCamera: Bool) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(white: 0, alpha: 0.48)
        addTarget(self, action: #selector(cancelDollPanel), for: .touchUpInside)

        let dollCard = UIView()
        dollCard.translatesAutoresizingMaskIntoConstraints = false
        dollCard.backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.30, alpha: 0.98)
        dollCard.layer.cornerRadius = 24
        dollCard.layer.borderWidth = 1
        dollCard.layer.borderColor = UIColor(white: 1, alpha: 0.08).cgColor
        addSubview(dollCard)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 12
        satinPinboardDollvani.isUserInteractionEnabled = true
        dollCard.addSubview(satinPinboardDollvani)

        let dollTitleLabel = UILabel()
        dollTitleLabel.text = dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        dollTitleLabel.textAlignment = .center
        satinPinboardDollvani.addArrangedSubview(dollTitleLabel)

        let dollCopyLabel = UILabel()
        dollCopyLabel.text = dollCopy
        dollCopyLabel.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopyLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .semibold)
        dollCopyLabel.textAlignment = .center
        dollCopyLabel.numberOfLines = 2
        satinPinboardDollvani.addArrangedSubview(dollCopyLabel)

        let dollAlbumButton = makeDollPanelButton("Choose from Album", dollUsesAccent: true)
        dollAlbumButton.addTarget(self, action: #selector(openDollAlbum), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollAlbumButton)

        if dollShowsCamera {
            let dollCameraButton = makeDollPanelButton("Take Photo", dollUsesAccent: true)
            dollCameraButton.addTarget(self, action: #selector(openDollCamera), for: .touchUpInside)
            satinPinboardDollvani.addArrangedSubview(dollCameraButton)
        }

        let dollCancelButton = makeDollPanelButton("Cancel", dollUsesAccent: false)
        dollCancelButton.addTarget(self, action: #selector(cancelDollPanel), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollCancelButton)

        NSLayoutConstraint.activate([
            dollCard.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            dollCard.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            dollCard.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -18),
            satinPinboardDollvani.topAnchor.constraint(equalTo: dollCard.topAnchor, constant: 20),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: dollCard.leadingAnchor, constant: 18),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: dollCard.trailingAnchor, constant: -18),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: dollCard.bottomAnchor, constant: -18)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    private func makeDollPanelButton(_ dollTitle: String, dollUsesAccent: Bool) -> UIButton {
        let dollButton = UIButton(type: .system)
        dollButton.translatesAutoresizingMaskIntoConstraints = false
        dollButton.setTitle(dollTitle, for: .normal)
        dollButton.setTitleColor(.white, for: .normal)
        dollButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        dollButton.backgroundColor = dollUsesAccent ? DolluWardrobePalette.dollRibbonPurple : UIColor(white: 1, alpha: 0.10)
        dollButton.layer.cornerRadius = 22
        dollButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        return dollButton
    }

    @objc private func openDollAlbum() {
        dollAlbumTapped?()
    }

    @objc private func openDollCamera() {
        dollCameraTapped?()
    }

    @objc private func cancelDollPanel() {
        dollCancelTapped?()
    }
}

final class DolluCheckinInviteSuccessViewController: UIViewController {
    private let dollInvite: DollufrillyCapsuleDArchive
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()

    init(dollInvite: DollufrillyCapsuleDArchive) {
        self.dollInvite = dollInvite
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollInviteSuccess()
    }

    private func buildDollInviteSuccess() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollBackButton = UIButton(type: .system)
        dollBackButton.translatesAutoresizingMaskIntoConstraints = false
        dollBackButton.setTitle("‹", for: .normal)
        dollBackButton.setTitleColor(.white, for: .normal)
        dollBackButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 30, dollFontWeight: .heavy)
        dollBackButton.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollBackButton.layer.cornerRadius = 16
        dollBackButton.addTarget(self, action: #selector(backDollCheckin), for: .touchUpInside)
        view.addSubview(dollBackButton)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.alignment = .center
        satinPinboardDollvani.spacing = 18
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        let dollConfetti = DolluCheckinConfettiView()
        view.addSubview(dollConfetti)

        let dollSeal = DolluCheckinSuccessSealView()
        satinPinboardDollvani.addArrangedSubview(dollSeal)

        let dollTitle = UILabel()
        dollTitle.text = "Invite Posted!"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 24, dollFontWeight: .heavy)
        dollTitle.textAlignment = .center
        satinPinboardDollvani.addArrangedSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.text = "\(dollInvite.dollTheme.dollTitle) · open for \(dollInvite.dollOpenHours) hours"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .semibold)
        dollCopy.textAlignment = .center
        satinPinboardDollvani.addArrangedSubview(dollCopy)

        let dollStatusCard = makeDollStatusCard()
        satinPinboardDollvani.addArrangedSubview(dollStatusCard)
        satinPinboardDollvani.setCustomSpacing(68, after: dollStatusCard)

        let dollSpacer = UIView()
        dollSpacer.translatesAutoresizingMaskIntoConstraints = false
        dollSpacer.heightAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
        satinPinboardDollvani.addArrangedSubview(dollSpacer)

        let dollBackAction = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Check-in")
        dollBackAction.addTarget(self, action: #selector(backDollCheckin), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollBackAction)

        let dollArchiveAction = DolluminiLayerDollmivoButton(dollButtonTitle: "View My Check-ins", dollUsesLightStyle: true)
        dollArchiveAction.setTitleColor(.white, for: .normal)
        dollArchiveAction.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollArchiveAction.addTarget(self, action: #selector(revealDollProfileCheckins), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollArchiveAction)

        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollConfetti.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            dollConfetti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dollConfetti.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dollConfetti.heightAnchor.constraint(equalToConstant: 170),

            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            dollBackButton.widthAnchor.constraint(equalToConstant: 34),
            dollBackButton.heightAnchor.constraint(equalToConstant: 34),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 66),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: 22),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -22),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -20),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -44),
            dollStatusCard.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor),
            dollBackAction.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor),
            dollArchiveAction.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor)
        ])
    }

    private func makeDollStatusCard() -> UIView {
        let dollCard = UIView()
        dollCard.translatesAutoresizingMaskIntoConstraints = false
        dollCard.backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.30, alpha: 0.92)
        dollCard.layer.cornerRadius = 18
        dollCard.layer.borderWidth = 1
        dollCard.layer.borderColor = UIColor(white: 1, alpha: 0.08).cgColor

        let dollImage = UIImageView(image: DolluPlaceholderImageFactory.makeDollPlaceholder(title: dollInvite.dollCollectorName))
        dollImage.translatesAutoresizingMaskIntoConstraints = false
        dollImage.contentMode = .scaleAspectFill
        dollImage.layer.cornerRadius = 10
        dollImage.clipsToBounds = true

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = "Your invite is active"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "We'll let you know when another collector joins."
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .semibold)
        dollCopy.numberOfLines = 2

        let dollBadge = UILabel()
        dollBadge.translatesAutoresizingMaskIntoConstraints = false
        dollBadge.text = "Waiting"
        dollBadge.textColor = .white
        dollBadge.textAlignment = .center
        dollBadge.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 10, dollFontWeight: .heavy)
        dollBadge.backgroundColor = UIColor(red: 0.45, green: 0.29, blue: 0.96, alpha: 0.72)
        dollBadge.layer.cornerRadius = 12
        dollBadge.clipsToBounds = true

        [dollImage, dollTitle, dollCopy, dollBadge].forEach { dollCard.addSubview($0) }
        NSLayoutConstraint.activate([
            dollCard.heightAnchor.constraint(greaterThanOrEqualToConstant: 80),
            dollImage.leadingAnchor.constraint(equalTo: dollCard.leadingAnchor, constant: 14),
            dollImage.centerYAnchor.constraint(equalTo: dollCard.centerYAnchor),
            dollImage.widthAnchor.constraint(equalToConstant: 48),
            dollImage.heightAnchor.constraint(equalToConstant: 48),
            dollBadge.trailingAnchor.constraint(equalTo: dollCard.trailingAnchor, constant: -14),
            dollBadge.centerYAnchor.constraint(equalTo: dollCard.centerYAnchor),
            dollBadge.widthAnchor.constraint(equalToConstant: 68),
            dollBadge.heightAnchor.constraint(equalToConstant: 24),
            dollTitle.leadingAnchor.constraint(equalTo: dollImage.trailingAnchor, constant: 12),
            dollTitle.trailingAnchor.constraint(lessThanOrEqualTo: dollBadge.leadingAnchor, constant: -10),
            dollTitle.topAnchor.constraint(equalTo: dollCard.topAnchor, constant: 18),
            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.trailingAnchor.constraint(lessThanOrEqualTo: dollBadge.leadingAnchor, constant: -10),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 4),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: dollCard.bottomAnchor, constant: -14)
        ])
        return dollCard
    }

    @objc private func backDollCheckin() {
        navigationController?.popToRootViewController(animated: true)
    }

    @objc private func revealDollProfileCheckins() {
        guard let dollTabs = navigationController?.parent as? DolluheirloomPropDollseroController else {
            navigationController?.popToRootViewController(animated: true)
            return
        }
        dollTabs.revealDollProfileCheckinArchive()
    }
}

final class DolluCheckinSuccessSealView: UIView {
    private let moonlitPaletteDollukp = CAGradientLayer()
    private let cottonFrameDollukp = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 46
        layer.shadowColor = DolluWardrobePalette.dollRibbonViolet.cgColor
        layer.shadowOpacity = 0.55
        layer.shadowRadius = 18
        layer.shadowOffset = CGSize(width: 0, height: 8)
        moonlitPaletteDollukp.colors = [
            UIColor(red: 0.45, green: 0.31, blue: 1, alpha: 1).cgColor,
            UIColor(red: 1, green: 0.12, blue: 0.70, alpha: 1).cgColor
        ]
        moonlitPaletteDollukp.startPoint = CGPoint(x: 0, y: 0)
        moonlitPaletteDollukp.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(moonlitPaletteDollukp, at: 0)

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.text = "✓"
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 44, dollFontWeight: .heavy)
        addSubview(cottonFrameDollukp)

        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 92),
            heightAnchor.constraint(equalToConstant: 92),
            cottonFrameDollukp.centerXAnchor.constraint(equalTo: centerXAnchor),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        moonlitPaletteDollukp.frame = bounds
        moonlitPaletteDollukp.cornerRadius = bounds.height / 2
    }
}

final class DolluCheckinConfettiView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = false
        backgroundColor = .clear
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func draw(_ rect: CGRect) {
        let dollColors = [
            UIColor(red: 1, green: 0.21, blue: 0.70, alpha: 1),
            UIColor(red: 0.15, green: 0.72, blue: 0.96, alpha: 1),
            UIColor(red: 0.92, green: 0.72, blue: 0.18, alpha: 1),
            UIColor(red: 0.25, green: 0.82, blue: 0.62, alpha: 1)
        ]
        let dollPoints: [CGPoint] = [
            CGPoint(x: 0.12, y: 0.18), CGPoint(x: 0.22, y: 0.42), CGPoint(x: 0.32, y: 0.20),
            CGPoint(x: 0.74, y: 0.18), CGPoint(x: 0.86, y: 0.42), CGPoint(x: 0.78, y: 0.66),
            CGPoint(x: 0.16, y: 0.72), CGPoint(x: 0.66, y: 0.78), CGPoint(x: 0.92, y: 0.22)
        ]
        for (dollIndex, dollPoint) in dollPoints.enumerated() {
            let dollColor = dollColors[dollIndex % dollColors.count]
            dollColor.setFill()
            let dollX = rect.width * dollPoint.x
            let dollY = rect.height * dollPoint.y
            UIBezierPath(roundedRect: CGRect(x: dollX, y: dollY, width: 6, height: 4), cornerRadius: 2).fill()
        }
    }
}
