import UIKit

final class DolluCollectorAccessViewController: DolluAuthBaseViewController {
    private let dollGuidelineConsentView = DolluGuideAgreementView()
    private let satinCollectionEmailField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_email_icon", dollPromptCopy: **"Enxytexyr xyemxyaixyl xyadxydrxyesxys", dollInputBoard: .emailAddress)
    private let ribbonSecretPromptField = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_password_icon", dollPromptCopy: **"Enxytexyr xypaxyssxywoxyrdxy", dollUsesSecretEntry: true)
    private let glossyClosetDollvex = DolluRibbonActionButton(dollButtonTitle: **"Sixygnxy ixyn xynoxyw")

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollCollectorAccessLayout()
    }

    private func buildDollCollectorAccessLayout() {
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

        let dollAccessTitleLabel = UILabel()
        dollAccessTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollAccessTitleLabel.text = **"Loxygixyn"
        dollAccessTitleLabel.textColor = .white
        dollAccessTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 38, dollFontWeight: .heavy)
        dollAccessTitleLabel.textAlignment = .center
        dollAccessTitleLabel.layer.shadowColor = UIColor.black.cgColor
        dollAccessTitleLabel.layer.shadowOpacity = 0.55
        dollAccessTitleLabel.layer.shadowRadius = 4
        dollAccessTitleLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
        dollCollectionPanelView.addSubview(dollAccessTitleLabel)

        glossyClosetDollvex.addTarget(self, action: #selector(unlockDollWardrobeArchive), for: .touchUpInside)

        let dollAccessPromptStack = UIStackView(arrangedSubviews: [satinCollectionEmailField, ribbonSecretPromptField, glossyClosetDollvex, dollGuidelineConsentView])
        dollAccessPromptStack.translatesAutoresizingMaskIntoConstraints = false
        dollAccessPromptStack.axis = .vertical
        dollAccessPromptStack.spacing = 16
        dollCollectionPanelView.addSubview(dollAccessPromptStack)

        dollGuidelineConsentView.dollGuideIsAccepted = DolluWardrobeArchiveStore.satinCollectionArchive.dollGuideAccepted
        dollGuidelineConsentView.dollTermsOpened = { [weak dollAccessSelf = self] in dollAccessSelf?.openDollTermsRoute(.dollTerms) }
        dollGuidelineConsentView.dollPrivacyOpened = { [weak dollAccessSelf = self] in dollAccessSelf?.openDollTermsRoute(.dollPrivacy) }
        dollAccessPromptStack.setCustomSpacing(56, after: ribbonSecretPromptField)
        dollAccessPromptStack.setCustomSpacing(60, after: glossyClosetDollvex)

        NSLayoutConstraint.activate([
            dollReturnButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            dollReturnButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            dollReturnButton.widthAnchor.constraint(equalToConstant: 44),
            dollReturnButton.heightAnchor.constraint(equalToConstant: 44),

            dollAccessTitleLabel.centerXAnchor.constraint(equalTo: dollCollectionPanelView.centerXAnchor),
            dollAccessTitleLabel.topAnchor.constraint(equalTo: dollCollectionPanelView.topAnchor, constant: -22),

            dollAccessPromptStack.topAnchor.constraint(equalTo: dollAccessTitleLabel.bottomAnchor, constant: 20),
            dollAccessPromptStack.leadingAnchor.constraint(equalTo: dollCollectionPanelView.leadingAnchor, constant: 22),
            dollAccessPromptStack.trailingAnchor.constraint(equalTo: dollCollectionPanelView.trailingAnchor, constant: -22),
            dollAccessPromptStack.bottomAnchor.constraint(lessThanOrEqualTo: dollCollectionPanelView.safeAreaLayoutGuide.bottomAnchor, constant: -18)
        ])
    }

    @objc private func returnToDollEntry() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func unlockDollWardrobeArchive() {
        let dollCollectorEmail = satinCollectionEmailField.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let dollAccessSecret = ribbonSecretPromptField.dollPromptTextField.text ?? ""

        guard !dollCollectorEmail.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy exymaxyilxy axyddxyrexyssxy."); return }
        guard !dollAccessSecret.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy pxyasxyswxyorxyd.xy"); return }
        guard isDollCollectorEmail(dollCollectorEmail) else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy axy vxyalxyidxy exymaxyilxy axyddxyrexyssxy."); return }
        guard dollGuidelineConsentView.dollGuideIsAccepted else { presentDollSafetyNotice(**"Plxyeaxysexy axygrxyeexy txyo xyTexyrmxys xyofxy Sxyerxyvixycexy axyndxy Pxyrixyvaxycyxy Pxyolxyicxyy.xy"); return }

        setDollAccessLoading(true)
        DolluCollectorAccessRoute.velvetStitchmapDollmexa.sendDollCollectorAccess(dollCollectorEmail: dollCollectorEmail, dollAccessSecret: dollAccessSecret) { [weak self] dollResult in
            guard let self else { return }
            self.setDollAccessLoading(false)
            switch dollResult {
            case .success(let dollCollectorCredential):
                DolluWardrobeArchiveStore.satinCollectionArchive.syncDollCollectorAfterRoute(dollCollectorEmail: dollCollectorEmail, dollAccessSecret: dollAccessSecret, dollCollectorName: nil, dollCollectorCredential: dollCollectorCredential)
                self.revealDollCollectorGallery()
            case .failure:
                self.presentDollSafetyNotice(**"Doxyllxyu xyacxycexyssxy cxyouxyldxy nxyotxy bxye xycoxympxylexytexyd.xy Pxylexyasxye xytrxyy xyagxyaixyn.xy")
            }
        }
    }

    private func setDollAccessLoading(_ dollIsLoading: Bool) {
        glossyClosetDollvex.isEnabled = !dollIsLoading
        glossyClosetDollvex.alpha = dollIsLoading ? 0.62 : 1
        glossyClosetDollvex.setTitle(dollIsLoading ? **"Sixygnxyinxyg xyinxy..xy." : **"Sixygnxy ixyn xynoxyw", for: .normal)
    }

    private func revealDollCollectorGallery() {
        view.window?.rootViewController = DolluCollectorTabController()
        view.window?.makeKeyAndVisible()
    }

    private func isDollCollectorEmail(_ dollEmailCandidate: String) -> Bool {
        dollEmailCandidate.range(of: #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#, options: .regularExpression) != nil
    }
}
