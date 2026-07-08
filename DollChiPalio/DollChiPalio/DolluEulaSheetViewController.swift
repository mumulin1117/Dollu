import UIKit

final class DolluEulaSheetViewController: UIViewController {
    var dollGuideAccepted: (() -> Void)?

    private let dollGuideCardView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollGuideSheet()
    }

    private func buildDollGuideSheet() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.58)

        dollGuideCardView.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCardView.backgroundColor = UIColor(red: 0.04, green: 0.03, blue: 0.12, alpha: 1)
        dollGuideCardView.layer.cornerRadius = 18
        dollGuideCardView.layer.shadowColor = UIColor.black.cgColor
        dollGuideCardView.layer.shadowOpacity = 0.35
        dollGuideCardView.layer.shadowRadius = 16
        dollGuideCardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.addSubview(dollGuideCardView)

        let dollGuideTitleLabel = UILabel()
        dollGuideTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollGuideTitleLabel.text = "EULA"
        dollGuideTitleLabel.textColor = .white
        dollGuideTitleLabel.textAlignment = .center
        dollGuideTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)

        let dollGuideCopyView = UITextView()
        dollGuideCopyView.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCopyView.backgroundColor = .clear
        dollGuideCopyView.textColor = UIColor(white: 1, alpha: 0.86)
        dollGuideCopyView.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .regular)
        dollGuideCopyView.text = dollGuidePolicyCopy
        dollGuideCopyView.isEditable = false
        dollGuideCopyView.showsVerticalScrollIndicator = true
        dollGuideCopyView.textContainerInset = .zero
        dollGuideCopyView.textContainer.lineFragmentPadding = 0

        let dollGuideCancelButton = UIButton(type: .system)
        dollGuideCancelButton.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCancelButton.setTitle("Cancel", for: .normal)
        dollGuideCancelButton.setTitleColor(UIColor(white: 1, alpha: 0.78), for: .normal)
        dollGuideCancelButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .bold)
        dollGuideCancelButton.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollGuideCancelButton.layer.cornerRadius = 23
        dollGuideCancelButton.addTarget(self, action: #selector(dismissDollGuideSheet), for: .touchUpInside)

        let dollGuideAgreeButton = DolluRibbonActionButton(dollButtonTitle: "Agree")
        dollGuideAgreeButton.addTarget(self, action: #selector(acceptDollGuideSheet), for: .touchUpInside)

        let dollGuideActionRow = UIStackView(arrangedSubviews: [dollGuideCancelButton, dollGuideAgreeButton])
        dollGuideActionRow.translatesAutoresizingMaskIntoConstraints = false
        dollGuideActionRow.axis = .horizontal
        dollGuideActionRow.spacing = 16
        dollGuideActionRow.distribution = .fillEqually

        dollGuideCardView.addSubview(dollGuideTitleLabel)
        dollGuideCardView.addSubview(dollGuideCopyView)
        dollGuideCardView.addSubview(dollGuideActionRow)

        NSLayoutConstraint.activate([
            dollGuideCardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dollGuideCardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dollGuideCardView.widthAnchor.constraint(equalToConstant: 324),
            dollGuideCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            dollGuideCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            dollGuideCardView.heightAnchor.constraint(equalToConstant: 491),

            dollGuideTitleLabel.topAnchor.constraint(equalTo: dollGuideCardView.topAnchor, constant: 28),
            dollGuideTitleLabel.leadingAnchor.constraint(equalTo: dollGuideCardView.leadingAnchor, constant: 24),
            dollGuideTitleLabel.trailingAnchor.constraint(equalTo: dollGuideCardView.trailingAnchor, constant: -24),

            dollGuideCopyView.topAnchor.constraint(equalTo: dollGuideTitleLabel.bottomAnchor, constant: 22),
            dollGuideCopyView.leadingAnchor.constraint(equalTo: dollGuideCardView.leadingAnchor, constant: 20),
            dollGuideCopyView.trailingAnchor.constraint(equalTo: dollGuideCardView.trailingAnchor, constant: -20),
            dollGuideCopyView.heightAnchor.constraint(lessThanOrEqualToConstant: 280),

            dollGuideActionRow.topAnchor.constraint(equalTo: dollGuideCopyView.bottomAnchor, constant: 22),
            dollGuideActionRow.leadingAnchor.constraint(equalTo: dollGuideCardView.leadingAnchor, constant: 20),
            dollGuideActionRow.trailingAnchor.constraint(equalTo: dollGuideCardView.trailingAnchor, constant: -20),
            dollGuideActionRow.bottomAnchor.constraint(equalTo: dollGuideCardView.bottomAnchor, constant: -22),
            dollGuideCancelButton.heightAnchor.constraint(equalToConstant: 46),
            dollGuideAgreeButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }

    @objc private func dismissDollGuideSheet() {
        dismiss(animated: true)
    }

    @objc private func acceptDollGuideSheet() {
        DolluWardrobeArchiveStore.satinCollectionArchive.setDollGuideAccepted(true)
        dollGuideAccepted?()
        dismiss(animated: true)
    }

    private var dollGuidePolicyCopy: String {
        """
        Welcome to Dollu. Dollu is a creative collector space for styling dolls, saving outfit ideas, organizing collection notes, recording photos or short videos of doll looks, and sharing hobby inspiration with respectful doll fans.

        Important service boundary: Dollu is not a random, anonymous, adult, or suggestive chat service. Dollu is built for lawful doll styling, collection records, outfit showcases, topic-based discussion, reactions, and AI Collector suggestions related to doll outfits, accessories, trend ideas, and simple organization notes.

        Account eligibility: you may create and use an account only if you meet the lawful age and local eligibility requirements in your region. You must provide accurate registration information, keep your account under your own control, and not impersonate another person or use Dollu to misrepresent identity, ownership, or collection content.

        Community conduct: use Dollu to document doll looks, accessory matching, seasonal styling ideas, collection progress, and respectful feedback. Do not harass, threaten, shame, exploit, deceive, spam, or pressure other users. Do not upload content that violates another person's rights, privacy, or local law.

        Strict content rules: content involving harm to minors, sexual or adult material, suggestive exploitation, graphic violence, hateful conduct, bullying, illegal activity, fraud, impersonation, malicious links, or attempts to bypass moderation is not allowed. Dollu may restrict, hide, remove, or refuse any content that conflicts with these rules.

        AI Collector notice: AI Collector features are intended only to support doll outfit prompts, styling suggestions, trend ideas, and collection organization. AI output may be incomplete or inaccurate. You remain responsible for reviewing suggestions before using or sharing them.

        Safety tools and review: Dollu provides reporting and blocking tools to help keep the community comfortable and focused on the hobby. Reported accounts, posts, comments, photos, videos, and profile details may be reviewed. Serious or repeated violations may lead to content removal, feature limits, account suspension, permanent ban, or other protective measures.

        Privacy and local data: Dollu may store account and acceptance status locally on this device and use submitted content only as described in the Privacy Policy. Do not share sensitive personal information in public collection posts or comments.

        By tapping Agree, you confirm that you have read this EULA, understand the Terms of Service and Privacy Policy, meet the account requirements, and will use Dollu only for lawful doll styling, collection records, AI-assisted organization, and respectful community sharing.
        """
    }
}
