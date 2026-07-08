import UIKit

final class DolluLegalRouteViewController: UIViewController {
    enum DollGuideRouteKind {
        case dollTerms
        case dollPrivacy

        var dollGuideRouteTitle: String {
            switch self {
            case .dollTerms: return "Dollu Terms of Service"
            case .dollPrivacy: return "Dollu Privacy Policy"
            }
        }
    }
   
    private let dollGuideRouteKind: DollGuideRouteKind

    init(dollGuideRouteKind: DollGuideRouteKind) {
        self.dollGuideRouteKind = dollGuideRouteKind
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        buildDollGuideRouteLayout()
    }

    private func buildDollGuideRouteLayout() {
        let dollGuideTitleLabel = UILabel()
        dollGuideTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollGuideTitleLabel.text = dollGuideRouteKind.dollGuideRouteTitle
        dollGuideTitleLabel.textColor = .white
        dollGuideTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 26, dollFontWeight: .heavy)

        let dollGuideCopyView = UITextView()
        dollGuideCopyView.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCopyView.backgroundColor = .clear
        dollGuideCopyView.textColor = UIColor(white: 1, alpha: 0.78)
        dollGuideCopyView.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .regular)
        dollGuideCopyView.text = dollGuideRouteCopy
        dollGuideCopyView.isEditable = false

        view.addSubview(dollGuideTitleLabel)
        view.addSubview(dollGuideCopyView)

        NSLayoutConstraint.activate([
            dollGuideTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            dollGuideTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            dollGuideTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),

            dollGuideCopyView.topAnchor.constraint(equalTo: dollGuideTitleLabel.bottomAnchor, constant: 20),
            dollGuideCopyView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            dollGuideCopyView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            dollGuideCopyView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12)
        ])
    }

    private var dollGuideRouteCopy: String {
        switch dollGuideRouteKind {
        case .dollTerms:
            return """
            Effective Date: June 19, 2026
            Welcome to Dollu! These Terms of Service ("Terms") govern your access to and use of the Dollu mobile application, its features, community spaces, and the AI Collector utility. By accessing or using Dollu, you agree to comply with and be bound by these Terms. If you do not agree, please do not use the application.
            1. Eligibility and Account Creation
            To use Dollu, you must be at least 12 years old (or the minimum legal age in your country to consent to data processing). You agree to provide accurate, truthful, and current information when creating your account. You are solely responsible for safeguarding your account credentials and for all activities that occur under your account.
            2. App Functionality & Creative Ownership
            Dollu provides digital tools for organizing doll looks, capturing photos/videos, keeping style journals, and tracking collection metrics.
            •Your Content: You retain full copyright ownership of any photos, videos, text, or design records you upload to Dollu. By posting content publicly on Dollu, you grant us a worldwide, non-exclusive, royalty-free license to host, display, reproduce, and distribute your content within the App platform to enable community interactions.
            •Our Intellectual Property: The Dollu interface, design elements, logo, software code, and the proprietary algorithms powering the AI Collector are the exclusive property of Dollu Inc. and are protected by international copyright laws.
            3. Community Guidelines and Acceptable Use
            Dollu is a dedicated space for shared appreciation of doll dressing and design. To maintain this focused atmosphere, you agree not to misuse our systems:
            •You will not use the platform for any purpose other than doll hobbyism and creative expression.
            •You will not deploy bots, scrapers, or automated tools to crawl the app or extract user data.
            •You will not upload malicious code, viruses, or exploit system bugs.
            •You will strictly respect other users. Spamming, mass-tagging, or ruining the hobbyist experience through hostile comments will result in account restriction.
            4. The AI Collector Disclaimer
            The AI Collector feature offers automated outfit prompts, trend ideas, and organization advice. This feature is provided on an "as-is" and "as-available" basis. While we strive to tune the AI for helpful styling inspiration, Dollu does not guarantee the accuracy, completeness, or relevance of the AI-generated suggestions, and we accept no liability for any reliance placed on these automated notes.
            5. Limitation of Liability and Disclaimers
            Dollu is provided without warranties of any kind, either express or implied. We do not guarantee that the App will be completely error-free or uninterrupted. To the maximum extent permitted by applicable law, Dollu Inc. shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or data arising out of your use or inability to use the App.
            6. Modifications to Terms
            We reserve the right to revise or update these Terms at any time. If changes are substantial, we will notify you through an in-app alert or via your registered email prior to the changes taking effect. Continued use of the App after modifications constitutes your acceptance of the new Terms.
            7. Contact Information
            If you have any questions, feedback, or complaints regarding these Terms, please contact us at: Dolluair@gmail.com.

            """
        case .dollPrivacy:
            return """
            Effective Date: June 19, 2026
            At Dollu, we respect your privacy and are committed to protecting the personal data you share within our doll-collecting community. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application.
            1. Information We Collect
            To provide a feature-rich, interactive experience for doll enthusiasts, we collect the following types of information:
            •Account Information: When you sign up, we collect your email address, password, username, and profile picture.
            •User-Generated Content: Photos, short videos, style journal entries, collection checklists, outfit comparison notes, comments, and community reactions that you actively create within the App.
            •AI Collector Interactions: Text prompts, queries, and preferences you submit when interacting with our AI Collector feature to receive styling suggestions, trend ideas, or organization notes.
            •Device and Usage Data: IP address, device model, operating system version, unique device identifiers, and anonymized app usage analytics (e.g., features accessed, duration of use) to optimize performance.
            2. How We Use Your Information
            We process your data based on legitimate business interests and to fulfill our service commitments to you:
            •To host, organize, and display your doll looks, style journals, and collection progress.
            •To process and generate responses for the AI Collector feature based on your specific prompts.
            •To foster community interactions, enabling post sharing, topic-based discussions, and reaction tallies.
            •To enforce security, monitor for objectionable content, handle user reports, and maintain a respectful, safe environment.
            •To track app stability, fix bugs, and deliver software updates.
            3. Data Storage and Retention
            Your profile details and shared community posts are securely stored on our cloud servers. Your personal style journals, custom outfit notes, and collection checklists are saved locally on your device or synced securely with our servers if backup features are enabled. We retain your personal information for as long as your account remains active or as needed to provide you with the App's services. If you request account deletion, your personal data will be completely wiped from our active databases within 30 days, except where retention is legally mandated.
            4. Data Sharing and Third-Party Services
            We do not sell, rent, or trade your personal data to third parties for marketing purposes. We may share limited data only under the following circumstances:
            •Service Providers: Cloud hosting vendors or content moderation tools acting under strict confidentiality agreements.
            •AI Integration: Anonymized text prompts may be processed by secure AI model endpoints solely to generate your styling and trend suggestions.
            •Legal Compliance: If required by law, subpoena, or government authority to protect user safety or defend our rights.
            5. Your Rights and Choices
            Depending on your jurisdiction, you possess rights to access, correct, update, or delete your personal data. You can edit your profile details directly inside the App settings. To request full deletion of your account and associated data, please contact our support team.
            6. Contact Us
            For any privacy-related questions, data access requests, or deletion inquiries, please reach out to us at: Dolluair@gmail.com.

            """
        }
    }
}
