import UIKit

final class DollulunarSeamlineaController: DolluminiPromptDollveloController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let porcelainCollectorNameField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_name_icon", dollPromptCopy: **"Enxytexyr xyyoxyurxy nxyamxye")
    private let pastelCatalogEmailField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_email_icon", dollPromptCopy: **"Enxytexyr xyemxyaixyl xyadxydrxyesxys", dollInputBoard: .emailAddress)
    private let velvetAccessSecretField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_password_icon", dollPromptCopy: **"Enxytexyr xypaxyssxywoxyrdxy", dollUsesSecretEntry: true)
    private let frillyCapsuleDollvani = DolluminiLayerDollmivoButton(dollButtonTitle: **"Sixygnxy Uxyp")
    private let tinySnapshotDollhumi = UIButton(type: .system)
    private var dreamySnapshotDollniva: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollCollectionStartLayout()
    }

    private func buildDollCollectionStartLayout() {
        let dollReturnButton = UIButton(type: .custom)
        dollReturnButton.translatesAutoresizingMaskIntoConstraints = false
        dollReturnButton.setImage(UIImage(named: "dollu_auth_close"), for: .normal)
        dollReturnButton.imageView?.contentMode = .scaleAspectFit
        dollReturnButton.layer.shadowColor = UIColor.black.cgColor
        dollReturnButton.layer.shadowOpacity = 0.28
        dollReturnButton.layer.shadowRadius = 4
        dollReturnButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        dollReturnButton.addTarget(self, action: #selector(returnToDollEntry), for: .touchUpInside)
        view.addSubview(dollReturnButton)

        tinySnapshotDollhumi.translatesAutoresizingMaskIntoConstraints = false
        tinySnapshotDollhumi.backgroundColor = .white
        tinySnapshotDollhumi.setTitle("+", for: .normal)
        tinySnapshotDollhumi.setTitleColor(UIColor(white: 0.60, alpha: 1), for: .normal)
        tinySnapshotDollhumi.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 48, dollFontWeight: .regular)
        tinySnapshotDollhumi.layer.cornerRadius = 60
        tinySnapshotDollhumi.layer.borderWidth = 2
        tinySnapshotDollhumi.layer.borderColor = UIColor(white: 1, alpha: 0.35).cgColor
        tinySnapshotDollhumi.clipsToBounds = true
        tinySnapshotDollhumi.adjustsImageWhenHighlighted = false
        tinySnapshotDollhumi.addTarget(self, action: #selector(openDollProfileSourceOptions), for: .touchUpInside)
        tinySnapshotDollhumi.addTarget(self, action: #selector(pressDollProfileMarker), for: [.touchDown, .touchDragEnter])
        tinySnapshotDollhumi.addTarget(self, action: #selector(releaseDollProfileMarker), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        dollWardrobeContentView.addSubview(tinySnapshotDollhumi)

        let dollStartTitleLabel = UILabel()
        dollStartTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollStartTitleLabel.text = **"Sixygnxy Uxyp"
        dollStartTitleLabel.textColor = .white
        dollStartTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 38, dollFontWeight: .heavy)
        dollStartTitleLabel.textAlignment = .center
        dollStartTitleLabel.layer.shadowColor = UIColor.black.cgColor
        dollStartTitleLabel.layer.shadowOpacity = 0.55
        dollStartTitleLabel.layer.shadowRadius = 4
        dollStartTitleLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
        dollCollectionPanelView.addSubview(dollStartTitleLabel)

        frillyCapsuleDollvani.addTarget(self, action: #selector(createDollWardrobeArchive), for: .touchUpInside)

        let dollStartPromptStack = UIStackView(arrangedSubviews: [porcelainCollectorNameField, pastelCatalogEmailField, velvetAccessSecretField, frillyCapsuleDollvani])
        dollStartPromptStack.translatesAutoresizingMaskIntoConstraints = false
        dollStartPromptStack.axis = .vertical
        dollStartPromptStack.spacing = 16
        dollCollectionPanelView.addSubview(dollStartPromptStack)
        dollStartPromptStack.setCustomSpacing(72, after: velvetAccessSecretField)

        NSLayoutConstraint.activate([
            dollReturnButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            dollReturnButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            dollReturnButton.widthAnchor.constraint(equalToConstant: 44),
            dollReturnButton.heightAnchor.constraint(equalToConstant: 44),

            tinySnapshotDollhumi.centerXAnchor.constraint(equalTo: dollWardrobeContentView.centerXAnchor),
            tinySnapshotDollhumi.bottomAnchor.constraint(equalTo: dollStartTitleLabel.topAnchor, constant: -40),
            tinySnapshotDollhumi.widthAnchor.constraint(equalToConstant: 120),
            tinySnapshotDollhumi.heightAnchor.constraint(equalToConstant: 120),

            dollStartTitleLabel.centerXAnchor.constraint(equalTo: dollCollectionPanelView.centerXAnchor),
            dollStartTitleLabel.topAnchor.constraint(equalTo: dollCollectionPanelView.topAnchor, constant: -20),

            dollStartPromptStack.topAnchor.constraint(equalTo: dollStartTitleLabel.bottomAnchor, constant: 20),
            dollStartPromptStack.leadingAnchor.constraint(equalTo: dollCollectionPanelView.leadingAnchor, constant: 22),
            dollStartPromptStack.trailingAnchor.constraint(equalTo: dollCollectionPanelView.trailingAnchor, constant: -22),
            dollStartPromptStack.bottomAnchor.constraint(lessThanOrEqualTo: dollCollectionPanelView.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }

    @objc private func returnToDollEntry() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func openDollProfileSourceOptions() {
        view.endEditing(true)
        let dollPanel = DolluCheckinImageSourcePanel(
            dollTitle: **"Adxyd xyprxyofxyilxye xyphxyotxyo",
            dollCopy: **"Chxyooxysexy axy pxyhoxytoxy oxyr xytaxykexy axy nxyewxy oxynexy fxyorxy yxyouxyr xyDoxyllxyu xyacxycoxyunxytyxy.",
            dollShowsCamera: UIImagePickerController.isSourceTypeAvailable(.camera)
        )
        dollPanel.dollAlbumTapped = { [weak self, weak dollPanel] in
            dollPanel?.removeFromSuperview()
            self?.presentDollProfilePicker(.photoLibrary)
        }
        dollPanel.dollCameraTapped = { [weak self, weak dollPanel] in
            dollPanel?.removeFromSuperview()
            self?.presentDollProfilePicker(.camera)
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

    private func presentDollProfilePicker(_ dollSourceType: UIImagePickerController.SourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(dollSourceType) else { return }
        let dollPicker = UIImagePickerController()
        dollPicker.sourceType = dollSourceType
        dollPicker.allowsEditing = true
        dollPicker.delegate = self
        present(dollPicker, animated: true)
    }

    @objc private func pressDollProfileMarker() {
        UIView.animate(withDuration: 0.12) {
            self.tinySnapshotDollhumi.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
            self.tinySnapshotDollhumi.alpha = 0.86
        }
    }

    @objc private func releaseDollProfileMarker() {
        UIView.animate(withDuration: 0.18) {
            self.tinySnapshotDollhumi.transform = .identity
            self.tinySnapshotDollhumi.alpha = 1
        }
    }

    @objc private func createDollWardrobeArchive() {
        let dollCollectorName = porcelainCollectorNameField.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let dollCollectorEmail = pastelCatalogEmailField.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let dollAccessSecret = velvetAccessSecretField.dollPromptTextField.text ?? ""

        guard !dollCollectorName.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy yxyouxyr xynaxymexy."); return }
        guard !dollCollectorEmail.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy exymaxyilxy axyddxyrexyssxy."); return }
        guard isDollCollectorEmail(dollCollectorEmail) else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy axy vxyalxyidxy exymaxyilxy axyddxyrexyssxy."); return }
        guard dollAccessSecret.count >= 6 else { presentDollSafetyNotice(**"Paxyssxywoxyrdxy mxyusxyt xybexy axyt xylexyasxyt xy6 xychxyarxyacxytexyrsxy."); return }
        guard DolluWardrobeArchiveStore.satinCollectionArchive.dollGuideAccepted else { presentDollSafetyNotice(**"Plxyeaxysexy axygrxyeexy txyo xyDoxyllxyu xyEUxyLAxy bxyefxyorxye xycoxyntxyinxyuixyngxy."); return }
        setDollStartLoading(true)
        DolluCollectorAccessRoute.velvetStitchmapDollmexa.sendDollCollectorAccess(dollCollectorEmail: dollCollectorEmail, dollAccessSecret: dollAccessSecret) { [weak self] dollResult in
            guard let self else { return }
            self.setDollStartLoading(false)
            switch dollResult {
            case .success(let dollCollectorCredential):
                DolluWardrobeArchiveStore.satinCollectionArchive.syncDollCollectorAfterRoute(dollCollectorEmail: dollCollectorEmail, dollAccessSecret: dollAccessSecret, dollCollectorName: dollCollectorName, dollCollectorCredential: dollCollectorCredential)
                self.revealDollCollectorGallery()
            case .failure:
                self.presentDollSafetyNotice(**"Doxyllxyu xycoxyllxyecxytixyonxy cxyouxyldxy nxyotxy bxye xycrxyeaxytexyd.xy Pxylexyasxye xytrxyy xyagxyaixyn.xy")
            }
        }
    }

    private func setDollStartLoading(_ dollIsLoading: Bool) {
        frillyCapsuleDollvani.isEnabled = !dollIsLoading
        frillyCapsuleDollvani.alpha = dollIsLoading ? 0.62 : 1
        frillyCapsuleDollvani.setTitle(dollIsLoading ? **"Crxyeaxytixyngxy..xy." : **"Sixygnxy Uxyp", for: .normal)
    }

    private func revealDollCollectorGallery() {
        view.window?.rootViewController = DolluheirloomPropDollseroController()
        view.window?.makeKeyAndVisible()
    }

    private func isDollCollectorEmail(_ dollEmailCandidate: String) -> Bool {
        dollEmailCandidate.range(of: #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#, options: .regularExpression) != nil
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let dollImage = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        dreamySnapshotDollniva = dollImage
        if let dollImage {
            tinySnapshotDollhumi.setTitle(nil, for: .normal)
            tinySnapshotDollhumi.setBackgroundImage(dollImage, for: .normal)
            tinySnapshotDollhumi.layer.borderColor = DolluWardrobePalette.dollRibbonPurple.cgColor
        }
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
