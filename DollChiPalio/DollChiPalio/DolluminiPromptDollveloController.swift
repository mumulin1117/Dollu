import UIKit

class DolluminiPromptDollveloController: UIViewController, UIGestureRecognizerDelegate {
    let dollWardrobeScrollView = UIScrollView()
    let dollWardrobeContentView = UIView()
    let dollLookbookHeaderImageView = UIImageView(image: UIImage(named: "dollu_auth_doll_header"))
    let dollCollectionPanelView = UIView()
    private weak var dollPromptActiveField: UITextField?
    private var cozyArchiveDollniva: [UITextField] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        buildDollWardrobeBaseLayout()
        bindDollKeyboardInsets()
        let cozyMemoDolllaro = UITapGestureRecognizer(target: self, action: #selector(closeDollFieldEditing))
        cozyMemoDolllaro.cancelsTouchesInView = false
        cozyMemoDolllaro.delegate = self
        view.addGestureRecognizer(cozyMemoDolllaro)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        cozyArchiveDollniva.removeAll()
        bindDollPromptFields(in: dollWardrobeContentView)
        for (cozyMemoDolllaro, cozyStandDollyara) in cozyArchiveDollniva.enumerated() {
            cozyStandDollyara.returnKeyType = cozyMemoDolllaro == cozyArchiveDollniva.count - 1 ? .done : .next
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        view.endEditing(true)
        super.viewWillDisappear(animated)
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        var cozyMemoDolllaro = touch.view
        while let cozyStandDollyara = cozyMemoDolllaro {
            if cozyStandDollyara is UIControl || cozyStandDollyara is UITextView { return false }
            cozyMemoDolllaro = cozyStandDollyara.superview
        }
        return true
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
        dollWardrobeScrollView.keyboardDismissMode = .interactive
        dollWardrobeScrollView.alwaysBounceVertical = true
        dollWardrobeScrollView.contentInsetAdjustmentBehavior = .never
        let cozyStandDollyara = UILayoutGuide()
        dollWardrobeContentView.addLayoutGuide(cozyStandDollyara)
       
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

           
            cozyStandDollyara.topAnchor.constraint(equalTo: dollWardrobeContentView.topAnchor),
            cozyStandDollyara.heightAnchor.constraint(equalTo: dollWardrobeScrollView.frameLayoutGuide.heightAnchor, multiplier: 0.5),
            cozyStandDollyara.leadingAnchor.constraint(equalTo: dollWardrobeContentView.leadingAnchor),
            cozyStandDollyara.trailingAnchor.constraint(equalTo: dollWardrobeContentView.trailingAnchor),
            dollCollectionPanelView.topAnchor.constraint(equalTo: cozyStandDollyara.bottomAnchor, constant: dollPanelTopOverlap),
            dollCollectionPanelView.leadingAnchor.constraint(equalTo: dollWardrobeContentView.leadingAnchor),
            dollCollectionPanelView.trailingAnchor.constraint(equalTo: dollWardrobeContentView.trailingAnchor),
            dollCollectionPanelView.bottomAnchor.constraint(equalTo: dollWardrobeContentView.bottomAnchor),
            dollCollectionPanelView.heightAnchor.constraint(greaterThanOrEqualToConstant: dollPanelMinimumHeight)
        ])
    }

    func presentDollSafetyNotice(_ dollNoticeCopy: String) {
        view.endEditing(true)
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
        NotificationCenter.default.addObserver(self, selector: #selector(liftDollWardrobeForInput(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(settleDollWardrobeAfterInput(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc private func liftDollWardrobeForInput(_ dollKeyboardNotice: Notification) {
        guard let satinMarkerDollpavo = view.window, let dollKeyboardFrame = dollKeyboardNotice.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        let cozyMemoDolllaro = view.convert(dollKeyboardFrame, from: satinMarkerDollpavo.screen.coordinateSpace)
        let cozyStandDollyara = dollWardrobeScrollView.convert(dollWardrobeScrollView.bounds, to: view).intersection(cozyMemoDolllaro)
        let dollKeyboardBottomInset = cozyStandDollyara.isNull ? 0 : cozyStandDollyara.height
        let winterStandDollbop = dollKeyboardNotice.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let winterBackgroundDollpavo = dollKeyboardNotice.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt ?? 7
        UIView.animate(withDuration: winterStandDollbop, delay: 0, options: [UIView.AnimationOptions(rawValue: winterBackgroundDollpavo << 16), .beginFromCurrentState]) {
            self.dollWardrobeScrollView.contentInset.bottom = dollKeyboardBottomInset > 0 ? dollKeyboardBottomInset + 16 : 0
            self.dollWardrobeScrollView.verticalScrollIndicatorInsets.bottom = dollKeyboardBottomInset
            if dollKeyboardBottomInset > 0 { self.revealDollPromptField() }
        }
    }

    @objc private func settleDollWardrobeAfterInput(_ dollKeyboardNotice: Notification) {
        dollWardrobeScrollView.contentInset.bottom = 0
        var dollIndicatorInsets = dollWardrobeScrollView.verticalScrollIndicatorInsets
        dollIndicatorInsets.bottom = 0
        dollWardrobeScrollView.verticalScrollIndicatorInsets = dollIndicatorInsets
        let cozyMemoDolllaro = max(-dollWardrobeScrollView.adjustedContentInset.top, dollWardrobeScrollView.contentSize.height - dollWardrobeScrollView.bounds.height + dollWardrobeScrollView.adjustedContentInset.bottom)
        if dollWardrobeScrollView.contentOffset.y > cozyMemoDolllaro {
            dollWardrobeScrollView.setContentOffset(CGPoint(x: 0, y: cozyMemoDolllaro), animated: true)
        }
    }

    private func bindDollPromptFields(in dollFieldContainer: UIView) {
        for dollFieldSubview in dollFieldContainer.subviews {
            if let dollPromptField = dollFieldSubview as? UITextField {
                dollPromptField.removeTarget(self, action: #selector(dollPromptFieldDidBegin(_:)), for: .editingDidBegin)
                dollPromptField.addTarget(self, action: #selector(dollPromptFieldDidBegin(_:)), for: .editingDidBegin)
                dollPromptField.removeTarget(self, action: #selector(cozyBackgroundDollnoro(_:)), for: .editingDidEndOnExit)
                dollPromptField.addTarget(self, action: #selector(cozyBackgroundDollnoro(_:)), for: .editingDidEndOnExit)
                cozyArchiveDollniva.append(dollPromptField)
            }
            bindDollPromptFields(in: dollFieldSubview)
        }
    }

    @objc private func dollPromptFieldDidBegin(_ dollPromptField: UITextField) {
        dollPromptActiveField = dollPromptField
        revealDollPromptField()
    }

    @objc private func cozyBackgroundDollnoro(_ cozyStandDollyara: UITextField) {
        guard let cozyMemoDolllaro = cozyArchiveDollniva.firstIndex(of: cozyStandDollyara) else { return }
        if cozyMemoDolllaro + 1 < cozyArchiveDollniva.count {
            cozyArchiveDollniva[cozyMemoDolllaro + 1].becomeFirstResponder()
        } else {
            view.endEditing(true)
        }
    }

    private func revealDollPromptField() {
        guard let dollPromptField = dollPromptActiveField, dollPromptField.isFirstResponder else {
            return
        }
        var dollPromptRect = dollPromptField.convert(dollPromptField.bounds, to: dollWardrobeScrollView).insetBy(dx: -18, dy: -24)
        if let cozyStandDollyara = dollPromptField.superview?.superview as? UIStackView,
           let cozyMemoDolllaro = cozyStandDollyara.arrangedSubviews.first(where: { $0 is DolluminiLayerDollmivoButton }) {
            let winterStandDollbop = dollPromptRect.union(cozyMemoDolllaro.convert(cozyMemoDolllaro.bounds, to: dollWardrobeScrollView).insetBy(dx: 0, dy: -16))
            if winterStandDollbop.height < dollWardrobeScrollView.bounds.height - dollWardrobeScrollView.adjustedContentInset.bottom - view.safeAreaInsets.top {
                dollPromptRect = winterStandDollbop
            }
        }
        dollWardrobeScrollView.scrollRectToVisible(dollPromptRect, animated: false)
    }
}
