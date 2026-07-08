import UIKit

final class DolluCollectionStartViewController: DolluAuthBaseViewController {
    private let porcelainCollectorNameField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_name_icon", dollPromptCopy: "Enter your name")
    private let pastelCatalogEmailField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_email_icon", dollPromptCopy: "Enter email address", dollInputBoard: .emailAddress)
    private let velvetAccessSecretField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_password_icon", dollPromptCopy: "Enter password", dollUsesSecretEntry: true)
    private let frillyCapsuleDollvani = DolluRibbonActionButton(dollButtonTitle: "Sign Up")

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

        let dollProfileMarkerButton = UIButton(type: .system)
        dollProfileMarkerButton.translatesAutoresizingMaskIntoConstraints = false
        dollProfileMarkerButton.backgroundColor = .white
        dollProfileMarkerButton.setTitle("+", for: .normal)
        dollProfileMarkerButton.setTitleColor(UIColor(white: 0.60, alpha: 1), for: .normal)
        dollProfileMarkerButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 48, dollFontWeight: .regular)
        dollProfileMarkerButton.layer.cornerRadius = 60
        dollWardrobeContentView.addSubview(dollProfileMarkerButton)

        let dollStartTitleLabel = UILabel()
        dollStartTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollStartTitleLabel.text = "Sign Up"
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

            dollProfileMarkerButton.centerXAnchor.constraint(equalTo: dollWardrobeContentView.centerXAnchor),
            dollProfileMarkerButton.centerYAnchor.constraint(equalTo: dollLookbookHeaderImageView.bottomAnchor, constant: -140),
            dollProfileMarkerButton.widthAnchor.constraint(equalToConstant: 120),
            dollProfileMarkerButton.heightAnchor.constraint(equalToConstant: 120),

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

    @objc private func createDollWardrobeArchive() {
        let dollCollectorName = porcelainCollectorNameField.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let dollCollectorEmail = pastelCatalogEmailField.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let dollAccessSecret = velvetAccessSecretField.dollPromptTextField.text ?? ""

        guard !dollCollectorName.isEmpty else { presentDollSafetyNotice("Please enter your name."); return }
        guard !dollCollectorEmail.isEmpty else { presentDollSafetyNotice("Please enter email address."); return }
        guard isDollCollectorEmail(dollCollectorEmail) else { presentDollSafetyNotice("Please enter a valid email address."); return }
        guard dollAccessSecret.count >= 6 else { presentDollSafetyNotice("Password must be at least 6 characters."); return }
        setDollStartLoading(true)
        DolluCollectorAccessRoute.velvetStitchmapDollmexa.sendDollCollectorAccess(dollCollectorEmail: dollCollectorEmail, dollAccessSecret: dollAccessSecret) { [weak self] dollResult in
            guard let self else { return }
            self.setDollStartLoading(false)
            switch dollResult {
            case .success(let dollCollectorCredential):
                DolluWardrobeArchiveStore.satinCollectionArchive.syncDollCollectorAfterRoute(dollCollectorEmail: dollCollectorEmail, dollAccessSecret: dollAccessSecret, dollCollectorName: dollCollectorName, dollCollectorCredential: dollCollectorCredential)
                self.revealDollCollectorGallery()
            case .failure:
                self.presentDollSafetyNotice("Dollu collection could not be created. Please try again.")
            }
        }
    }

    private func setDollStartLoading(_ dollIsLoading: Bool) {
        frillyCapsuleDollvani.isEnabled = !dollIsLoading
        frillyCapsuleDollvani.alpha = dollIsLoading ? 0.62 : 1
        frillyCapsuleDollvani.setTitle(dollIsLoading ? "Creating..." : "Sign Up", for: .normal)
    }

    private func revealDollCollectorGallery() {
        view.window?.rootViewController = DolluCollectorTabController()
        view.window?.makeKeyAndVisible()
    }

    private func isDollCollectorEmail(_ dollEmailCandidate: String) -> Bool {
        dollEmailCandidate.range(of: #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#, options: .regularExpression) != nil
    }
}
