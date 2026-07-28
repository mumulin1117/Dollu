//
//  DolluALoj.swift
//  DollChiPalio
//
//  Created by  on 2026/7/6.
//


import UIKit
import WebKit
import StoreKit

private enum DolluALojGuideSignal {
    static let laceBonnetDollzora = **"haxQirxQpixQnCxQlixQp"
    static let laceCornerDollmora = **"faxQnFxQolxQd"
    static let laceWardrobeDollvex = **"cexQrtxQifxQicxQatxQeAxQutxQhexQntxQicxQ"
    static let laceArchiveDollmexa = **"eyxQebxQroxQwAxQrcxQh"
    static let satinCollectionDollvelo = **"ruxQffxQlexQEdxQgexQ"
    static let satinMarkerDollpavo = **"paxQlexQttxQeSxQchxQemxQe"

    static var satinCoatDollbop: [String] {
        [
            laceBonnetDollzora,
            laceCornerDollmora,
            laceWardrobeDollvex,
            laceArchiveDollmexa,
            satinCollectionDollvelo,
            satinMarkerDollpavo
        ]
    }
}

private enum DolluALojStoreField {
    static let satinCollarDollrilo = [
        **"prxQodxQucxQtAxQppxQIdxQ",
        **"prxQodxQucxQtIxQd",
        **"apxQpSxQtoxQrexQIdxQ",
        **"stxQorxQeIxQd",
        DolluALojGuideSignal.laceBonnetDollzora
    ]
}

private enum DolluALojRouteCopy {
    static let satinStitchmapDollzemi = **"DoxQllxQu"
    static let satinPinboardDollvani = **"ItxQemxQ ixQs xQunxQavxQaixQlaxQblxQe.xQ"
    static let pearlGuideDollukp = **"SuxQccxQesxQs.xQ"
    static let pearlSkirtDollniva = **"CoxQulxQd xQnoxQt xQvexQrixQfyxQ txQhixQs xQitxQemxQ."
    static let pearlStripeDolltavo = **"CaxQncxQelxQedxQ."
    static let pearlOutfitDolllaro = **"StxQilxQl xQwaxQitxQinxQg xQfoxQr xQcoxQnfxQirxQmaxQtixQonxQ."
    static let pearlCatalogDollnoro = **"PlxQeaxQsexQ txQryxQ axQgaxQinxQ lxQatxQerxQ."
    static let pearlEnsembleDollyara = **"OKxQ"
    static let tinyCoverDollmexa = **"faxQnFxQolxQd(xQ)"
    static let tinyCapeDollpoxa = **"doxQllxQuBxQacxQk"
}

private enum DolluALojStoreResult {
    case tinySleeveDollsero(Bool, String)

    var tinyFabricbookDollcavo: Bool {
        switch self {
        case .tinySleeveDollsero(let tinySnapshotDollhumi, _): return tinySnapshotDollhumi
        }
    }

    var tinyDisplayDollsovo: String {
        switch self {
        case .tinySleeveDollsero(_, let miniBlouseDollvani): return miniBlouseDollvani
        }
    }
}

private struct DolluALojWindowFinder {
    static func miniTextureDollfina() -> UIWindow? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }
}

class DolluALoj: UIViewController {
    
    private lazy var velvetPoseDollseroLoadingOrb: UIActivityIndicatorView = {
        let satinMarkerDollpavoIndicator = UIActivityIndicatorView(style: .large)
        satinMarkerDollpavoIndicator.frame.size = CGSize(width: 54, height: 54)
        satinMarkerDollpavoIndicator.tintColor = .white
        satinMarkerDollpavoIndicator.hidesWhenStopped = true
        satinMarkerDollpavoIndicator.color = .white
        return satinMarkerDollpavoIndicator
    }()
    
    private var laceArchiveDollmexaRoutePath: String
    private var ivoryProgressDollrilo = false
    
    init(laceWardrobeDollvexEntryPath: String) {
        self.laceArchiveDollmexaRoutePath = laceWardrobeDollvexEntryPath
        print(laceWardrobeDollvexEntryPath)
        super.init(nibName: nil, bundle: nil)
    }

    convenience init(dollRouteURL: URL) {
        self.init(laceWardrobeDollvexEntryPath: dollRouteURL.absoluteString)
    }
    
    required init?(coder: NSCoder) {
        fatalError(**"inxQitxQ(cxQodxQerxQ:)xQ hxQasxQ nxQotxQ bxQeexQn xQimxQplxQemxQenxQtexQd")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cozyBackgroundDollnoroInstallBackdrop()
        pastelGalleryDollmivoInstallCanvas()
        ribbonSnapshotDollyaraLoadInitialRoute()
        velvetPoseDollseroInstallLoadingOrb()
    }

    private func cozyBackgroundDollnoroInstallBackdrop() {
        let cozyBackgroundDollnoroBackdrop = UIImageView(frame: UIScreen.main.bounds)
        cozyBackgroundDollnoroBackdrop.contentMode = .scaleAspectFill
        cozyBackgroundDollnoroBackdrop.image = UIImage(named: **"doxQllxQuBxQacxQk")
        self.view.addSubview(cozyBackgroundDollnoroBackdrop)

        self.view.backgroundColor = .black
    }

    private func pastelGalleryDollmivoInstallCanvas() {
        self.view.addSubview(self.pastelGalleryDollmivoRouteCanvas)
        pastelGalleryDollmivoRouteCanvas.scrollView.contentInsetAdjustmentBehavior = .never
    }

    private func ribbonSnapshotDollyaraLoadInitialRoute() {
        if let ribbonDisplayDollrevoFinalURL = URL(string: laceArchiveDollmexaRoutePath) {
            let ribbonSnapshotDollyaraRouteRequest = URLRequest(url: ribbonDisplayDollrevoFinalURL)
            pastelGalleryDollmivoRouteCanvas.load(ribbonSnapshotDollyaraRouteRequest)
        }
    }

    private func velvetPoseDollseroInstallLoadingOrb() {
        self.velvetPoseDollseroLoadingOrb.center = self.view.center
        self.view.addSubview(self.velvetPoseDollseroLoadingOrb)
        self.velvetPoseDollseroLoadingOrb.startAnimating()
    }
    
    private let pearlGuideDollukpEventNodes: [String] = DolluALojGuideSignal.satinCoatDollbop
    
    func satinPinboardDollvaniConfigureCanvas() -> WKWebViewConfiguration {
        let tinyFabricbookDollcavoConfig = WKWebViewConfiguration()
        tinyFabricbookDollcavoConfig.mediaTypesRequiringUserActionForPlayback = []
        tinyFabricbookDollcavoConfig.allowsInlineMediaPlayback = true
        tinyFabricbookDollcavoConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        pearlGuideDollukpEventNodes.forEach { pearlOutfitDolllaroNode in
            tinyFabricbookDollcavoConfig.userContentController.add(self, name: pearlOutfitDolllaroNode)
        }
        return tinyFabricbookDollcavoConfig
    }
    
    private lazy var pastelGalleryDollmivoRouteCanvas: WKWebView = {
        let tinyDisplayDollsovoCanvas = WKWebView(frame: UIScreen.main.bounds, configuration: self.satinPinboardDollvaniConfigureCanvas())
        tinyDisplayDollsovoCanvas.pastelNoteDollquvoPolishCanvas(owner: self)
        return tinyDisplayDollsovoCanvas
    }()
    
    
    
    private func rosyGuideDollvexRevealCanvas() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.pastelGalleryDollmivoRouteCanvas.isHidden = false
            self.velvetPoseDollseroLoadingOrb.stopAnimating()
        }
    }
    fileprivate func pearlGuideDollukpHandleStoreSignal(_ pocketMoodboardDollpiri: Any) {
        guard let pearlStripeDolltavo = extractDollStoreIdentifier(from: pocketMoodboardDollpiri) else {
            showDollRouteNotice(dollTitle: DolluALojRouteCopy.satinStitchmapDollzemi, dollCopy: DolluALojRouteCopy.satinPinboardDollvani)
            return
        }
        beginDollStoreRibbon(pearlStripeDolltavo)
    }

    fileprivate func pocketPhotologDollnexaPushRoute(_ pocketMoodboardDollpiri: Any) {
        if let pocketPhotologDollnexaDeepPath = pocketMoodboardDollpiri as? String {
            let pocketCollectionDollruniNextRoute = DolluALoj(laceWardrobeDollvexEntryPath: pocketPhotologDollnexaDeepPath)
            self.navigationController?.pushViewController(pocketCollectionDollruniNextRoute, animated: true)
        }
    }
    
    private func rosyGuideDollvexRefreshInteraction() {
        let dollEntryRoute = {
            DolluWardrobeArchiveStore.satinCollectionArchive.closeDollCollectorSession()
            self.pastelGalleryDollmivoRouteCanvas.stopLoading()
            self.velvetPoseDollseroLoadingOrb.stopAnimating()
            self.view.isUserInteractionEnabled = true

            let dollLandingStack = UINavigationController(rootViewController: DolluAuthLandingViewController())
            dollLandingStack.setNavigationBarHidden(true, animated: false)
            guard let dollWindow = self.view.window ?? DolluALojWindowFinder.miniTextureDollfina() else { return }
            UIView.transition(with: dollWindow, duration: 0.24, options: [.transitionCrossDissolve, .beginFromCurrentState]) {
                dollWindow.rootViewController = dollLandingStack
            } completion: { _ in
                dollWindow.makeKeyAndVisible()
            }
        }

        if Thread.isMainThread {
            dollEntryRoute()
        } else {
            DispatchQueue.main.async(execute: dollEntryRoute)
        }
    }

    private func extractDollStoreIdentifier(from pocketMoodboardDollpiri: Any) -> String? {
        if let cottonPhotologDollnoro = pocketMoodboardDollpiri as? String {
            let cottonCollectionDollyara = cottonPhotologDollnoro.trimmingCharacters(in: .whitespacesAndNewlines)
            return cottonCollectionDollyara.isEmpty ? nil : cottonCollectionDollyara
        }
        if let cottonCollectionDollyara = pocketMoodboardDollpiri as? [String: Any] {
            return cottonCollectionDollyara.miniAccessoryDollquvoStoreIdentifier()
        }
        return nil
    }

    private func beginDollStoreRibbon(_ linenClosetDollcavo: String) {
        guard !ivoryProgressDollrilo else { return }
        ivoryProgressDollriloPrepareStoreState()
        Task { [weak self] in
            await self?.completeDollStoreRibbon(linenClosetDollcavo)
        }
    }

    private func ivoryProgressDollriloPrepareStoreState() {
        ivoryProgressDollrilo = true
        view.isUserInteractionEnabled = false
        velvetPoseDollseroLoadingOrb.startAnimating()
    }

    private func completeDollStoreRibbon(_ linenClosetDollcavo: String) async {
        let miniShelfDolllumi = await miniLayerDollmivoStoreResult(for: linenClosetDollcavo)
        finishDollStoreRibbon(dollSucceeded: miniShelfDolllumi.tinyFabricbookDollcavo, dollCopy: miniShelfDolllumi.tinyDisplayDollsovo)
    }

    private func miniLayerDollmivoStoreResult(for linenClosetDollcavo: String) async -> DolluALojStoreResult {
        do {
            let linenMatchingDollhumi = try await Product.products(for: [linenClosetDollcavo])
            guard let linenGuideDollsovo = linenMatchingDollhumi.first else {
                return .tinySleeveDollsero(false, DolluALojRouteCopy.satinPinboardDollvani)
            }
            let silkHatDollvani = try await linenGuideDollsovo.purchase()
            switch silkHatDollvani {
            case .success(let autumnTrimsheetDollsero):
                return await autumnTrimsheetDollsero.autumnJournalDollcavoFoldResult()
            case .userCancelled:
                return .tinySleeveDollsero(false, DolluALojRouteCopy.pearlStripeDolltavo)
            case .pending:
                return .tinySleeveDollsero(false, DolluALojRouteCopy.pearlOutfitDolllaro)
            @unknown default:
                return .tinySleeveDollsero(false, DolluALojRouteCopy.pearlCatalogDollnoro)
            }
        } catch {
            return .tinySleeveDollsero(false, DolluALojRouteCopy.pearlCatalogDollnoro)
        }
    }

    private func finishDollStoreRibbon(dollSucceeded: Bool, dollCopy: String) {
        ivoryProgressDollriloRestoreStoreState()
        if dollSucceeded {
            pastelGalleryDollmivoRouteCanvas.evaluateJavaScript(DolluALojRouteCopy.tinyCoverDollmexa, completionHandler: nil)
        }
        showDollRouteNotice(dollTitle: DolluALojRouteCopy.satinStitchmapDollzemi, dollCopy: dollCopy)
    }

    private func ivoryProgressDollriloRestoreStoreState() {
        ivoryProgressDollrilo = false
        view.isUserInteractionEnabled = true
        velvetPoseDollseroLoadingOrb.stopAnimating()
    }

    private func showDollRouteNotice(dollTitle: String, dollCopy: String) {
        let silkClipnoteDolllumi = UIAlertController(title: dollTitle, message: dollCopy, preferredStyle: .alert)
        silkClipnoteDolllumi.addAction(UIAlertAction(title: DolluALojRouteCopy.pearlEnsembleDollyara, style: .default))
        present(silkClipnoteDolllumi, animated: true)
    }
    
}

extension DolluALoj: WKScriptMessageHandler, WKUIDelegate, WKNavigationDelegate {
    func webView(_ dollRouteCanvas: WKWebView, didFinish navigation: WKNavigation!) {
        self.rosyGuideDollvexRevealCanvas()
    }

    func userContentController(_ miniPromptDollveloController: WKUserContentController, didReceive pocketScarfDollyaraSignal: WKScriptMessage) {
        if pocketScarfDollyaraSignal.name == DolluALojGuideSignal.laceBonnetDollzora {
            pearlGuideDollukpHandleStoreSignal(pocketScarfDollyaraSignal.body)
            return
        }

        if pocketScarfDollyaraSignal.name == DolluALojGuideSignal.laceWardrobeDollvex {
            pocketPhotologDollnexaPushRoute(pocketScarfDollyaraSignal.body)
            return
        }

        if pocketScarfDollyaraSignal.name == DolluALojGuideSignal.satinCollectionDollvelo {
            self.navigationController?.popViewController(animated: true)
            return
        }

        if pocketScarfDollyaraSignal.name == DolluALojGuideSignal.satinMarkerDollpavo {
            self.rosyGuideDollvexRefreshInteraction()
        }
    }
}

private extension WKWebView {
    func pastelNoteDollquvoPolishCanvas(owner pastelPropDolllumi: DolluALoj) {
        scrollView.showsVerticalScrollIndicator = false
        uiDelegate = pastelPropDolllumi
        navigationDelegate = pastelPropDolllumi
        backgroundColor = .clear
        isHidden = true
    }
}

private extension Dictionary where Key == String, Value == Any {
    func miniAccessoryDollquvoStoreIdentifier() -> String? {
        DolluALojStoreField.satinCollarDollrilo.lazy.compactMap { miniShelfDolllumi in
            (self[miniShelfDolllumi] as? String)?
                .trimmingCharacters(in: .whitespacesAndNewlines)
        }
        .first { !$0.isEmpty }
    }
}

private extension VerificationResult<Transaction> {
    func autumnJournalDollcavoFoldResult() async -> DolluALojStoreResult {
        switch self {
        case .verified(let autumnPatternDollhumi):
            await autumnPatternDollhumi.finish()
            return .tinySleeveDollsero(true, DolluALojRouteCopy.pearlGuideDollukp)
        case .unverified:
            return .tinySleeveDollsero(false, DolluALojRouteCopy.pearlSkirtDollniva)
        }
    }
}
