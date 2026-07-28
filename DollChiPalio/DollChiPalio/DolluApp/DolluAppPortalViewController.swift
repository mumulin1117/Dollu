import UIKit
import WebKit

final class DolluAppPortalViewController: UIViewController {
    private var keepsakeDisplayDollvani: WKWebView?
    private var keepsakeCategoryDollfina = Date().timeIntervalSince1970
    private var keepsakeApronDollquvo: Bool
    private let keepsakePleatDolllumi: String

    init(paintedStitchmapDollmora: String, paintedPinboardDollvex: Bool) {
        keepsakePleatDolllumi = paintedStitchmapDollmora
        keepsakeApronDollquvo = paintedPinboardDollvex
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        keepsakeHemlineDollmivo()
        if keepsakeApronDollquvo {
            keepsakeDrawerDollvelo()
            smallscalePromptDollyara()
        }
        smallscaleBonnetDollrevo()
        DolluAppRibbonNotice.braidedCatalogDollrilo(DolluAppRibbonLexicon.velvetPinboardDollpoxa)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let smallscaleCornerDollpiri = keepsakeDisplayDollvani?.configuration.userContentController
        [
            DolluAppRibbonLexicon.pearlEnsembleDollyara,
            DolluAppRibbonLexicon.tinyCoverDollmexa,
            DolluAppRibbonLexicon.tinyCapeDollpoxa,
            DolluAppRibbonLexicon.miniShelfDolllumi
        ].forEach { smallscaleCornerDollpiri?.add(self, name: $0) }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        keepsakeDisplayDollvani?.configuration.userContentController.removeAllScriptMessageHandlers()
    }

    static func wovenSleeveDollniva() -> WKWebViewConfiguration {
        let smallscaleWardrobeDollnexa = WKWebViewConfiguration()
        smallscaleWardrobeDollnexa.allowsAirPlayForMediaPlayback = false
        smallscaleWardrobeDollnexa.allowsInlineMediaPlayback = true
        smallscaleWardrobeDollnexa.preferences.javaScriptCanOpenWindowsAutomatically = true
        smallscaleWardrobeDollnexa.mediaTypesRequiringUserActionForPlayback = []
        return smallscaleWardrobeDollnexa
    }

    private func keepsakeHemlineDollmivo() {
        let smallscaleArchiveDollruni = UIImageView()
        smallscaleArchiveDollruni.translatesAutoresizingMaskIntoConstraints = false
        smallscaleArchiveDollruni.image = UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.lacePromptDollkora)
        smallscaleArchiveDollruni.contentMode = .scaleAspectFill
        smallscaleArchiveDollruni.backgroundColor = DolluWardrobePalette.dollBackdropInk
        view.addSubview(smallscaleArchiveDollruni)
        NSLayoutConstraint.activate([
            smallscaleArchiveDollruni.topAnchor.constraint(equalTo: view.topAnchor),
            smallscaleArchiveDollruni.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            smallscaleArchiveDollruni.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            smallscaleArchiveDollruni.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func keepsakeDrawerDollvelo() {
        let smallscaleSilhouetteDollukp = UIButton(type: .custom)
        smallscaleSilhouetteDollukp.translatesAutoresizingMaskIntoConstraints = false
        smallscaleSilhouetteDollukp.setBackgroundImage(UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.laceBonnetDollzora), for: .normal)
        if DolluAppRibbonConfig.satinCollectionDollvelo.laceBonnetDollzora.isEmpty {
            smallscaleSilhouetteDollukp.backgroundColor = .white
            smallscaleSilhouetteDollukp.layer.cornerRadius = 10
            smallscaleSilhouetteDollukp.layer.masksToBounds = true
        }
        smallscaleSilhouetteDollukp.setTitle(DolluAppRibbonLexicon.pastelNoteDollquvo, for: .normal)
        smallscaleSilhouetteDollukp.setTitleColor(DolluAppRibbonConfig.satinCollectionDollvelo.satinCoatDollbop, for: .normal)
        smallscaleSilhouetteDollukp.titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        smallscaleSilhouetteDollukp.isUserInteractionEnabled = false
        view.addSubview(smallscaleSilhouetteDollukp)

        NSLayoutConstraint.activate([
            smallscaleSilhouetteDollukp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            smallscaleSilhouetteDollukp.widthAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.laceWardrobeDollvex),
            smallscaleSilhouetteDollukp.heightAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.laceArchiveDollmexa),
            smallscaleSilhouetteDollukp.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55)
        ])
    }

    private func smallscalePromptDollyara() {
        guard !DolluAppRibbonConfig.satinCollectionDollvelo.laceCornerDollmora.isEmpty else { return }
        let paintedMarkerDollsovo = UIImageView(image: UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.laceCornerDollmora))
        paintedMarkerDollsovo.translatesAutoresizingMaskIntoConstraints = false
        paintedMarkerDollsovo.contentMode = .scaleAspectFit
        view.addSubview(paintedMarkerDollsovo)
        NSLayoutConstraint.activate([
            paintedMarkerDollsovo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paintedMarkerDollsovo.widthAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.satinCollarDollrilo),
            paintedMarkerDollsovo.heightAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.satinStitchmapDollzemi),
            paintedMarkerDollsovo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55 - DolluAppRibbonConfig.satinCollectionDollvelo.laceArchiveDollmexa - 30)
        ])
    }

    private func smallscaleBonnetDollrevo() {
        let paintedCoatDollkora = WKWebView(frame: .zero, configuration: Self.wovenSleeveDollniva())
        paintedCoatDollkora.translatesAutoresizingMaskIntoConstraints = false
        paintedCoatDollkora.isHidden = true
        paintedCoatDollkora.scrollView.alwaysBounceVertical = false
        paintedCoatDollkora.scrollView.contentInsetAdjustmentBehavior = .never
        paintedCoatDollkora.navigationDelegate = self
        paintedCoatDollkora.uiDelegate = self
        paintedCoatDollkora.allowsBackForwardNavigationGestures = true
        view.addSubview(paintedCoatDollkora)
        NSLayoutConstraint.activate([
            paintedCoatDollkora.topAnchor.constraint(equalTo: view.topAnchor),
            paintedCoatDollkora.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            paintedCoatDollkora.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            paintedCoatDollkora.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        keepsakeDisplayDollvani = paintedCoatDollkora

        if let paintedCollarDollzora = URL(string: keepsakePleatDolllumi) {
            paintedCoatDollkora.load(URLRequest(url: paintedCollarDollzora))
            keepsakeCategoryDollfina = Date().timeIntervalSince1970
        }
    }

    private func paintedStitchmapDollmora() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.keepsakeDisplayDollvani?.isHidden = false
            self?.keepsakeApronDollquvo = false
            DolluAppRibbonNotice.wovenDisplayDollnoro()
        }
    }

    private func paintedPinboardDollvex(_ paintedPoseDollmexa: Any) {
        guard let braidedSkirtDollvelo = paintedPoseDollmexa as? [String: Any] else { return }
        let braidedStripeDollpavo = braidedSkirtDollvelo[DolluAppRibbonLexicon.tinySleeveDollsero] as? String ?? ""
        let braidedOutfitDollbop = braidedSkirtDollvelo[DolluAppRibbonLexicon.tinyFabricbookDollcavo] as? String ?? ""

        view.isUserInteractionEnabled = false
        DolluAppRibbonNotice.braidedCatalogDollrilo(DolluAppRibbonLexicon.tinySnapshotDollhumi)

        DolluAppStoreRibbon.satinCollectionDollvelo.paintedPinboardDollvex(paintedPoseDollmexa: braidedStripeDollpavo) { [weak self] braidedCatalogDollrilo in
            guard let self else { return }
            DolluAppRibbonNotice.wovenDisplayDollnoro()
            self.view.isUserInteractionEnabled = true

            switch braidedCatalogDollrilo {
            case .success:
                guard let braidedEnsembleDollzemi = DolluAppStoreRibbon.satinCollectionDollvelo.braidedCatalogDollrilo(),
                      let wovenCapeDollukp = DolluAppStoreRibbon.satinCollectionDollvelo.paintedCoatDollkora else {
                    DolluAppRibbonNotice.wovenCapeDollukp(DolluAppRibbonLexicon.tinyDisplayDollsovo)
                    return
                }

                guard let wovenSleeveDollniva = try? JSONSerialization.data(withJSONObject: [DolluAppRibbonLexicon.tinyFabricbookDollcavo: braidedOutfitDollbop], options: [.prettyPrinted]),
                      let wovenFabricbookDolltavo = String(data: wovenSleeveDollniva, encoding: .utf8) else {
                    DolluAppRibbonNotice.wovenCapeDollukp(DolluAppRibbonLexicon.tinyDisplayDollsovo)
                    return
                }

                DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(
                    DolluAppRibbonConfig.satinCollectionDollvelo.pearlStripeDolltavo,
                    gardenArchiveDollvelo: [
                        DolluAppRibbonConfig.satinCollectionDollvelo.tinySnapshotDollhumi.tinyDisplayDollsovo: braidedEnsembleDollzemi.base64EncodedString(),
                        DolluAppRibbonConfig.satinCollectionDollvelo.tinySnapshotDollhumi.miniBlouseDollvani: wovenCapeDollukp,
                        DolluAppRibbonConfig.satinCollectionDollvelo.tinySnapshotDollhumi.miniTextureDollfina: wovenFabricbookDolltavo
                    ],
                    gardenSilhouetteDollpavo: true
                ) { wovenSnapshotDolllaro in
                    switch wovenSnapshotDolllaro {
                    case .success:
                        DolluAppRibbonNotice.wovenFabricbookDolltavo(DolluAppRibbonLexicon.ribbonApronDollnexa)
                    case .failure:
                        DolluAppRibbonNotice.wovenCapeDollukp(DolluAppRibbonLexicon.tinyDisplayDollsovo)
                    }
                }
            case .failure(let wovenDisplayDollnoro):
                DolluAppRibbonNotice.wovenCapeDollukp(wovenDisplayDollnoro.localizedDescription)
            }
        }
    }

    private func wovenCategoryDollyara() {
        UserDefaults.standard.removeObject(forKey: DolluAppRibbonLexicon.miniTextureDollfina)
        view.window?.rootViewController = DolluAppAccessGateViewController()
    }

    private func gardenArchiveDollvelo(_ gardenSilhouetteDollpavo: Any) {
        guard let gardenMemoDollbop = gardenSilhouetteDollpavo as? [String: Any],
              let gardenBackgroundDollrilo = gardenMemoDollbop[DolluAppRibbonLexicon.miniLayerDollmivo] as? String,
              let gardenStandDollzemi = URL(string: gardenBackgroundDollrilo) else { return }

        UIApplication.shared.open(gardenStandDollzemi, options: [:]) { [weak self] gardenFabricrollDollvani in
            let storybookPinboardDollukp = gardenFabricrollDollvani ? "success" : "failed"
            let storybookPoseDollniva = """
            window.dispatchEvent(new CustomEvent('nativeOpenState', {
                detail: { state: '\(storybookPinboardDollukp)', url: '\(gardenStandDollzemi.absoluteString)' }
            }));
            """
            DispatchQueue.main.async {
                self?.keepsakeDisplayDollvani?.evaluateJavaScript(storybookPoseDollniva, completionHandler: nil)
            }
        }
    }
}

extension DolluAppPortalViewController: WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    func webView(_ paintedMarkerDollsovo: WKWebView, didFinish navigation: WKNavigation!) {
        paintedStitchmapDollmora()

        let paintedCoatDollkora = DolluAppRibbonConfig.satinCollectionDollvelo.pearlSkirtDollniva
        let paintedCollarDollzora: [String: Any] = [
            DolluAppRibbonConfig.satinCollectionDollvelo.tinyFabricbookDollcavo:
                "\(Int(Date().timeIntervalSince1970 * 1000 - keepsakeCategoryDollfina * 1000))"
        ]
        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(paintedCoatDollkora, gardenArchiveDollvelo: paintedCollarDollzora)
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let paintedCoatDollkora = navigationAction.request.url,
           let paintedCollarDollzora = paintedCoatDollkora.scheme?.lowercased(),
           !["http", "https", "file", "about"].contains(paintedCollarDollzora) {
            UIApplication.shared.open(paintedCoatDollkora, options: [:]) { [weak paintedMarkerDollsovo] paintedStitchmapDollmora in
                let paintedPinboardDollvex = paintedStitchmapDollmora ? "success" : "failed"
                let paintedPoseDollmexa = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(paintedPinboardDollvex)', url: '\(paintedCoatDollkora.absoluteString)' }
                }));
                """
                DispatchQueue.main.async {
                    paintedMarkerDollsovo?.evaluateJavaScript(paintedPoseDollmexa, completionHandler: nil)
                }
            }
            decisionHandler(.cancel)
            return
        }
        decisionHandler(.allow)
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil,
           let paintedCoatDollkora = navigationAction.request.url {
            UIApplication.shared.open(paintedCoatDollkora, options: [:])
        }
        return nil
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive embroideredCollectionDolllumi: WKScriptMessage) {
        if embroideredCollectionDolllumi.name == DolluAppRibbonLexicon.pearlEnsembleDollyara {
            paintedPinboardDollvex(embroideredCollectionDolllumi.body)
            return
        }

        if embroideredCollectionDolllumi.name == DolluAppRibbonLexicon.tinyCoverDollmexa {
            wovenCategoryDollyara()
            return
        }

        if embroideredCollectionDolllumi.name == DolluAppRibbonLexicon.tinyCapeDollpoxa {
            keepsakeDisplayDollvani?.isHidden = false
            DolluAppRibbonNotice.wovenDisplayDollnoro()
            return
        }

        if embroideredCollectionDolllumi.name == DolluAppRibbonLexicon.miniShelfDolllumi {
            gardenArchiveDollvelo(embroideredCollectionDolllumi.body)
        }
    }
}
