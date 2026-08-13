import UIKit

enum DolluginghamFrameDollsovotate: Hashable {
    case empty
    case localReady
}

enum DolluginghamChecklistState: Hashable {
    case waitingForCurrentCollectorUpload
    case waitingForPartnerUpload
    case readyForTogetherCheckin
    case completing
    case completed
    case failedRetry
}

struct DolluginghamStylingDollcavoArchive: Hashable {
    let dollInviteId: String
    let dollPartnerId: String
    let dollPartnerName: String
    let dollPartnerAvatarURL: URL?
    let dollPartnerPreviewURL: URL?
    let dollPartnerAvatarAssetName: String?
    let dollPartnerPreviewAssetName: String?
    let dollThemeName: String
    let dollHonorPointCount: Int
    var dollCurrentUploadState: DolluginghamFrameDollsovotate
    var dollPartnerUploadState: DolluginghamFrameDollsovotate
    var dollTogetherState: DolluginghamChecklistState
    let dollCreatedAt: Date
    var dollLocalPreviewState: Bool
}

final class DolluginghamLookbookDollserontroller: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var dollInviteFinished: ((String) -> Void)?

    private var pocketCollectionDollruni: DolluginghamStylingDollcavoArchive
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let crispProgressDollsovo = UILabel()
    private let dreamyDisplayDolltavo = DollutulleHintDollyaraPreviewCard()
    private let bowChecklistDollmora = DolluCheckinStepProgressView()
    private let satinMarkerDollpavo = DolluminiLayerDollmivoButton(dollButtonTitle: "Upload Your Doll")
    private var laceLayerDollsovo: UIImage?

    init(dollInvite: DolluginghamStylingDollcavoArchive) {
        pocketCollectionDollruni = dollInvite
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollJoinArchive()
        refreshDollJoinArchive()
    }

    private func buildDollJoinArchive() {
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
        dollBackButton.addTarget(self, action: #selector(closeDollJoinArchive), for: .touchUpInside)
        view.addSubview(dollBackButton)

        let dollTitleLabel = UILabel()
        dollTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollTitleLabel.text = "Buddy Check-in"
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        dollTitleLabel.textAlignment = .center
        view.addSubview(dollTitleLabel)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 16
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        satinPinboardDollvani.addArrangedSubview(makeDollHeaderPanel())
        dreamyDisplayDolltavo.dollLocalSlotTapped = { [weak self] in
            self?.openDollImageSourceOptions()
        }
        satinPinboardDollvani.addArrangedSubview(dreamyDisplayDolltavo)
        satinPinboardDollvani.addArrangedSubview(bowChecklistDollmora)

        let dollSpacer = UIView()
        dollSpacer.translatesAutoresizingMaskIntoConstraints = false
        dollSpacer.heightAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
        satinPinboardDollvani.addArrangedSubview(dollSpacer)

        satinMarkerDollpavo.addTarget(self, action: #selector(handleDollPrimaryAction), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(satinMarkerDollpavo)

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

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 18),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: 22),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -22),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -18),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -44)
        ])
    }

    private func makeDollHeaderPanel() -> UIView {
        let dollPanel = UIView()
        dollPanel.translatesAutoresizingMaskIntoConstraints = false

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.layer.cornerRadius = 18
        tinyCoverDollmexa.clipsToBounds = true
        if let dollAvatarURL = pocketCollectionDollruni.dollPartnerAvatarURL {
            tinyCoverDollmexa.setDollImage(dollURL: dollAvatarURL, fallbackTitle: pocketCollectionDollruni.dollPartnerName)
        } else if let dollAssetName = pocketCollectionDollruni.dollPartnerAvatarAssetName, let dollImage = UIImage(named: dollAssetName) {
            tinyCoverDollmexa.image = dollImage
        } else {
            tinyCoverDollmexa.setDollImage(dollURL: nil, fallbackTitle: pocketCollectionDollruni.dollPartnerName)
        }

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.78

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = DolluWardrobePalette.dollMemoMuted
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .semibold)
        cozyMemoDolllaro.numberOfLines = 2

        crispProgressDollsovo.translatesAutoresizingMaskIntoConstraints = false
        crispProgressDollsovo.textColor = UIColor(red: 1, green: 0.76, blue: 0.28, alpha: 1)
        crispProgressDollsovo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        crispProgressDollsovo.setContentCompressionResistancePriority(.required, for: .horizontal)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "Dress your dolls in today's theme, then check in together to keep your wardrobe rhythm."
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        dollCopy.numberOfLines = 3

        [tinyCoverDollmexa, layeredCatalogDollquvo, cozyMemoDolllaro, crispProgressDollsovo, dollCopy].forEach { dollPanel.addSubview($0) }
        NSLayoutConstraint.activate([
            dollPanel.heightAnchor.constraint(greaterThanOrEqualToConstant: 88),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: dollPanel.leadingAnchor),
            tinyCoverDollmexa.topAnchor.constraint(equalTo: dollPanel.topAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 42),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 42),

            crispProgressDollsovo.trailingAnchor.constraint(equalTo: dollPanel.trailingAnchor),
            crispProgressDollsovo.topAnchor.constraint(equalTo: dollPanel.topAnchor, constant: 7),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: 10),
            layeredCatalogDollquvo.trailingAnchor.constraint(lessThanOrEqualTo: crispProgressDollsovo.leadingAnchor, constant: -10),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: dollPanel.topAnchor, constant: 2),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(lessThanOrEqualTo: crispProgressDollsovo.leadingAnchor, constant: -10),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 4),

            dollCopy.leadingAnchor.constraint(equalTo: dollPanel.leadingAnchor),
            dollCopy.trailingAnchor.constraint(equalTo: dollPanel.trailingAnchor),
            dollCopy.topAnchor.constraint(equalTo: tinyCoverDollmexa.bottomAnchor, constant: 12),
            dollCopy.bottomAnchor.constraint(equalTo: dollPanel.bottomAnchor)
        ])
        return dollPanel
    }

    private func refreshDollJoinArchive() {
        layeredCatalogDollquvo.text = "Check in with \(pocketCollectionDollruni.dollPartnerName)"
        cozyMemoDolllaro.text = "Today's theme · \(pocketCollectionDollruni.dollThemeName)"
        crispProgressDollsovo.text = "★ +\(pocketCollectionDollruni.dollHonorPointCount)"
        dreamyDisplayDolltavo.configure(dollInvite: pocketCollectionDollruni, dollLocalImage: laceLayerDollsovo)

        let dollCurrentDone = pocketCollectionDollruni.dollCurrentUploadState == .localReady
        let dollPartnerDone = pocketCollectionDollruni.dollPartnerUploadState == .localReady
        bowChecklistDollmora.configure(
            dollPartnerName: pocketCollectionDollruni.dollPartnerName,
            dollCurrentDone: dollCurrentDone,
            dollPartnerDone: dollPartnerDone,
            dollTogetherDone: pocketCollectionDollruni.dollTogetherState == .completed
        )

        satinMarkerDollpavo.isEnabled = true
        satinMarkerDollpavo.alpha = 1
        switch pocketCollectionDollruni.dollTogetherState {
        case .waitingForCurrentCollectorUpload:
            satinMarkerDollpavo.setTitle("Upload Your Doll", for: .normal)
        case .waitingForPartnerUpload:
            satinMarkerDollpavo.setTitle("Waiting for \(pocketCollectionDollruni.dollPartnerName)", for: .normal)
            satinMarkerDollpavo.isEnabled = false
            satinMarkerDollpavo.alpha = 0.62
        case .readyForTogetherCheckin:
            satinMarkerDollpavo.setTitle("Check In Together", for: .normal)
        case .completing:
            satinMarkerDollpavo.setTitle("Checking...", for: .normal)
            satinMarkerDollpavo.isEnabled = false
            satinMarkerDollpavo.alpha = 0.72
        case .completed:
            satinMarkerDollpavo.setTitle("Done", for: .normal)
        case .failedRetry:
            satinMarkerDollpavo.setTitle("Try Again", for: .normal)
        }
    }

    @objc private func handleDollPrimaryAction() {
        switch pocketCollectionDollruni.dollTogetherState {
        case .waitingForCurrentCollectorUpload, .failedRetry:
            openDollImageSourceOptions()
        case .readyForTogetherCheckin:
            completeDollPartnerArchive()
        default:
            break
        }
    }

    private func openDollImageSourceOptions() {
        let dollPanel = DolluCheckinImageSourcePanel(
            dollTitle: "Upload your doll",
            dollCopy: "Add your styling record before checking in together.",
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

    private func applyDollLocalImage(_ dollImage: UIImage?) {
        guard let dollImage else { return }
        laceLayerDollsovo = dollImage
        pocketCollectionDollruni.dollCurrentUploadState = .localReady
        pocketCollectionDollruni.dollLocalPreviewState = true
        pocketCollectionDollruni.dollTogetherState = pocketCollectionDollruni.dollPartnerUploadState == .localReady ? .readyForTogetherCheckin : .waitingForPartnerUpload
        refreshDollJoinArchive()
    }

    private func completeDollPartnerArchive() {
        pocketCollectionDollruni.dollTogetherState = .completing
        refreshDollJoinArchive()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) { [weak self] in
            guard let self else { return }
            self.pocketCollectionDollruni.dollTogetherState = .completed
            self.dollInviteFinished?(self.pocketCollectionDollruni.dollPartnerId)
            let dollDone = DolluCheckinInviteDoneViewController(dollInvite: self.pocketCollectionDollruni, dollCurrentImage: self.laceLayerDollsovo)
            self.navigationController?.pushViewController(dollDone, animated: true)
        }
    }

    @objc private func closeDollJoinArchive() {
        navigationController?.popViewController(animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let dollImage = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        applyDollLocalImage(dollImage)
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}

final class DollutulleHintDollyaraPreviewCard: UIView {
    var dollLocalSlotTapped: (() -> Void)?
    private let satinPinboardDollvani = UIStackView()
    private let cozyWardrobeDollukp = DolluCheckinUploadSlotView(dollTitle: "You", dollIsLocalSlot: true)
    private let classicArchiveDollpiri = DolluCheckinUploadSlotView(dollTitle: "Partner", dollIsLocalSlot: false)
    private let floralHintDollvelo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .horizontal
        satinPinboardDollvani.spacing = 10
        satinPinboardDollvani.distribution = .fillEqually
        addSubview(satinPinboardDollvani)

        satinPinboardDollvani.addArrangedSubview(cozyWardrobeDollukp)
        satinPinboardDollvani.addArrangedSubview(classicArchiveDollpiri)
        cozyWardrobeDollukp.dollSlotTapped = { [weak self] in
            self?.dollLocalSlotTapped?()
        }

        floralHintDollvelo.translatesAutoresizingMaskIntoConstraints = false
        floralHintDollvelo.text = "+"
        floralHintDollvelo.isUserInteractionEnabled = true
        floralHintDollvelo.textColor = .white
        floralHintDollvelo.textAlignment = .center
        floralHintDollvelo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        floralHintDollvelo.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        floralHintDollvelo.layer.cornerRadius = 16
        floralHintDollvelo.clipsToBounds = true
        addSubview(floralHintDollvelo)
        floralHintDollvelo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapDollLocalSlot)))

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 150),
            satinPinboardDollvani.topAnchor.constraint(equalTo: topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: trailingAnchor),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: bottomAnchor),
            cozyWardrobeDollukp.heightAnchor.constraint(equalTo: cozyWardrobeDollukp.widthAnchor, multiplier: 1.12),
            classicArchiveDollpiri.heightAnchor.constraint(equalTo: cozyWardrobeDollukp.heightAnchor),
            floralHintDollvelo.centerXAnchor.constraint(equalTo: centerXAnchor),
            floralHintDollvelo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 9),
            floralHintDollvelo.widthAnchor.constraint(equalToConstant: 32),
            floralHintDollvelo.heightAnchor.constraint(equalToConstant: 32)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollInvite: DolluginghamStylingDollcavoArchive, dollLocalImage: UIImage?) {
        cozyWardrobeDollukp.configure(
            dollTitle: "You",
            dollCopy: "Upload your doll",
            dollReadyCopy: "Ready",
            dollIsReady: dollInvite.dollCurrentUploadState == .localReady,
            dollImageURL: nil,
            dollFallbackTitle: "You",
            dollLocalImage: dollLocalImage
        )
        classicArchiveDollpiri.configure(
            dollTitle: dollInvite.dollPartnerName,
            dollCopy: "Waiting",
            dollReadyCopy: "Ready",
            dollIsReady: dollInvite.dollPartnerUploadState == .localReady,
            dollImageURL: dollInvite.dollPartnerPreviewURL,
            dollAssetName: dollInvite.dollPartnerPreviewAssetName,
            dollFallbackTitle: dollInvite.dollPartnerName,
            dollLocalImage: nil
        )
    }

    @objc private func tapDollLocalSlot() {
        dollLocalSlotTapped?()
    }
}

final class DolluCheckinUploadSlotView: UIControl {
    var dollSlotTapped: (() -> Void)?
    private let dreamyDisplayDolltavo = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cottonFrameDollukp = UILabel()
    private let crispProgressDollsovo = UILabel()
    private let dollIsLocalSlot: Bool

    init(dollTitle: String, dollIsLocalSlot: Bool) {
        self.dollIsLocalSlot = dollIsLocalSlot
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.28, alpha: 0.94)
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.08).cgColor
        clipsToBounds = true

        dreamyDisplayDolltavo.translatesAutoresizingMaskIntoConstraints = false
        dreamyDisplayDolltavo.contentMode = .scaleAspectFill
        addSubview(dreamyDisplayDolltavo)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.text = dollTitle
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.text = "◎"
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 25, dollFontWeight: .heavy)
        cottonFrameDollukp.backgroundColor = UIColor(red: 0.90, green: 0.12, blue: 0.72, alpha: 0.88)
        cottonFrameDollukp.layer.cornerRadius = 22
        cottonFrameDollukp.clipsToBounds = true
        addSubview(cottonFrameDollukp)

        crispProgressDollsovo.translatesAutoresizingMaskIntoConstraints = false
        crispProgressDollsovo.textColor = .white
        crispProgressDollsovo.textAlignment = .center
        crispProgressDollsovo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 10, dollFontWeight: .heavy)
        crispProgressDollsovo.backgroundColor = UIColor(red: 0.12, green: 0.65, blue: 0.44, alpha: 0.82)
        crispProgressDollsovo.layer.cornerRadius = 11
        crispProgressDollsovo.clipsToBounds = true
        addSubview(crispProgressDollsovo)
        if dollIsLocalSlot {
            addTarget(self, action: #selector(tapDollSlot), for: .touchUpInside)
        }

        NSLayoutConstraint.activate([
            dreamyDisplayDolltavo.topAnchor.constraint(equalTo: topAnchor),
            dreamyDisplayDolltavo.leadingAnchor.constraint(equalTo: leadingAnchor),
            dreamyDisplayDolltavo.trailingAnchor.constraint(equalTo: trailingAnchor),
            dreamyDisplayDolltavo.bottomAnchor.constraint(equalTo: bottomAnchor),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cottonFrameDollukp.centerXAnchor.constraint(equalTo: centerXAnchor),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cottonFrameDollukp.widthAnchor.constraint(equalToConstant: 44),
            cottonFrameDollukp.heightAnchor.constraint(equalToConstant: 44),
            crispProgressDollsovo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            crispProgressDollsovo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            crispProgressDollsovo.widthAnchor.constraint(greaterThanOrEqualToConstant: 54),
            crispProgressDollsovo.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollTitle: String, dollCopy: String, dollReadyCopy: String, dollIsReady: Bool, dollImageURL: URL?, dollAssetName: String? = nil, dollFallbackTitle: String, dollLocalImage: UIImage?) {
        layeredCatalogDollquvo.text = dollTitle
        crispProgressDollsovo.text = dollIsReady ? dollReadyCopy : dollCopy
        if let dollLocalImage {
            dreamyDisplayDolltavo.image = dollLocalImage
        } else if let dollImageURL {
            dreamyDisplayDolltavo.setDollImage(dollURL: dollImageURL, fallbackTitle: dollFallbackTitle)
        } else if let dollAssetName, let dollImage = UIImage(named: dollAssetName) {
            dreamyDisplayDolltavo.image = dollImage
        } else {
            dreamyDisplayDolltavo.setDollImage(dollURL: nil, fallbackTitle: dollFallbackTitle)
        }
        dreamyDisplayDolltavo.alpha = dollIsReady ? 1 : (dollIsLocalSlot ? 0.18 : 0.55)
        cottonFrameDollukp.isHidden = dollIsReady || !dollIsLocalSlot
        crispProgressDollsovo.backgroundColor = dollIsReady
        ? UIColor(red: 0.12, green: 0.65, blue: 0.44, alpha: 0.82)
        : UIColor(white: 1, alpha: 0.12)
    }

    @objc private func tapDollSlot() {
        UIView.animate(withDuration: 0.12, animations: {
            self.transform = CGAffineTransform(scaleX: 0.985, y: 0.985)
        }, completion: { _ in
            self.transform = .identity
            self.dollSlotTapped?()
        })
    }
}

final class DolluCheckinStepProgressView: UIView {
    private let satinPinboardDollvani = UIStackView()
    private var patternedCollectionDollbop: [DolluCheckinStepRowView] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.30, alpha: 0.96)
        layer.cornerRadius = 18

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 0
        addSubview(satinPinboardDollvani)

        for dollIndex in 1...3 {
            let dollRow = DolluCheckinStepRowView(dollIndex: dollIndex)
            patternedCollectionDollbop.append(dollRow)
            satinPinboardDollvani.addArrangedSubview(dollRow)
        }

        NSLayoutConstraint.activate([
            satinPinboardDollvani.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollPartnerName: String, dollCurrentDone: Bool, dollPartnerDone: Bool, dollTogetherDone: Bool) {
        let dollRows: [(String, Bool)] = [
            ("Upload your doll in the theme", dollCurrentDone),
            ("Wait for \(dollPartnerName) to upload", dollPartnerDone),
            ("Check in together", dollTogetherDone)
        ]
        zip(patternedCollectionDollbop, dollRows).forEach { dollRow, dollData in
            dollRow.configure(dollTitle: dollData.0, dollIsDone: dollData.1)
        }
    }
}

final class DolluCheckinStepRowView: UIView {
    private let cottonFrameDollukp = UILabel()
    private let layeredCatalogDollquvo = UILabel()
    private let dollStepIndex: Int

    init(dollIndex: Int) {
        dollStepIndex = dollIndex
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.text = "\(dollIndex)"
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        cottonFrameDollukp.layer.cornerRadius = 12
        cottonFrameDollukp.clipsToBounds = true
        addSubview(cottonFrameDollukp)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        layeredCatalogDollquvo.numberOfLines = 2
        addSubview(layeredCatalogDollquvo)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 42),
            cottonFrameDollukp.leadingAnchor.constraint(equalTo: leadingAnchor),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cottonFrameDollukp.widthAnchor.constraint(equalToConstant: 24),
            cottonFrameDollukp.heightAnchor.constraint(equalToConstant: 24),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: 12),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: trailingAnchor),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            layeredCatalogDollquvo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollTitle: String, dollIsDone: Bool) {
        layeredCatalogDollquvo.text = dollTitle
        cottonFrameDollukp.text = dollIsDone ? "✓" : "\(dollStepIndex)"
        cottonFrameDollukp.backgroundColor = dollIsDone ? UIColor(red: 0.11, green: 0.72, blue: 0.68, alpha: 1) : UIColor(white: 1, alpha: 0.12)
        cottonFrameDollukp.textColor = .white
        layeredCatalogDollquvo.textColor = dollIsDone ? .white : DolluWardrobePalette.dollMemoMuted
    }
}

final class DolluCheckinInviteDoneViewController: UIViewController {
    private let dollInvite: DolluginghamStylingDollcavoArchive
    private let dollCurrentImage: UIImage?
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()

    init(dollInvite: DolluginghamStylingDollcavoArchive, dollCurrentImage: UIImage?) {
        self.dollInvite = dollInvite
        self.dollCurrentImage = dollCurrentImage
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollDoneArchive()
    }

    private func buildDollDoneArchive() {
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

        let dollConfetti = DolluCheckinConfettiView()
        view.addSubview(dollConfetti)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.alignment = .center
        satinPinboardDollvani.spacing = 16
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        let dollOverlap = DolluCheckinDoneOverlapView(
            dollCurrentImage: dollCurrentImage,
            dollPartnerName: dollInvite.dollPartnerName,
            dollPartnerURL: dollInvite.dollPartnerPreviewURL,
            dollPartnerAssetName: dollInvite.dollPartnerPreviewAssetName
        )
        satinPinboardDollvani.addArrangedSubview(dollOverlap)

        let dollTitle = UILabel()
        dollTitle.text = "Buddy Check-in Done"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 23, dollFontWeight: .heavy)
        dollTitle.textAlignment = .center
        dollTitle.adjustsFontSizeToFitWidth = true
        dollTitle.minimumScaleFactor = 0.82
        satinPinboardDollvani.addArrangedSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.text = "You & \(dollInvite.dollPartnerName) each earned"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .semibold)
        dollCopy.textAlignment = .center
        satinPinboardDollvani.addArrangedSubview(dollCopy)

        let dollHonorPanel = makeDollHonorPanel()
        satinPinboardDollvani.addArrangedSubview(dollHonorPanel)

        let dollSpacer = UIView()
        dollSpacer.translatesAutoresizingMaskIntoConstraints = false
        dollSpacer.heightAnchor.constraint(greaterThanOrEqualToConstant: 116).isActive = true
        satinPinboardDollvani.addArrangedSubview(dollSpacer)

        let dollArchiveAction = DolluminiLayerDollmivoButton(dollButtonTitle: "View My Check-ins")
        dollArchiveAction.addTarget(self, action: #selector(revealDollProfileCheckins), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollArchiveAction)

        let dollBackAction = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Check-in", dollUsesLightStyle: true)
        dollBackAction.setTitleColor(.white, for: .normal)
        dollBackAction.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollBackAction.addTarget(self, action: #selector(backDollCheckin), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollBackAction)

        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            dollBackButton.widthAnchor.constraint(equalToConstant: 34),
            dollBackButton.heightAnchor.constraint(equalToConstant: 34),
            dollConfetti.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 78),
            dollConfetti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dollConfetti.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dollConfetti.heightAnchor.constraint(equalToConstant: 180),
            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 92),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: 22),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -22),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -18),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -44),
            dollHonorPanel.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor),
            dollArchiveAction.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor),
            dollBackAction.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor)
        ])
    }

    private func makeDollHonorPanel() -> UIView {
        let dollPanel = UIView()
        dollPanel.translatesAutoresizingMaskIntoConstraints = false
        dollPanel.backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.32, alpha: 0.96)
        dollPanel.layer.cornerRadius = 18

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = "★ +\(dollInvite.dollHonorPointCount)"
        dollTitle.textColor = UIColor(red: 1, green: 0.76, blue: 0.28, alpha: 1)
        dollTitle.textAlignment = .center
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "honors earned"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.textAlignment = .center
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 10, dollFontWeight: .semibold)

        dollPanel.addSubview(dollTitle)
        dollPanel.addSubview(dollCopy)
        NSLayoutConstraint.activate([
            dollPanel.heightAnchor.constraint(equalToConstant: 76),
            dollTitle.centerXAnchor.constraint(equalTo: dollPanel.centerXAnchor),
            dollTitle.topAnchor.constraint(equalTo: dollPanel.topAnchor, constant: 18),
            dollCopy.centerXAnchor.constraint(equalTo: dollPanel.centerXAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 5),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: dollPanel.bottomAnchor, constant: -12)
        ])
        return dollPanel
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

final class DolluCheckinDoneOverlapView: UIView {
    private let cozyWardrobeDollukp = UIImageView(image: DolluPlaceholderImageFactory.makeDollPlaceholder(title: "You"))
    private let classicArchiveDollpiri = DolluAsyncImageView()

    init(dollCurrentImage: UIImage?, dollPartnerName: String, dollPartnerURL: URL?, dollPartnerAssetName: String?) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        cozyWardrobeDollukp.translatesAutoresizingMaskIntoConstraints = false
        if let dollCurrentImage {
            cozyWardrobeDollukp.image = dollCurrentImage
        }
        cozyWardrobeDollukp.layer.cornerRadius = 36
        cozyWardrobeDollukp.layer.borderWidth = 3
        cozyWardrobeDollukp.layer.borderColor = UIColor.white.cgColor
        cozyWardrobeDollukp.clipsToBounds = true
        cozyWardrobeDollukp.contentMode = .scaleAspectFill
        addSubview(cozyWardrobeDollukp)

        classicArchiveDollpiri.translatesAutoresizingMaskIntoConstraints = false
        classicArchiveDollpiri.layer.cornerRadius = 36
        classicArchiveDollpiri.layer.borderWidth = 3
        classicArchiveDollpiri.layer.borderColor = UIColor.white.cgColor
        classicArchiveDollpiri.clipsToBounds = true
        classicArchiveDollpiri.contentMode = .scaleAspectFill
        if let dollPartnerURL {
            classicArchiveDollpiri.setDollImage(dollURL: dollPartnerURL, fallbackTitle: dollPartnerName)
        } else if let dollPartnerAssetName, let dollPartnerImage = UIImage(named: dollPartnerAssetName) {
            classicArchiveDollpiri.image = dollPartnerImage
        } else {
            classicArchiveDollpiri.setDollImage(dollURL: nil, fallbackTitle: dollPartnerName)
        }
        addSubview(classicArchiveDollpiri)

        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 128),
            heightAnchor.constraint(equalToConstant: 82),
            cozyWardrobeDollukp.leadingAnchor.constraint(equalTo: leadingAnchor),
            cozyWardrobeDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cozyWardrobeDollukp.widthAnchor.constraint(equalToConstant: 72),
            cozyWardrobeDollukp.heightAnchor.constraint(equalToConstant: 72),
            classicArchiveDollpiri.trailingAnchor.constraint(equalTo: trailingAnchor),
            classicArchiveDollpiri.centerYAnchor.constraint(equalTo: centerYAnchor),
            classicArchiveDollpiri.widthAnchor.constraint(equalToConstant: 72),
            classicArchiveDollpiri.heightAnchor.constraint(equalToConstant: 72)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }
}
