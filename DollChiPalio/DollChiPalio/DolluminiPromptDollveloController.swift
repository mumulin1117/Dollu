import UIKit

class DolluminiPromptDollveloController: UIViewController {
    let dollWardrobeScrollView = UIScrollView()
    let dollWardrobeContentView = UIView()
    let dollLookbookHeaderImageView = UIImageView(image: UIImage(named: "dollu_auth_doll_header"))
    let dollCollectionPanelView = UIView()
    private weak var dollPromptActiveField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        buildDollWardrobeBaseLayout()
        bindDollKeyboardInsets()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(closeDollFieldEditing)))
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        bindDollPromptFields(in: dollWardrobeContentView)
    }

    func buildDollWardrobeBaseLayout(dollPanelTopOverlap: CGFloat = -38, dollPanelMinimumHeight: CGFloat = 430) {
        dollWardrobeScrollView.translatesAutoresizingMaskIntoConstraints = false
        dollWardrobeContentView.translatesAutoresizingMaskIntoConstraints = false
        dollLookbookHeaderImageView.translatesAutoresizingMaskIntoConstraints = false
        dollCollectionPanelView.translatesAutoresizingMaskIntoConstraints = false

        dollLookbookHeaderImageView.contentMode = .scaleAspectFill
        dollLookbookHeaderImageView.clipsToBounds = true
        dollCollectionPanelView.backgroundColor = DolluWardrobePalette.dollArchivePanel
        dollCollectionPanelView.layer.cornerRadius = 36
        dollCollectionPanelView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.addSubview(dollLookbookHeaderImageView)
        view.addSubview(dollWardrobeScrollView)
        dollWardrobeScrollView.addSubview(dollWardrobeContentView)
       
        dollWardrobeContentView.addSubview(dollCollectionPanelView)

        NSLayoutConstraint.activate([
            dollLookbookHeaderImageView.topAnchor.constraint(equalTo: view.topAnchor),
            dollLookbookHeaderImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dollLookbookHeaderImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dollLookbookHeaderImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            
            dollWardrobeScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            dollWardrobeScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dollWardrobeScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dollWardrobeScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollWardrobeContentView.topAnchor.constraint(equalTo: dollWardrobeScrollView.contentLayoutGuide.topAnchor),
            dollWardrobeContentView.leadingAnchor.constraint(equalTo: dollWardrobeScrollView.contentLayoutGuide.leadingAnchor),
            dollWardrobeContentView.trailingAnchor.constraint(equalTo: dollWardrobeScrollView.contentLayoutGuide.trailingAnchor),
            dollWardrobeContentView.bottomAnchor.constraint(equalTo: dollWardrobeScrollView.contentLayoutGuide.bottomAnchor),
            dollWardrobeContentView.widthAnchor.constraint(equalTo: dollWardrobeScrollView.frameLayoutGuide.widthAnchor),
            dollWardrobeContentView.heightAnchor.constraint(greaterThanOrEqualTo: dollWardrobeScrollView.frameLayoutGuide.heightAnchor),

           
            dollCollectionPanelView.topAnchor.constraint(equalTo: dollLookbookHeaderImageView.centerYAnchor, constant: dollPanelTopOverlap),
            dollCollectionPanelView.leadingAnchor.constraint(equalTo: dollWardrobeContentView.leadingAnchor),
            dollCollectionPanelView.trailingAnchor.constraint(equalTo: dollWardrobeContentView.trailingAnchor),
            dollCollectionPanelView.bottomAnchor.constraint(equalTo: dollWardrobeContentView.bottomAnchor),
            dollCollectionPanelView.heightAnchor.constraint(greaterThanOrEqualToConstant: dollPanelMinimumHeight)
        ])
    }

    func presentDollSafetyNotice(_ dollNoticeCopy: String) {
        let dollNoticeDialog = UIViewController()
        dollNoticeDialog.modalPresentationStyle = .overFullScreen
        dollNoticeDialog.view.backgroundColor = UIColor.black.withAlphaComponent(0.46)

        let dollNoticeCard = UIView()
        dollNoticeCard.translatesAutoresizingMaskIntoConstraints = false
        dollNoticeCard.backgroundColor = DolluWardrobePalette.dollArchivePanel
        dollNoticeCard.layer.cornerRadius = 18
        dollNoticeCard.layer.shadowColor = UIColor.black.cgColor
        dollNoticeCard.layer.shadowOpacity = 0.28
        dollNoticeCard.layer.shadowRadius = 14
        dollNoticeCard.layer.shadowOffset = CGSize(width: 0, height: 8)

        let dollNoticeTitle = UILabel()
        dollNoticeTitle.translatesAutoresizingMaskIntoConstraints = false
        dollNoticeTitle.text = "Dollu"
        dollNoticeTitle.textColor = .white
        dollNoticeTitle.textAlignment = .center
        dollNoticeTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)

        let dollNoticeLabel = UILabel()
        dollNoticeLabel.translatesAutoresizingMaskIntoConstraints = false
        dollNoticeLabel.text = dollNoticeCopy
        dollNoticeLabel.textColor = UIColor(white: 1, alpha: 0.84)
        dollNoticeLabel.textAlignment = .center
        dollNoticeLabel.numberOfLines = 0
        dollNoticeLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .regular)

        let dollNoticeButton = DolluminiLayerDollmivoButton(dollButtonTitle: "OK")
        dollNoticeButton.addAction(UIAction { [weak dollNoticeDialog] _ in
            dollNoticeDialog?.dismiss(animated: true)
        }, for: .touchUpInside)

        dollNoticeDialog.view.addSubview(dollNoticeCard)
        dollNoticeCard.addSubview(dollNoticeTitle)
        dollNoticeCard.addSubview(dollNoticeLabel)
        dollNoticeCard.addSubview(dollNoticeButton)

        NSLayoutConstraint.activate([
            dollNoticeCard.centerXAnchor.constraint(equalTo: dollNoticeDialog.view.centerXAnchor),
            dollNoticeCard.centerYAnchor.constraint(equalTo: dollNoticeDialog.view.centerYAnchor),
            dollNoticeCard.leadingAnchor.constraint(equalTo: dollNoticeDialog.view.leadingAnchor, constant: 36),
            dollNoticeCard.trailingAnchor.constraint(equalTo: dollNoticeDialog.view.trailingAnchor, constant: -36),

            dollNoticeTitle.topAnchor.constraint(equalTo: dollNoticeCard.topAnchor, constant: 24),
            dollNoticeTitle.leadingAnchor.constraint(equalTo: dollNoticeCard.leadingAnchor, constant: 22),
            dollNoticeTitle.trailingAnchor.constraint(equalTo: dollNoticeCard.trailingAnchor, constant: -22),

            dollNoticeLabel.topAnchor.constraint(equalTo: dollNoticeTitle.bottomAnchor, constant: 14),
            dollNoticeLabel.leadingAnchor.constraint(equalTo: dollNoticeCard.leadingAnchor, constant: 24),
            dollNoticeLabel.trailingAnchor.constraint(equalTo: dollNoticeCard.trailingAnchor, constant: -24),

            dollNoticeButton.topAnchor.constraint(equalTo: dollNoticeLabel.bottomAnchor, constant: 22),
            dollNoticeButton.leadingAnchor.constraint(equalTo: dollNoticeCard.leadingAnchor, constant: 24),
            dollNoticeButton.trailingAnchor.constraint(equalTo: dollNoticeCard.trailingAnchor, constant: -24),
            dollNoticeButton.bottomAnchor.constraint(equalTo: dollNoticeCard.bottomAnchor, constant: -22)
        ])

        present(dollNoticeDialog, animated: true)
    }

    func openDollTermsRoute(_ dollGuideRouteKind: DolluLegalRouteViewController.DollGuideRouteKind) {
        navigationController?.pushViewController(DolluLegalRouteViewController(dollGuideRouteKind: dollGuideRouteKind), animated: true)
    }

    @objc private func closeDollFieldEditing() {
        view.endEditing(true)
    }

    private func bindDollKeyboardInsets() {
        NotificationCenter.default.addObserver(self, selector: #selector(liftDollWardrobeForInput(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(settleDollWardrobeAfterInput(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc private func liftDollWardrobeForInput(_ dollKeyboardNotice: Notification) {
        guard let dollKeyboardFrame = dollKeyboardNotice.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        let dollKeyboardBottomInset = max(0, dollKeyboardFrame.height - view.safeAreaInsets.bottom) + 24
        dollWardrobeScrollView.contentInset.bottom = dollKeyboardBottomInset
        var dollIndicatorInsets = dollWardrobeScrollView.verticalScrollIndicatorInsets
        dollIndicatorInsets.bottom = dollKeyboardBottomInset
        dollWardrobeScrollView.verticalScrollIndicatorInsets = dollIndicatorInsets
        revealDollPromptField()
    }

    @objc private func settleDollWardrobeAfterInput(_ dollKeyboardNotice: Notification) {
        dollWardrobeScrollView.contentInset.bottom = 0
        var dollIndicatorInsets = dollWardrobeScrollView.verticalScrollIndicatorInsets
        dollIndicatorInsets.bottom = 0
        dollWardrobeScrollView.verticalScrollIndicatorInsets = dollIndicatorInsets
    }

    private func bindDollPromptFields(in dollFieldContainer: UIView) {
        for dollFieldSubview in dollFieldContainer.subviews {
            if let dollPromptField = dollFieldSubview as? UITextField {
                dollPromptField.removeTarget(self, action: #selector(dollPromptFieldDidBegin(_:)), for: .editingDidBegin)
                dollPromptField.addTarget(self, action: #selector(dollPromptFieldDidBegin(_:)), for: .editingDidBegin)
            }
            bindDollPromptFields(in: dollFieldSubview)
        }
    }

    @objc private func dollPromptFieldDidBegin(_ dollPromptField: UITextField) {
        dollPromptActiveField = dollPromptField
        revealDollPromptField()
    }

    private func revealDollPromptField() {
        guard let dollPromptField = dollPromptActiveField else {
            return
        }
        let dollPromptRect = dollPromptField.convert(dollPromptField.bounds, to: dollWardrobeContentView).insetBy(dx: -18, dy: -24)
        dollWardrobeScrollView.scrollRectToVisible(dollPromptRect, animated: true)
    }
}
