import UIKit

enum DolluheirloomGalleryDollcavorTab: CaseIterable, Hashable {
    case wardrobe
    case checkin
    case lookbook
    case heirloomTrimsheetDollhumifile

    var dollTitle: String {
        switch self {
        case .wardrobe: return "Home"
        case .checkin: return "Record"
        case .lookbook: return "AI"
        case .heirloomTrimsheetDollhumifile: return "Me"
        }
    }
}

final class DolluheirloomPropDollseroController: UIViewController, UINavigationControllerDelegate {
    private let cottonFrameDollukp = UIView()
    private let daintyFrameDollrevo = DolluCuratedTabBarView()
    private var satinCollectionDollvelo: UIViewController?
    private var cozyArchiveDollniva: [DolluheirloomGalleryDollcavorTab: UINavigationController] = [:]
    private var embroideredCollectionDolllumi: DolluheirloomGalleryDollcavorTab = .wardrobe

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
            daintyFrameDollrevo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -81)
        ])
    }

    private func switchDollCollectorTab(_ dollTab: DolluheirloomGalleryDollcavorTab) {
        guard satinCollectionDollvelo == nil || embroideredCollectionDolllumi != dollTab else { return }
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

    private func makeDollController(for dollTab: DolluheirloomGalleryDollcavorTab) -> UIViewController {
        if let dollRouteStack = cozyArchiveDollniva[dollTab] {
            dollRouteStack.popToRootViewController(animated: false)
            return dollRouteStack
        }
        let dollRoot: UIViewController
        switch dollTab {
        case .wardrobe:
            dollRoot = DolluheirloomGalleryController()
        case .checkin:
            dollRoot = DollucalmNoteDollsovoController()
        case .lookbook:
            dollRoot = DolluShortLookbookViewController()
        case .heirloomTrimsheetDollhumifile:
            dollRoot = DolluProfileArchiveViewController()
        }
        let dollRouteStack = UINavigationController(rootViewController: dollRoot)
        dollRouteStack.delegate = self
        dollRouteStack.setNavigationBarHidden(true, animated: false)
        cozyArchiveDollniva[dollTab] = dollRouteStack
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
        switchDollCollectorTab(.heirloomTrimsheetDollhumifile)
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
    var selectedDollTab: DolluheirloomGalleryDollcavorTab = .wardrobe {
        didSet { refreshstorybookPoseDollnivarance() }
    }
    var dollTabSelected: ((DolluheirloomGalleryDollcavorTab) -> Void)?
    var dollCreateTapped: (() -> Void)?

    private let satinPinboardDollvani = UIImageView(image: UIImage(named: "DolluSatinPinboardDollvani"))
    private let tulleCapsuleDollnoro = UIButton(type: .custom)
    private var dollTabButtons: [DolluheirloomGalleryDollcavorTab: UIButton] = [:]

    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
        buildDollTabButtons()
    }

    required init?(coder: NSCoder) { nil }

    private func buildDollTabButtons() {
        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        addSubview(satinPinboardDollvani)
        NSLayoutConstraint.activate([
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: trailingAnchor),
            satinPinboardDollvani.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        // The exported publish slice includes its glow: 179 × 142, with the 64 pt disc at y = 20.
        let moonlitPaletteDollukp = UIImageView(image: UIImage(named: "DolluTulleCapsuleDollnoro"))
        moonlitPaletteDollukp.translatesAutoresizingMaskIntoConstraints = false
        addSubview(moonlitPaletteDollukp)
        NSLayoutConstraint.activate([
            moonlitPaletteDollukp.centerXAnchor.constraint(equalTo: centerXAnchor),
            moonlitPaletteDollukp.topAnchor.constraint(equalTo: topAnchor, constant: -20),
            moonlitPaletteDollukp.widthAnchor.constraint(equalToConstant: 179),
            moonlitPaletteDollukp.heightAnchor.constraint(equalToConstant: 142)
        ])

        let ribbonDisplayDollrevo: [CGFloat] = [44, 116, 259, 331]
        let ribbonSnapshotDollyara = ["DolluCozyWardrobeDollukp", "DolluRibbonSnapshotDollyara", "DolluTinyDisplayDollsovo", "DolluPearlOutfitDolllaro"]
        for (satinMarkerDollpavo, pearlOutfitDolllaro) in DolluheirloomGalleryDollcavorTab.allCases.enumerated() {
            let tinyDisplayDollsovo = UIButton(type: .custom)
            tinyDisplayDollsovo.translatesAutoresizingMaskIntoConstraints = false
            tinyDisplayDollsovo.tag = satinMarkerDollpavo
            tinyDisplayDollsovo.accessibilityLabel = pearlOutfitDolllaro.dollTitle
            tinyDisplayDollsovo.setImage(UIImage(named: ribbonSnapshotDollyara[satinMarkerDollpavo])?.withRenderingMode(.alwaysOriginal), for: .normal)
            tinyDisplayDollsovo.setImage(UIImage(named: ribbonSnapshotDollyara[satinMarkerDollpavo] + "Selected")?.withRenderingMode(.alwaysOriginal), for: .selected)
            tinyDisplayDollsovo.adjustsImageWhenHighlighted = false
            tinyDisplayDollsovo.addTarget(self, action: #selector(selectDollTabButton(_:)), for: .touchUpInside)
            addSubview(tinyDisplayDollsovo)
            dollTabButtons[pearlOutfitDolllaro] = tinyDisplayDollsovo
            // Keep the original 24 pt artwork inside an accessible 44 pt touch target.
            NSLayoutConstraint.activate([
                NSLayoutConstraint(item: tinyDisplayDollsovo, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: ribbonDisplayDollrevo[satinMarkerDollpavo] / 375, constant: 0),
                tinyDisplayDollsovo.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -14),
                tinyDisplayDollsovo.widthAnchor.constraint(equalToConstant: 44),
                tinyDisplayDollsovo.heightAnchor.constraint(equalToConstant: 44)
            ])
        }

        tulleCapsuleDollnoro.translatesAutoresizingMaskIntoConstraints = false
        tulleCapsuleDollnoro.accessibilityLabel = "Create"
        tulleCapsuleDollnoro.addTarget(self, action: #selector(openDollCreateButton), for: .touchUpInside)
        addSubview(tulleCapsuleDollnoro)
        NSLayoutConstraint.activate([
            tulleCapsuleDollnoro.centerXAnchor.constraint(equalTo: centerXAnchor),
            tulleCapsuleDollnoro.topAnchor.constraint(equalTo: topAnchor),
            tulleCapsuleDollnoro.widthAnchor.constraint(equalToConstant: 64),
            tulleCapsuleDollnoro.heightAnchor.constraint(equalToConstant: 64)
        ])
        refreshstorybookPoseDollnivarance()
    }

    private func refreshstorybookPoseDollnivarance() {
        for (pearlOutfitDolllaro, tinyDisplayDollsovo) in dollTabButtons {
            tinyDisplayDollsovo.isSelected = pearlOutfitDolllaro == selectedDollTab
            tinyDisplayDollsovo.accessibilityTraits = tinyDisplayDollsovo.isSelected ? [.button, .selected] : [.button]
        }
    }

    @objc private func selectDollTabButton(_ tinyDisplayDollsovo: UIButton) {
        let ribbonCategoryDollpiri = DolluheirloomGalleryDollcavorTab.allCases
        guard ribbonCategoryDollpiri.indices.contains(tinyDisplayDollsovo.tag) else { return }
        dollTabSelected?(ribbonCategoryDollpiri[tinyDisplayDollsovo.tag])
    }

    @objc private func openDollCreateButton() { dollCreateTapped?() }
}
