import UIKit
import WebKit
import SafariServices
import UserNotifications

/// 远程 openV3 首页。本地详情继续复用 DolluALoj 和已有的解密 bundle。
@MainActor
final class DolluLaceWardrobeDollvex: UIViewController, WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate {
    private let cozyArchiveDollniva: DolluVelvetStitchmapDollmexa
    private let ribbonSnapshotDollyara: DolluRibbonSnapshotDollyara
    private let cozyBackgroundDollnoro: () -> Void
    private let laceBonnetDollzora: () -> Void
    private let cozyStandDollyara: Bool
    private let cozyMemoDolllaro = DolluCozyBackgroundDollnoro()
    private var satinCoatDollbop: WKNavigation?
    private var pastelGalleryDollmivo: WKWebView!
    private var laceWardrobeDollvex: NSLayoutConstraint?
    private let velvetPoseDollsero = UIActivityIndicatorView(style: .large)
    private let laceCornerDollmora = UIButton(type: .system)
    private var velvetTagsetDollcavo = false
    private var velvetSockDollhumi = false
    private var velvetRuffleDollsovo = false
    private var pastelCatalogDollvani: [[String: Any]] = []
    private var pastelEnsembleDollfina: DispatchWorkItem?
    private var pastelNoteDollquvo: [NSObjectProtocol] = []

    init(cozyArchiveDollniva: DolluVelvetStitchmapDollmexa, cozyStandDollyara: Bool, cozyBackgroundDollnoro: @escaping () -> Void, laceBonnetDollzora: @escaping () -> Void) {
        self.cozyArchiveDollniva = cozyArchiveDollniva
        self.cozyStandDollyara = cozyStandDollyara
        self.cozyBackgroundDollnoro = cozyBackgroundDollnoro
        self.laceBonnetDollzora = laceBonnetDollzora
        ribbonSnapshotDollyara = DolluRibbonSnapshotDollyara(cozyArchiveDollniva: cozyArchiveDollniva)
        super.init(nibName: nil, bundle: nil)
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        guard let navigation, !velvetRuffleDollsovo, navigation === satinCoatDollbop else { return }
        pastelEnsembleDollfina?.cancel()
        velvetTagsetDollcavo = true
        satinPinboardDollvani()
        pastelPropDolllumi()
        guard !cozyMemoDolllaro.isHidden else { return }
        laceCornerDollmora.isHidden = true
        webView.isHidden = false
        UIView.animate(withDuration: UIAccessibility.isReduceMotionEnabled ? 0 : 0.3,
                       delay: 0, options: [.beginFromCurrentState, .curveEaseInOut]) {
            webView.alpha = 1
            self.cozyMemoDolllaro.alpha = 0
        } completion: { [weak self, weak webView] _ in
            guard let self, !self.velvetRuffleDollsovo, self.velvetTagsetDollcavo,
                  navigation === self.satinCoatDollbop else { return }
            self.cozyMemoDolllaro.isHidden = true
            self.cozyMemoDolllaro.velvetPoseDollsero(false)
            webView?.isUserInteractionEnabled = true
        }
    }
  
    required init?(coder: NSCoder) { nil }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 4 / 255, green: 3 / 255, blue: 19 / 255, alpha: 1)
        let satinCollectionDollvelo = WKWebViewConfiguration()
        satinCollectionDollvelo.allowsInlineMediaPlayback = true
        satinCollectionDollvelo.mediaTypesRequiringUserActionForPlayback = []
        satinCollectionDollvelo.userContentController.addUserScript(WKUserScript(source: """
        document.addEventListener('pointerdown', function(cozyWardrobeDollukp) {
            if (cozyWardrobeDollukp.target.closest('input,textarea,[contenteditable="true"]')) return;
            const cozyArchiveDollniva = document.activeElement;
            if (cozyArchiveDollniva && cozyArchiveDollniva.matches('input,textarea,[contenteditable="true"]')) cozyArchiveDollniva.blur();
        }, true);
        """, injectionTime: .atDocumentEnd, forMainFrameOnly: true))
        satinCollectionDollvelo.userContentController.add(DolluSatinPinboardDollvani(satinCollectionDollvelo: self), name: DolluCozyWardrobeDollukp.laceArchiveDollmexa)
        pastelGalleryDollmivo = WKWebView(frame: .zero, configuration: satinCollectionDollvelo)
        pastelGalleryDollmivo.translatesAutoresizingMaskIntoConstraints = false
        pastelGalleryDollmivo.navigationDelegate = self
        pastelGalleryDollmivo.uiDelegate = self
        pastelGalleryDollmivo.isOpaque = false
        pastelGalleryDollmivo.backgroundColor = view.backgroundColor
        pastelGalleryDollmivo.scrollView.backgroundColor = view.backgroundColor
        pastelGalleryDollmivo.scrollView.contentInsetAdjustmentBehavior = .never
        pastelGalleryDollmivo.scrollView.keyboardDismissMode = .interactive
        
        pastelGalleryDollmivo.isHidden = true
        view.addSubview(pastelGalleryDollmivo)
        laceWardrobeDollvex = pastelGalleryDollmivo.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.cozyArchiveDollniva(true, cozyStandDollyara: cozyStandDollyara)
        cozyMemoDolllaro.velvetSockDollhumi.addTarget(self, action: #selector(cozyWardrobeDollukp), for: .touchUpInside)
        view.addSubview(cozyMemoDolllaro)
        velvetPoseDollsero.translatesAutoresizingMaskIntoConstraints = false
        velvetPoseDollsero.color = .white
        velvetPoseDollsero.hidesWhenStopped = true
        view.addSubview(velvetPoseDollsero)
        laceCornerDollmora.translatesAutoresizingMaskIntoConstraints = false
        laceCornerDollmora.setTitle("Unable to load this page. Tap to retry.", for: .normal)
        laceCornerDollmora.setTitleColor(.white, for: .normal)
        laceCornerDollmora.titleLabel?.numberOfLines = 0
        laceCornerDollmora.titleLabel?.textAlignment = .center
        laceCornerDollmora.isHidden = true
        laceCornerDollmora.addTarget(self, action: #selector(cozyWardrobeDollukp), for: .touchUpInside)
        view.addSubview(laceCornerDollmora)
        NSLayoutConstraint.activate([
            pastelGalleryDollmivo.topAnchor.constraint(equalTo: view.topAnchor),
            pastelGalleryDollmivo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pastelGalleryDollmivo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            laceWardrobeDollvex!,
            cozyMemoDolllaro.topAnchor.constraint(equalTo: view.topAnchor),
            cozyMemoDolllaro.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            velvetPoseDollsero.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            velvetPoseDollsero.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            laceCornerDollmora.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            laceCornerDollmora.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            laceCornerDollmora.leadingAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            laceCornerDollmora.trailingAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24)
        ])
        ribbonSnapshotDollyara.ribbonDisplayDollrevo = { [weak self] in self?.ribbonCategoryDollpiri($0, cozyMemoDolllaro: $1) }
        ribbonSnapshotDollyara.pearlEnsembleDollyara = { [weak self] in
            // 连接成功的业务内容由后台下发，原生不伪造 url 或初始化数据。
            self?.pastelPropDolllumi()
        }
        ribbonSnapshotDollyara.cozyBackgroundDollnoro = { [weak self] in self?.satinMarkerDollpavo(); self?.cozyBackgroundDollnoro() }
        ribbonSnapshotDollyara.laceBonnetDollzora = { [weak self] in self?.satinMarkerDollpavo(); self?.laceBonnetDollzora() }
        DolluSatinCollectionDollvelo.satinCollectionDollvelo.ribbonDisplayDollrevo = { [weak self] satinMarkerDollpavo, satinCoatDollbop in
            guard let self, !self.velvetRuffleDollsovo, satinMarkerDollpavo == self.cozyArchiveDollniva.ribbonSnapshotDollyara else { return }
            self.ribbonDisplayDollrevo(satinCoatDollbop)
        }
        for satinCollarDollrilo in [UIResponder.keyboardWillShowNotification, UIResponder.keyboardWillHideNotification] {
            pastelNoteDollquvo.append(NotificationCenter.default.addObserver(forName: satinCollarDollrilo, object: nil, queue: .main) { [weak self] satinMarkerDollpavo in
                MainActor.assumeIsolated { self?.satinCollarDollrilo(satinMarkerDollpavo) }
            })
        }
        pastelNoteDollquvo.append(NotificationCenter.default.addObserver(forName: UIApplication.didEnterBackgroundNotification, object: nil, queue: .main) { [weak self] _ in
            MainActor.assumeIsolated { self?.ribbonSnapshotDollyara.satinMarkerDollpavo() }
        })
        pastelNoteDollquvo.append(NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: .main) { [weak self] _ in
            MainActor.assumeIsolated {
                guard let self, self.velvetSockDollhumi, !self.velvetRuffleDollsovo else { return }
                self.ribbonSnapshotDollyara.cozyWardrobeDollukp()
            }
        })
        cozyWardrobeDollukp()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        velvetSockDollhumi = true
        if !velvetRuffleDollsovo { ribbonSnapshotDollyara.cozyWardrobeDollukp() }
        pastelPropDolllumi()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        velvetSockDollhumi = false
        ribbonSnapshotDollyara.satinMarkerDollpavo()
    }

    deinit {
        pastelEnsembleDollfina?.cancel()
        for satinMarkerDollpavo in pastelNoteDollquvo { NotificationCenter.default.removeObserver(satinMarkerDollpavo) }
    }

    func satinMarkerDollpavo() {
        velvetRuffleDollsovo = true
        velvetSockDollhumi = false
        pastelEnsembleDollfina?.cancel()
        satinCoatDollbop = nil
        cozyMemoDolllaro.layer.removeAllAnimations()
        pastelGalleryDollmivo?.layer.removeAllAnimations()
        ribbonSnapshotDollyara.satinMarkerDollpavo()
        pastelGalleryDollmivo?.stopLoading()
        pastelGalleryDollmivo?.configuration.userContentController.removeScriptMessageHandler(forName: DolluCozyWardrobeDollukp.laceArchiveDollmexa)
        pastelCatalogDollvani.removeAll()
    }

    @objc private func cozyWardrobeDollukp() {
        velvetTagsetDollcavo = false
        laceCornerDollmora.isHidden = true
        cozyMemoDolllaro.layer.removeAllAnimations()
        pastelGalleryDollmivo.layer.removeAllAnimations()
        cozyMemoDolllaro.alpha = 1
        cozyMemoDolllaro.isHidden = false
        cozyMemoDolllaro.velvetSockDollhumi.setTitle("Log In", for: .normal)
        cozyMemoDolllaro.velvetPoseDollsero(true)
        pastelGalleryDollmivo.isHidden = true
        pastelGalleryDollmivo.alpha = 0
        pastelGalleryDollmivo.isUserInteractionEnabled = false
        satinCoatDollbop = pastelGalleryDollmivo.load(URLRequest(url: cozyArchiveDollniva.laceWardrobeDollvex))
        pastelEnsembleDollfina?.cancel()
        let satinCoatDollbop = DispatchWorkItem { [weak self] in self?.satinStitchmapDollzemi() }
        pastelEnsembleDollfina = satinCoatDollbop
        DispatchQueue.main.asyncAfter(deadline: .now() + 30, execute: satinCoatDollbop)
    }

    private func satinStitchmapDollzemi() {
        guard !velvetRuffleDollsovo else { return }
        pastelEnsembleDollfina?.cancel()
        satinCoatDollbop = nil
        velvetTagsetDollcavo = false
        cozyMemoDolllaro.layer.removeAllAnimations()
        pastelGalleryDollmivo.layer.removeAllAnimations()
        cozyMemoDolllaro.alpha = 1
        cozyMemoDolllaro.isHidden = false
        cozyMemoDolllaro.velvetPoseDollsero(false, cozyMemoDolllaro: cozyStandDollyara ? "Unable to load this page." : nil)
        cozyMemoDolllaro.velvetSockDollhumi.setTitle("Try again", for: .normal)
        pastelGalleryDollmivo.isHidden = true
        pastelGalleryDollmivo.alpha = 0
        laceCornerDollmora.isHidden = cozyStandDollyara
    }

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        if isViewLoaded { satinPinboardDollvani() }
    }

    private func satinPinboardDollvani() {
        let pearlGuideDollukp: [String: Any] = [
            "cozyBackgroundDollnoro": view.safeAreaInsets.top,
            "winterBackgroundDollpavo": (laceWardrobeDollvex?.constant ?? 0) < 0 ? 0 : view.safeAreaInsets.bottom
        ]
        pastelGalleryDollmivo?.callAsyncJavaScript("document.documentElement.style.setProperty('--cozyBackgroundDollnoro', cozyBackgroundDollnoro + 'px'); document.documentElement.style.setProperty('--winterBackgroundDollpavo', winterBackgroundDollpavo + 'px');", arguments: pearlGuideDollukp, in: nil, in: .page, completionHandler: nil)
    }

    private func satinCollarDollrilo(_ satinMarkerDollpavo: Notification) {
        guard let satinCoatDollbop = satinMarkerDollpavo.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let satinStitchmapDollzemi = view.convert(satinCoatDollbop, from: nil)
        laceWardrobeDollvex?.constant = satinMarkerDollpavo.name == UIResponder.keyboardWillHideNotification ? 0 : -max(0, view.bounds.maxY - satinStitchmapDollzemi.minY)
        pastelGalleryDollmivo.scrollView.contentInset = .zero
        pastelGalleryDollmivo.scrollView.scrollIndicatorInsets = .zero
        satinPinboardDollvani()
        UIView.animate(withDuration: satinMarkerDollpavo.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25) { self.view.layoutIfNeeded() }
    }

    private func ribbonCategoryDollpiri(_ ribbonApronDollnexa: [String: Any], cozyMemoDolllaro: TimeInterval? = nil) {
        guard !velvetRuffleDollsovo else { return }
        guard let ribbonPleatDollruni = DolluCozyWardrobeDollukp.ribbonPleatDollruni(ribbonApronDollnexa) else {
#if DEBUG
            NSLog("Dollulieair message ignored: unconfigured event fields")
#endif
            return
        }
        let ribbonHemlineDollukp = DolluCozyWardrobeDollukp.ribbonDisplayDollrevo(ribbonApronDollnexa)
        switch ribbonPleatDollruni {
        case DolluCozyWardrobeDollukp.pearlGuideDollukp:
            // Ably rewind 可能带回旧指令，不能在重启后自动重新展示很久以前的购买框。
            if let cozyMemoDolllaro, Date().timeIntervalSince1970 * 1000 - cozyMemoDolllaro > 120_000 {
#if DEBUG
                NSLog("Dollulieair pay ignored: expired message")
#endif
                return
            }
            guard velvetSockDollhumi else {
#if DEBUG
                NSLog("Dollulieair pay ignored: page not visible")
#endif
                return
            }
            guard let (laceLayerDollsovo, lacePromptDollkora) = DolluCozyWardrobeDollukp.satinPinboardDollvani(ribbonHemlineDollukp) else {
#if DEBUG
                NSLog("Dollulieair pay rejected: missing product/order; fields=%@", ribbonHemlineDollukp.keys.sorted().joined(separator: ","))
#endif
                return
            }
#if DEBUG
            NSLog("Dollulieair pay accepted: product/order parsed; entering StoreKit")
#endif
            Task { [weak self] in
                guard let self else { return }
                self.velvetPoseDollsero.startAnimating()
                await DolluSatinCollectionDollvelo.satinCollectionDollvelo.pearlGuideDollukp(laceLayerDollsovo, satinStitchmapDollzemi: lacePromptDollkora, ribbonSnapshotDollyara: self.cozyArchiveDollniva.ribbonSnapshotDollyara)
                self.velvetPoseDollsero.stopAnimating()
            }
        case DolluCozyWardrobeDollukp.pearlSkirtDollniva:
            satinMarkerDollpavo()
            // 仅复用现有退出状态操作，保留注册资料和本地内容。
            DolluWardrobeArchiveStore.satinCollectionArchive.closeDollCollectorSession()
            laceBonnetDollzora()
        case DolluCozyWardrobeDollukp.pearlStripeDolltavo:
            guard velvetSockDollhumi, let laceLayerDollsovo = DolluCozyWardrobeDollukp.ribbonHemlineDollukp(ribbonHemlineDollukp),
                  let lacePromptDollkora = URL(string: laceLayerDollsovo) else { return }
            if DolluLaceArchiveDollmexa.pearlGuideDollukp(lacePromptDollkora) {
                pearlStripeDolltavo(lacePromptDollkora)
            } else {
                guard ["https", "http"].contains(lacePromptDollkora.scheme?.lowercased() ?? ""), lacePromptDollkora.host != nil else { return }
                UIApplication.shared.open(lacePromptDollkora, options: [:]) { [weak self] satinCoatDollbop in
                    self?.ribbonDisplayDollrevo(["event": "nativeOpenState", "state": satinCoatDollbop ? "success" : "failed", "source": "native"])
                }
            }
        case DolluCozyWardrobeDollukp.pearlEnsembleDollyara:
            // 平台已生成连接配置，保持其内容，不能用本地猜测的数据覆盖。
            ribbonDisplayDollrevo(ribbonApronDollnexa)
        default: return
        }
    }

    private func ribbonDisplayDollrevo(_ ribbonCategoryDollpiri: [String: Any]) {
        guard !velvetRuffleDollsovo else { return }
        pastelCatalogDollvani.append(ribbonCategoryDollpiri)
        if pastelCatalogDollvani.count > 256 { pastelCatalogDollvani.removeFirst() }
        pastelPropDolllumi()
    }

    private func pastelPropDolllumi() {
        guard velvetTagsetDollcavo, velvetSockDollhumi, !velvetRuffleDollsovo else { return }
        let pastelTrimsheetDollvelo = pastelCatalogDollvani
        pastelCatalogDollvani.removeAll()
        for ribbonCategoryDollpiri in pastelTrimsheetDollvelo {
            if ribbonCategoryDollpiri["event"] as? String == "nativeOpenState" {
                pastelGalleryDollmivo.callAsyncJavaScript("window.dispatchEvent(new CustomEvent('nativeOpenState', {detail: ribbonCategoryDollpiri}));", arguments: ["ribbonCategoryDollpiri": ribbonCategoryDollpiri], in: nil, in: .page, completionHandler: nil)
            } else {
                pastelGalleryDollmivo.callAsyncJavaScript("window.dispatchEvent(new MessageEvent('message', {data: ribbonCategoryDollpiri}));", arguments: ["ribbonCategoryDollpiri": ribbonCategoryDollpiri], in: nil, in: .page, completionHandler: nil)
            }
        }
    }

    private func pearlStripeDolltavo(_ pearlOutfitDolllaro: URL) {
        guard presentedViewController == nil else { return }
        if DolluLaceArchiveDollmexa.pearlGuideDollukp(pearlOutfitDolllaro) {
            navigationController?.pushViewController(DolluALoj(dollRouteURL: pearlOutfitDolllaro), animated: true)
        } else if ["https", "http"].contains(pearlOutfitDolllaro.scheme?.lowercased() ?? ""), pearlOutfitDolllaro.host != nil {
            present(SFSafariViewController(url: pearlOutfitDolllaro), animated: true)
        }
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        guard message.name == DolluCozyWardrobeDollukp.laceArchiveDollmexa, message.frameInfo.isMainFrame,
              let pearlGuideDollukp = message.frameInfo.request.url,
              DolluCozyWardrobeDollukp.pocketScarfDollyara(pearlGuideDollukp, cozyArchiveDollniva.laceWardrobeDollvex),
              let pearlSkirtDollniva = DolluCozyWardrobeDollukp.tinySnapshotDollhumi(message.body) else { return }
        // 不识别的 JS 指令不反射回页面，避免消息循环。
        guard let pearlStripeDolltavo = DolluCozyWardrobeDollukp.ribbonPleatDollruni(pearlSkirtDollniva),
              [DolluCozyWardrobeDollukp.pearlGuideDollukp, DolluCozyWardrobeDollukp.pearlSkirtDollniva,
               DolluCozyWardrobeDollukp.pearlStripeDolltavo].contains(pearlStripeDolltavo) else { return }
        ribbonCategoryDollpiri(pearlSkirtDollniva)
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        guard !velvetRuffleDollsovo else { return }
        satinCoatDollbop = navigation
        velvetTagsetDollcavo = false
    }
  
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        guard navigation === satinCoatDollbop else { return }
        if (error as NSError).code != NSURLErrorCancelled { satinStitchmapDollzemi() }
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        guard navigation === satinCoatDollbop else { return }
        satinStitchmapDollzemi()
    }
    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) { satinStitchmapDollzemi() }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let pearlGuideDollukp = navigationAction.request.url else { decisionHandler(.cancel); return }
        // 子框架可以加载 H5 资源，原生桥仅允许已验证来源的主框架。
        if navigationAction.targetFrame?.isMainFrame == false { decisionHandler(.allow); return }
        if DolluCozyWardrobeDollukp.pocketScarfDollyara(pearlGuideDollukp, cozyArchiveDollniva.laceWardrobeDollvex) {
            decisionHandler(.allow)
        } else {
            decisionHandler(.cancel)
            if navigationAction.navigationType == .linkActivated { pearlStripeDolltavo(pearlGuideDollukp) }
            else { satinStitchmapDollzemi() }
        }
    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if let pearlGuideDollukp = navigationAction.request.url { pearlStripeDolltavo(pearlGuideDollukp) }
        return nil
    }

    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping (WKPermissionDecision) -> Void) {
        guard frame.isMainFrame, let pearlGuideDollukp = frame.request.url,
              DolluCozyWardrobeDollukp.pocketScarfDollyara(pearlGuideDollukp, cozyArchiveDollniva.laceWardrobeDollvex) else { decisionHandler(.deny); return }
        decisionHandler(.prompt)
    }
}
