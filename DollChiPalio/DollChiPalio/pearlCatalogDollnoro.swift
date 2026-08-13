import UIKit

enum DolluWardrobePalette {
    static let dollBackdropInk = UIColor(red: 0.04, green: 0.03, blue: 0.10, alpha: 1)
    static let dollArchivePanel = UIColor(red: 0.04, green: 0.03, blue: 0.12, alpha: 0.96)
    static let dollArchivePanelSoft = UIColor(red: 0.12, green: 0.10, blue: 0.28, alpha: 1)
    static let dollRibbonPurple = UIColor(red: 0.45, green: 0.29, blue: 0.96, alpha: 1)
    static let dollRibbonViolet = UIColor(red: 0.62, green: 0.13, blue: 0.98, alpha: 1)
    static let dollMemoMuted = UIColor(white: 1, alpha: 0.58)
    static let dollFieldInk = UIColor(red: 0.15, green: 0.14, blue: 0.20, alpha: 1)
    static let dollPromptPlaceholder = UIColor(red: 0.56, green: 0.56, blue: 0.58, alpha: 1)

    static func dollRoundedFont(dollFontSize: CGFloat, dollFontWeight: UIFont.Weight) -> UIFont {
        let dollFontDescriptor = UIFont.systemFont(ofSize: dollFontSize, weight: dollFontWeight).fontDescriptor.withDesign(.rounded)
        return UIFont(descriptor: dollFontDescriptor ?? UIFont.systemFont(ofSize: dollFontSize, weight: dollFontWeight).fontDescriptor, size: dollFontSize)
    }
}

final class DolluminiLayerDollmivoButton: UIButton {
    private let dollRibbonGradientLayer = CAGradientLayer()

    init(dollButtonTitle: String, dollUsesLightStyle: Bool = false) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(dollButtonTitle, for: .normal)
        titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .bold)
        layer.cornerRadius = 26
        clipsToBounds = true
        heightAnchor.constraint(equalToConstant: 52).isActive = true

        if dollUsesLightStyle {
            backgroundColor = .white
            setTitleColor(DolluWardrobePalette.dollRibbonPurple, for: .normal)
        } else {
            dollRibbonGradientLayer.colors = [
                DolluWardrobePalette.dollRibbonViolet.cgColor,
                DolluWardrobePalette.dollRibbonPurple.cgColor,
                UIColor(red: 0.36, green: 0.46, blue: 1, alpha: 1).cgColor
            ]
            dollRibbonGradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            dollRibbonGradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            layer.insertSublayer(dollRibbonGradientLayer, at: 0)
            setTitleColor(.white, for: .normal)
        }
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        dollRibbonGradientLayer.frame = bounds
        dollRibbonGradientLayer.cornerRadius = bounds.height / 2
    }
}

final class DolluWardrobePromptField: UIView {
    let dollPromptTextField = UITextField()

    init(dollIconAssetName: String, dollPromptCopy: String, dollInputBoard: UIKeyboardType = .default, dollUsesSecretEntry: Bool = false) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        layer.cornerRadius = 26
        clipsToBounds = true
        heightAnchor.constraint(equalToConstant: 52).isActive = true

        let dollPromptIconView = UIImageView(image: UIImage(named: dollIconAssetName))
        dollPromptIconView.translatesAutoresizingMaskIntoConstraints = false
        dollPromptIconView.contentMode = .scaleAspectFit
        dollPromptIconView.tintColor = DolluWardrobePalette.dollPromptPlaceholder

        dollPromptTextField.translatesAutoresizingMaskIntoConstraints = false
        dollPromptTextField.placeholder = dollPromptCopy
        dollPromptTextField.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .regular)
        dollPromptTextField.textColor = DolluWardrobePalette.dollFieldInk
        dollPromptTextField.keyboardType = dollInputBoard
        dollPromptTextField.isSecureTextEntry = dollUsesSecretEntry
        dollPromptTextField.autocapitalizationType = .none
        dollPromptTextField.autocorrectionType = .no
        dollPromptTextField.attributedPlaceholder = NSAttributedString(
            string: dollPromptCopy,
            attributes: [.foregroundColor: DolluWardrobePalette.dollPromptPlaceholder]
        )

        addSubview(dollPromptIconView)
        addSubview(dollPromptTextField)

        NSLayoutConstraint.activate([
            dollPromptIconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 23),
            dollPromptIconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollPromptIconView.widthAnchor.constraint(equalToConstant: 23),
            dollPromptIconView.heightAnchor.constraint(equalToConstant: 23),
            dollPromptTextField.leadingAnchor.constraint(equalTo: dollPromptIconView.trailingAnchor, constant: 16),
            dollPromptTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            dollPromptTextField.topAnchor.constraint(equalTo: topAnchor),
            dollPromptTextField.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }
}

final class DollusatinCoatDollbopView: UIControl {
    private let dollConsentMarkerView = UIButton.init() //UIImageView(image: UIImage(named: "dollu_auth_consent_idle"))
//    private let dollConsentCheckLabel = UILabel()
    private let dollConsentCopyView = UITextView()

    var dollsatinCollarDollriloed: (() -> Void)?
    var dollpearlGuideDollukpned: (() -> Void)?

    var dollpearlSkirtDollnivated: Bool = false {
        didSet {
            refreshDollGuideMarker()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        dollConsentMarkerView.setImage(UIImage(named: "dollu_auth_consent_idle"), for: .normal)
        dollConsentMarkerView.setImage(UIImage(named: "gill"), for: .selected)
        dollConsentMarkerView.translatesAutoresizingMaskIntoConstraints = false
//        dollConsentMarkerView.contentMode = .scaleAspectFit
//        dollConsentMarkerView.layer.cornerRadius = 11
//        dollConsentMarkerView.clipsToBounds = true
//
//        dollConsentCheckLabel.translatesAutoresizingMaskIntoConstraints = false
//        dollConsentCheckLabel.text = **"✓"
//        dollConsentCheckLabel.textColor = .white
//        dollConsentCheckLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .bold)
//        dollConsentCheckLabel.textAlignment = .center

        dollConsentCopyView.translatesAutoresizingMaskIntoConstraints = false
        dollConsentCopyView.backgroundColor = .clear
        dollConsentCopyView.isScrollEnabled = false
        dollConsentCopyView.isEditable = false
        dollConsentCopyView.textContainerInset = .zero
        dollConsentCopyView.textContainer.lineFragmentPadding = 0
        dollConsentCopyView.delegate = self
        dollConsentCopyView.linkTextAttributes = [
            .foregroundColor: UIColor.white,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]

        let dollGuideCopy = NSMutableAttributedString(
            string: **"Byxy cxyonxytixynuxyinxyg xyyoxyu xyagxyrexye xytoxy oxyurxy Txyerxymsxy oxyf xySexyrvxyicxye xyanxyd xyPrxyivxyacxyy xyPoxylixycyxy.",
            attributes: [
                .foregroundColor: DolluWardrobePalette.dollMemoMuted,
                .font: DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .regular)
            ]
        )
        dollGuideCopy.addAttribute(.link, value: **"doxyllxyu:xy//xytexyrmxys", range: (dollGuideCopy.string as NSString).range(of: **"Texyrmxys xyofxy Sxyerxyvixycexy"))
        dollGuideCopy.addAttribute(.link, value: **"doxyllxyu:xy//xyprxyivxyacxyy", range: (dollGuideCopy.string as NSString).range(of: **"Prxyivxyacxyy xyPoxylixycyxy"))
        dollConsentCopyView.attributedText = dollGuideCopy

        addSubview(dollConsentMarkerView)
//        addSubview(dollConsentCheckLabel)
        addSubview(dollConsentCopyView)

        NSLayoutConstraint.activate([
            dollConsentMarkerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            dollConsentMarkerView.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            dollConsentMarkerView.widthAnchor.constraint(equalToConstant: 22),
            dollConsentMarkerView.heightAnchor.constraint(equalToConstant: 22),
//            dollConsentCheckLabel.centerXAnchor.constraint(equalTo: dollConsentMarkerView.centerXAnchor),
//            dollConsentCheckLabel.centerYAnchor.constraint(equalTo: dollConsentMarkerView.centerYAnchor),
            dollConsentCopyView.leadingAnchor.constraint(equalTo: dollConsentMarkerView.trailingAnchor, constant: 10),
            dollConsentCopyView.topAnchor.constraint(equalTo: topAnchor),
            dollConsentCopyView.trailingAnchor.constraint(equalTo: trailingAnchor),
            dollConsentCopyView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        dollConsentMarkerView.addTarget(self, action: #selector(toggleDollGuideAcceptance), for: .touchUpInside)
        refreshDollGuideMarker()
    }

    required init?(coder: NSCoder) {
        nil
    }

    @objc private func toggleDollGuideAcceptance() {
        dollpearlSkirtDollnivated.toggle()
        DolluWardrobeArchiveStore.satinCollectionArchive.setDollGuideAccepted(dollpearlSkirtDollnivated)
    }

    private func refreshDollGuideMarker() {
        dollConsentMarkerView.isSelected = dollpearlSkirtDollnivated
//        dollConsentMarkerView.backgroundColor = dollGuideIsAccepted ? DolluWardrobePalette.dollRibbonPurple : .clear
//        dollConsentMarkerView.layer.borderWidth = dollGuideIsAccepted ? 0 : 1
//        dollConsentMarkerView.layer.borderColor = UIColor(white: 1, alpha: 0.28).cgColor
    }
}

extension DollusatinCoatDollbopView: UITextViewDelegate {
    func textView(_ dollConsentCopyView: UITextView, shouldInteractWith dollGuideRouteURL: URL, in dollGuideRange: NSRange, interaction dollGuideInteraction: UITextItemInteraction) -> Bool {
        if dollGuideRouteURL.host == **"texyrmxys" {
            dollsatinCollarDollriloed?()
        } else if dollGuideRouteURL.host == **"prxyivxyacxyy" {
            dollpearlGuideDollukpned?()
        }
        return false
    }
}
