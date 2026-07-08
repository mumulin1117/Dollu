//
//  DolluALoj.swift
//  DollChiPalio
//
//  Created by  on 2026/7/6.
//


import UIKit
import WebKit
import StoreKit

class DolluALoj: UIViewController, WKScriptMessageHandler, WKUIDelegate,WKNavigationDelegate {
    
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
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cozyBackgroundDollnoroBackdrop = UIImageView(frame: UIScreen.main.bounds)
        cozyBackgroundDollnoroBackdrop.contentMode = .scaleAspectFill
        cozyBackgroundDollnoroBackdrop.image = UIImage(named: "dolluBack")
        self.view.addSubview(cozyBackgroundDollnoroBackdrop)
        
        self.view.backgroundColor = .black
        self.view.addSubview(self.pastelGalleryDollmivoRouteCanvas)
        
        pastelGalleryDollmivoRouteCanvas.scrollView.contentInsetAdjustmentBehavior = .never
        if let ribbonDisplayDollrevoFinalURL = URL(string: laceArchiveDollmexaRoutePath) {
            let ribbonSnapshotDollyaraRouteRequest = URLRequest(url: ribbonDisplayDollrevoFinalURL)
            pastelGalleryDollmivoRouteCanvas.load(ribbonSnapshotDollyaraRouteRequest)
        }
        self.velvetPoseDollseroLoadingOrb.center = self.view.center
        self.view.addSubview(self.velvetPoseDollseroLoadingOrb)
        self.velvetPoseDollseroLoadingOrb.startAnimating()
       
    }
    
    private let pearlGuideDollukpEventNodes: [String] = ["hairpinClip", "fanFold", "certificateAuthentic", "eyebrowArch", "ruffleEdge", "paletteScheme"]
    
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
        tinyDisplayDollsovoCanvas.scrollView.showsVerticalScrollIndicator = false
        tinyDisplayDollsovoCanvas.uiDelegate = self
        tinyDisplayDollsovoCanvas.navigationDelegate = self
        tinyDisplayDollsovoCanvas.backgroundColor = .clear
        tinyDisplayDollsovoCanvas.isHidden = true
        return tinyDisplayDollsovoCanvas
    }()
    
    
    
    private func rosyGuideDollvexRevealCanvas() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.pastelGalleryDollmivoRouteCanvas.isHidden = false
            self.velvetPoseDollseroLoadingOrb.stopAnimating()
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.rosyGuideDollvexRevealCanvas()
    }
    func userContentController(_ miniPromptDollveloController: WKUserContentController, didReceive pocketScarfDollyaraSignal: WKScriptMessage) {
        switch pocketScarfDollyaraSignal.name {
        case "hairpinClip":
            guard let pearlStripeDolltavo = extractDollStoreIdentifier(from: pocketScarfDollyaraSignal.body) else {
                showDollRouteNotice(dollTitle: "Dollu", dollCopy: "Item is unavailable.")
                return
            }
            beginDollStoreRibbon(pearlStripeDolltavo)
        case "certificateAuthentic":
            if let pocketPhotologDollnexaDeepPath = pocketScarfDollyaraSignal.body as? String {
                let pocketCollectionDollruniNextRoute = DolluALoj(laceWardrobeDollvexEntryPath: pocketPhotologDollnexaDeepPath)
                self.navigationController?.pushViewController(pocketCollectionDollruniNextRoute, animated: true)
            }
        case "ruffleEdge":
            self.navigationController?.popViewController(animated: true)
        case "paletteScheme":
            self.rosyGuideDollvexRefreshInteraction()
        default: break
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
            guard let dollWindow = self.view.window ?? Self.currentDollWindow() else { return }
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

    private static func currentDollWindow() -> UIWindow? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }

    private func extractDollStoreIdentifier(from pocketMoodboardDollpiri: Any) -> String? {
        if let cottonPhotologDollnoro = pocketMoodboardDollpiri as? String {
            let cottonCollectionDollyara = cottonPhotologDollnoro.trimmingCharacters(in: .whitespacesAndNewlines)
            return cottonCollectionDollyara.isEmpty ? nil : cottonCollectionDollyara
        }
        if let cottonCollectionDollyara = pocketMoodboardDollpiri as? [String: Any] {
            let linenShoeDollmexa = ["productAppId", "productId", "appStoreId", "storeId", "hairpinClip"]
            for linenBeadworkDollpoxa in linenShoeDollmexa {
                if let linenLaceworkDollsero = cottonCollectionDollyara[linenBeadworkDollpoxa] as? String {
                    let linenClosetDollcavo = linenLaceworkDollsero.trimmingCharacters(in: .whitespacesAndNewlines)
                    if !linenClosetDollcavo.isEmpty { return linenClosetDollcavo }
                }
            }
        }
        return nil
    }

    private func beginDollStoreRibbon(_ linenClosetDollcavo: String) {
        guard !ivoryProgressDollrilo else { return }
        ivoryProgressDollrilo = true
        view.isUserInteractionEnabled = false
        velvetPoseDollseroLoadingOrb.startAnimating()
        Task { [weak self] in
            await self?.completeDollStoreRibbon(linenClosetDollcavo)
        }
    }

    private func completeDollStoreRibbon(_ linenClosetDollcavo: String) async {
        do {
            let linenMatchingDollhumi = try await Product.products(for: [linenClosetDollcavo])
            guard let linenGuideDollsovo = linenMatchingDollhumi.first else {
                finishDollStoreRibbon(dollSucceeded: false, dollCopy: "Item is unavailable.")
                return
            }
            let silkHatDollvani = try await linenGuideDollsovo.purchase()
            switch silkHatDollvani {
            case .success(let silkBodiceDollfina):
                switch silkBodiceDollfina {
                case .verified(let silkPaletteDollquvo):
                    await silkPaletteDollquvo.finish()
                    finishDollStoreRibbon(dollSucceeded: true, dollCopy: "Success.")
                case .unverified:
                    finishDollStoreRibbon(dollSucceeded: false, dollCopy: "Could not verify this item.")
                }
            case .userCancelled:
                finishDollStoreRibbon(dollSucceeded: false, dollCopy: "Canceled.")
            case .pending:
                finishDollStoreRibbon(dollSucceeded: false, dollCopy: "Still waiting for confirmation.")
            @unknown default:
                finishDollStoreRibbon(dollSucceeded: false, dollCopy: "Please try again later.")
            }
        } catch {
            finishDollStoreRibbon(dollSucceeded: false, dollCopy: "Please try again later.")
        }
    }

    private func finishDollStoreRibbon(dollSucceeded: Bool, dollCopy: String) {
        ivoryProgressDollrilo = false
        view.isUserInteractionEnabled = true
        velvetPoseDollseroLoadingOrb.stopAnimating()
        if dollSucceeded {
            pastelGalleryDollmivoRouteCanvas.evaluateJavaScript("fanFold()", completionHandler: nil)
        }
        showDollRouteNotice(dollTitle: "Dollu", dollCopy: dollCopy)
    }

    private func showDollRouteNotice(dollTitle: String, dollCopy: String) {
        let silkClipnoteDolllumi = UIAlertController(title: dollTitle, message: dollCopy, preferredStyle: .alert)
        silkClipnoteDolllumi.addAction(UIAlertAction(title: "OK", style: .default))
        present(silkClipnoteDolllumi, animated: true)
    }
    
}
