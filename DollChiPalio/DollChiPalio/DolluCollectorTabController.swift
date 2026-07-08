import UIKit

enum DolluCollectorTab: CaseIterable {
    case wardrobe
    case checkin
    case lookbook
    case profile

    var dollTitle: String {
        switch self {
        case .wardrobe: return "Home"
        case .checkin: return "Record"
        case .lookbook: return "AI"
        case .profile: return "Me"
        }
    }
}

final class DolluCollectorTabController: UIViewController, UINavigationControllerDelegate {
    private let cottonFrameDollukp = UIView()
    private let daintyFrameDollrevo = DolluCuratedTabBarView()
    private var satinCollectionDollvelo: UIViewController?
    private var embroideredCollectionDolllumi: DolluCollectorTab = .wardrobe

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollTabStage()
        switchDollCollectorTab(.wardrobe)
    }

    private func buildDollTabStage() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cottonFrameDollukp)

        daintyFrameDollrevo.translatesAutoresizingMaskIntoConstraints = false
        daintyFrameDollrevo.dollTabSelected = { [weak self] dollTab in
            self?.switchDollCollectorTab(dollTab)
        }
        daintyFrameDollrevo.dollCreateTapped = { [weak self] in
            self?.openDollCreateRoute()
        }
        view.addSubview(daintyFrameDollrevo)

        NSLayoutConstraint.activate([
            cottonFrameDollukp.topAnchor.constraint(equalTo: view.topAnchor),
            cottonFrameDollukp.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cottonFrameDollukp.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cottonFrameDollukp.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            daintyFrameDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            daintyFrameDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            daintyFrameDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            daintyFrameDollrevo.heightAnchor.constraint(equalToConstant: 124)
        ])
    }

    private func switchDollCollectorTab(_ dollTab: DolluCollectorTab) {
        embroideredCollectionDolllumi = dollTab
        daintyFrameDollrevo.selectedDollTab = dollTab
        satinCollectionDollvelo?.willMove(toParent: nil)
        satinCollectionDollvelo?.view.removeFromSuperview()
        satinCollectionDollvelo?.removeFromParent()

        let dollNextController = makeDollController(for: dollTab)
        addChild(dollNextController)
        dollNextController.view.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.addSubview(dollNextController.view)
        NSLayoutConstraint.activate([
            dollNextController.view.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor),
            dollNextController.view.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor),
            dollNextController.view.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor),
            dollNextController.view.bottomAnchor.constraint(equalTo: cottonFrameDollukp.bottomAnchor)
        ])
        dollNextController.didMove(toParent: self)
        satinCollectionDollvelo = dollNextController
        if let dollRouteStack = dollNextController as? UINavigationController {
            applyDollTabBarVisibility(for: dollRouteStack.topViewController, animated: false)
        } else {
            applyDollTabBarVisibility(for: dollNextController, animated: false)
        }
    }

    private func makeDollController(for dollTab: DolluCollectorTab) -> UIViewController {
        let dollRoot: UIViewController
        switch dollTab {
        case .wardrobe:
            dollRoot = DolluCollectorHomeViewController()
        case .checkin:
            dollRoot = DolluCheckinArchiveViewController()
        case .lookbook:
            dollRoot = DolluShortLookbookViewController()
        case .profile:
            dollRoot = DolluProfileArchiveViewController()
        }
        let dollRouteStack = UINavigationController(rootViewController: dollRoot)
        dollRouteStack.delegate = self
        dollRouteStack.setNavigationBarHidden(true, animated: false)
        return dollRouteStack
    }

    private func openDollCreateRoute() {
        let dollRoute = DolluALoj(dollRouteURL: DolluCollectorRouteBuilder.createRoute())
        if let dollStack = satinCollectionDollvelo as? UINavigationController {
            dollStack.pushViewController(dollRoute, animated: true)
        }
    }

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        applyDollTabBarVisibility(for: viewController, animated: animated)
    }

    private func applyDollTabBarVisibility(for dollController: UIViewController?, animated: Bool) {
        let dollShouldHidePlate = dollController is DolluALoj || dollController?.hidesBottomBarWhenPushed == true
        let dollChanges = {
            self.daintyFrameDollrevo.alpha = dollShouldHidePlate ? 0 : 1
            self.daintyFrameDollrevo.transform = dollShouldHidePlate ? CGAffineTransform(translationX: 0, y: 138) : .identity
        }
        daintyFrameDollrevo.isUserInteractionEnabled = !dollShouldHidePlate
        if animated {
            UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseInOut, .beginFromCurrentState], animations: dollChanges)
        } else {
            dollChanges()
        }
    }

    func revealDollProfileCheckinArchive() {
        switchDollCollectorTab(.profile)
        guard
            let dollRouteStack = satinCollectionDollvelo as? UINavigationController,
            let dollProfile = dollRouteStack.viewControllers.first as? DolluProfileArchiveViewController
        else { return }
        DispatchQueue.main.async {
            dollProfile.scrollToDollCheckinArchive(animated: true)
        }
    }
}

final class DolluCuratedTabBarView: UIView {
    var selectedDollTab: DolluCollectorTab = .wardrobe {
        didSet { refreshDollTabAppearance() }
    }

    var dollTabSelected: ((DolluCollectorTab) -> Void)?
    var dollCreateTapped: (() -> Void)?

    private let satinPinboardDollvani = CAShapeLayer()
    private let tulleCapsuleDollnoro = UIButton(type: .custom)
    private var dollTabButtons: [DolluCollectorTab: UIButton] = [:]

    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
        satinPinboardDollvani.fillColor = UIColor(red: 0.23, green: 0.24, blue: 0.44, alpha: 0.98).cgColor
        satinPinboardDollvani.shadowColor = UIColor.black.cgColor
        satinPinboardDollvani.shadowOpacity = 0.18
        satinPinboardDollvani.shadowRadius = 18
        satinPinboardDollvani.shadowOffset = CGSize(width: 0, height: -8)
        layer.insertSublayer(satinPinboardDollvani, at: 0)
        buildDollTabButtons()
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        satinPinboardDollvani.frame = bounds
        satinPinboardDollvani.path = makeDollTabPlatePath(in: bounds).cgPath
        refreshDollTabAppearance()
    }

    private func buildDollTabButtons() {
        let dollTabs = DolluCollectorTab.allCases
        for dollTab in dollTabs {
            let dollButton = UIButton(type: .custom)
            dollButton.translatesAutoresizingMaskIntoConstraints = false
            dollButton.tag = dollTabs.firstIndex(of: dollTab) ?? 0
            dollButton.addTarget(self, action: #selector(selectDollTabButton(_:)), for: .touchUpInside)
            addSubview(dollButton)
            dollTabButtons[dollTab] = dollButton
        }

        tulleCapsuleDollnoro.translatesAutoresizingMaskIntoConstraints = false
        tulleCapsuleDollnoro.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        tulleCapsuleDollnoro.layer.cornerRadius = 34
        tulleCapsuleDollnoro.layer.shadowColor = DolluWardrobePalette.dollRibbonPurple.cgColor
        tulleCapsuleDollnoro.layer.shadowOpacity = 0.55
        tulleCapsuleDollnoro.layer.shadowRadius = 18
        tulleCapsuleDollnoro.layer.shadowOffset = CGSize(width: 0, height: 8)
        tulleCapsuleDollnoro.addTarget(self, action: #selector(openDollCreateButton), for: .touchUpInside)
        addSubview(tulleCapsuleDollnoro)

        guard let wardrobeButton = dollTabButtons[.wardrobe],
              let checkinButton = dollTabButtons[.checkin],
              let lookbookButton = dollTabButtons[.lookbook],
              let profileButton = dollTabButtons[.profile] else { return }

        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: wardrobeButton, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 0.115, constant: 0),
            wardrobeButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -14),
            wardrobeButton.widthAnchor.constraint(equalToConstant: 48),
            wardrobeButton.heightAnchor.constraint(equalToConstant: 48),

            NSLayoutConstraint(item: checkinButton, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 0.31, constant: 0),
            checkinButton.centerYAnchor.constraint(equalTo: wardrobeButton.centerYAnchor),
            checkinButton.widthAnchor.constraint(equalToConstant: 48),
            checkinButton.heightAnchor.constraint(equalToConstant: 48),

            NSLayoutConstraint(item: profileButton, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 0.885, constant: 0),
            profileButton.centerYAnchor.constraint(equalTo: wardrobeButton.centerYAnchor),
            profileButton.widthAnchor.constraint(equalToConstant: 48),
            profileButton.heightAnchor.constraint(equalToConstant: 48),

            NSLayoutConstraint(item: lookbookButton, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 0.69, constant: 0),
            lookbookButton.centerYAnchor.constraint(equalTo: wardrobeButton.centerYAnchor),
            lookbookButton.widthAnchor.constraint(equalToConstant: 48),
            lookbookButton.heightAnchor.constraint(equalToConstant: 48),

            tulleCapsuleDollnoro.centerXAnchor.constraint(equalTo: centerXAnchor),
            tulleCapsuleDollnoro.centerYAnchor.constraint(equalTo: wardrobeButton.centerYAnchor, constant: -26),
            tulleCapsuleDollnoro.widthAnchor.constraint(equalToConstant: 68),
            tulleCapsuleDollnoro.heightAnchor.constraint(equalToConstant: 68)
        ])
    }

    private func makeDollTabPlatePath(in dollBounds: CGRect) -> UIBezierPath {
        let dollPath = UIBezierPath()
        let dollTop: CGFloat = 22
        let dollDipWidth: CGFloat = 140
        let dollMid = dollBounds.midX
        dollPath.move(to: CGPoint(x: 0, y: dollTop + 24))
        dollPath.addCurve(to: CGPoint(x: dollMid - dollDipWidth / 2, y: dollTop + 16), controlPoint1: CGPoint(x: 72, y: dollTop + 8), controlPoint2: CGPoint(x: dollMid - 120, y: dollTop - 4))
        dollPath.addCurve(to: CGPoint(x: dollMid, y: dollTop + 78), controlPoint1: CGPoint(x: dollMid - 36, y: dollTop + 36), controlPoint2: CGPoint(x: dollMid - 36, y: dollTop + 78))
        dollPath.addCurve(to: CGPoint(x: dollMid + dollDipWidth / 2, y: dollTop + 16), controlPoint1: CGPoint(x: dollMid + 36, y: dollTop + 78), controlPoint2: CGPoint(x: dollMid + 36, y: dollTop + 36))
        dollPath.addCurve(to: CGPoint(x: dollBounds.maxX, y: dollTop + 24), controlPoint1: CGPoint(x: dollMid + 120, y: dollTop - 4), controlPoint2: CGPoint(x: dollBounds.maxX - 72, y: dollTop + 8))
        dollPath.addLine(to: CGPoint(x: dollBounds.maxX, y: dollBounds.maxY))
        dollPath.addLine(to: CGPoint(x: 0, y: dollBounds.maxY))
        dollPath.close()
        return dollPath
    }

    private func refreshDollTabAppearance() {
        for (dollTab, dollButton) in dollTabButtons {
            dollButton.layer.sublayers?.removeAll(where: { $0.name == "dollu_tab_glyph_layer" })
            let dollColor = dollTab == selectedDollTab ? UIColor(red: 1, green: 0.18, blue: 0.86, alpha: 1) : UIColor(white: 1, alpha: 0.78)
            let dollLayer = DolluGlyphFactory.makeTabGlyph(dollTab: dollTab, in: dollButton.bounds, color: dollColor)
            dollLayer.name = "dollu_tab_glyph_layer"
            dollButton.layer.addSublayer(dollLayer)
        }

        tulleCapsuleDollnoro.layer.sublayers?.removeAll(where: { $0.name == "dollu_create_plus_layer" })
        let dollPlus = CAShapeLayer()
        let dollPath = UIBezierPath()
        dollPath.move(to: CGPoint(x: tulleCapsuleDollnoro.bounds.midX, y: tulleCapsuleDollnoro.bounds.midY - 16))
        dollPath.addLine(to: CGPoint(x: tulleCapsuleDollnoro.bounds.midX, y: tulleCapsuleDollnoro.bounds.midY + 16))
        dollPath.move(to: CGPoint(x: tulleCapsuleDollnoro.bounds.midX - 16, y: tulleCapsuleDollnoro.bounds.midY))
        dollPath.addLine(to: CGPoint(x: tulleCapsuleDollnoro.bounds.midX + 16, y: tulleCapsuleDollnoro.bounds.midY))
        dollPlus.path = dollPath.cgPath
        dollPlus.strokeColor = UIColor.white.cgColor
        dollPlus.lineWidth = 4
        dollPlus.lineCap = .round
        dollPlus.name = "dollu_create_plus_layer"
        tulleCapsuleDollnoro.layer.addSublayer(dollPlus)
    }

    @objc private func selectDollTabButton(_ dollButton: UIButton) {
        let dollTabs = DolluCollectorTab.allCases
        guard dollButton.tag < dollTabs.count else { return }
        dollTabSelected?(dollTabs[dollButton.tag])
    }

    @objc private func openDollCreateButton() {
        dollCreateTapped?()
    }
}
