import UIKit

final class DolluAuthLandingViewController: DolluAuthBaseViewController {
    private let dollGuidelineConsentView = DolluGuideAgreementView()
    private var dollGuideDidOfferEula = false

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollEntryLookbook()
    }

    override func viewDidAppear(_ dollEntryAnimated: Bool) {
        super.viewDidAppear(dollEntryAnimated)
        guard !dollGuideDidOfferEula, !DolluWardrobeArchiveStore.satinCollectionArchive.dollGuideAccepted else {
            return
        }
        dollGuideDidOfferEula = true
        presentDollGuideEula()
    }

    private func buildDollEntryLookbook() {
        let dollTermsBadgeButton = UIButton(type: .system)
        dollTermsBadgeButton.translatesAutoresizingMaskIntoConstraints = false
        dollTermsBadgeButton.setTitle(**"EUxyLAxy", for: .normal)
        dollTermsBadgeButton.setTitleColor(DolluWardrobePalette.dollRibbonPurple, for: .normal)
        dollTermsBadgeButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        dollTermsBadgeButton.backgroundColor = UIColor(white: 1, alpha: 0.92)
        dollTermsBadgeButton.layer.cornerRadius = 18
        dollTermsBadgeButton.addTarget(self, action: #selector(presentDollGuideEula), for: .touchUpInside)
        dollWardrobeContentView.addSubview(dollTermsBadgeButton)

        let dollEntryEmblemView = UIImageView(image: UIImage(named: "dollu_auth_entry_logo"))
        dollEntryEmblemView.translatesAutoresizingMaskIntoConstraints = false
        dollEntryEmblemView.contentMode = .scaleAspectFill
        dollEntryEmblemView.clipsToBounds = true
        dollEntryEmblemView.layer.cornerRadius = 22
        dollCollectionPanelView.addSubview(dollEntryEmblemView)

        let dollCollectorAccessButton = DolluRibbonActionButton(dollButtonTitle: **"Sixygnxy ixxn", dollUsesLightStyle: true)
        dollCollectorAccessButton.addTarget(self, action: #selector(enterDollCollectorAccess), for: .touchUpInside)
        let dollCollectionStartButton = DolluRibbonActionButton(dollButtonTitle: **"I'erm xynexyw")
        dollCollectionStartButton.addTarget(self, action: #selector(startDollCollectionEntry), for: .touchUpInside)

        let dollChoiceDividerLabel = UILabel()
        dollChoiceDividerLabel.translatesAutoresizingMaskIntoConstraints = false
        dollChoiceDividerLabel.text = **"orxy"
        dollChoiceDividerLabel.textColor = UIColor(white: 1, alpha: 0.42)
        dollChoiceDividerLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .regular)
        dollChoiceDividerLabel.textAlignment = .center

        let dollEntryActionStack = UIStackView(arrangedSubviews: [dollCollectorAccessButton, dollCollectionStartButton, dollChoiceDividerLabel, dollGuidelineConsentView])
        dollEntryActionStack.translatesAutoresizingMaskIntoConstraints = false
        dollEntryActionStack.axis = .vertical
        dollEntryActionStack.alignment = .center
        dollEntryActionStack.spacing = 12
        dollCollectionPanelView.addSubview(dollEntryActionStack)

        dollGuidelineConsentView.dollGuideIsAccepted = DolluWardrobeArchiveStore.satinCollectionArchive.dollGuideAccepted
        dollGuidelineConsentView.dollTermsOpened = { [weak dollEntrySelf = self] in dollEntrySelf?.openDollTermsRoute(.dollTerms) }
        dollGuidelineConsentView.dollPrivacyOpened = { [weak dollEntrySelf = self] in dollEntrySelf?.openDollTermsRoute(.dollPrivacy) }

        NSLayoutConstraint.activate([
            dollTermsBadgeButton.topAnchor.constraint(equalTo: dollWardrobeContentView.safeAreaLayoutGuide.topAnchor, constant: 16),
            dollTermsBadgeButton.trailingAnchor.constraint(equalTo: dollWardrobeContentView.trailingAnchor, constant: -16),
            dollTermsBadgeButton.widthAnchor.constraint(equalToConstant: 78),
            dollTermsBadgeButton.heightAnchor.constraint(equalToConstant: 36),

            dollEntryEmblemView.centerXAnchor.constraint(equalTo: dollCollectionPanelView.centerXAnchor),
            dollEntryEmblemView.topAnchor.constraint(equalTo: dollCollectionPanelView.topAnchor, constant: -45),
            dollEntryEmblemView.widthAnchor.constraint(equalToConstant: 90),
            dollEntryEmblemView.heightAnchor.constraint(equalToConstant: 90),

            dollEntryActionStack.topAnchor.constraint(equalTo: dollEntryEmblemView.bottomAnchor, constant: 26),
            dollEntryActionStack.leadingAnchor.constraint(equalTo: dollCollectionPanelView.leadingAnchor, constant: 22),
            dollEntryActionStack.trailingAnchor.constraint(equalTo: dollCollectionPanelView.trailingAnchor, constant: -22),
            dollEntryActionStack.bottomAnchor.constraint(lessThanOrEqualTo: dollCollectionPanelView.safeAreaLayoutGuide.bottomAnchor, constant: -18),

            dollCollectorAccessButton.leadingAnchor.constraint(equalTo: dollEntryActionStack.leadingAnchor),
            dollCollectorAccessButton.trailingAnchor.constraint(equalTo: dollEntryActionStack.trailingAnchor),
            dollCollectionStartButton.leadingAnchor.constraint(equalTo: dollEntryActionStack.leadingAnchor),
            dollCollectionStartButton.trailingAnchor.constraint(equalTo: dollEntryActionStack.trailingAnchor),
            dollGuidelineConsentView.leadingAnchor.constraint(equalTo: dollEntryActionStack.leadingAnchor, constant: 6),
            dollGuidelineConsentView.trailingAnchor.constraint(equalTo: dollEntryActionStack.trailingAnchor, constant: -6)
        ])
    }

    @objc private func presentDollGuideEula() {
        let dollGuideSheet = DolluEulaSheetViewController()
        dollGuideSheet.modalPresentationStyle = .overFullScreen
        dollGuideSheet.dollGuideAccepted = { [weak dollEntrySelf = self] in
            dollEntrySelf?.dollGuidelineConsentView.dollGuideIsAccepted = true
        }
        present(dollGuideSheet, animated: true)
    }

    @objc private func enterDollCollectorAccess() {
        guard canOpenDollEntryRoute() else { return }
        navigationController?.pushViewController(DolluCollectorAccessViewController(), animated: true)
    }

    @objc private func startDollCollectionEntry() {
        guard canOpenDollEntryRoute() else { return }
        navigationController?.pushViewController(DolluCollectionStartViewController(), animated: true)
    }

    private func canOpenDollEntryRoute() -> Bool {
        guard dollGuidelineConsentView.dollGuideIsAccepted else {
            presentDollSafetyNotice(**"Plxyeaxysexy axygrxyeexy txyo xyDoxyllxyu xyEUxyLAxy bxyefxyorxye xycoxyntxyinxyuixyngxy.")
            return false
        }
        return true
    }
}
