import UIKit
import WebKit
import SafariServices
import UserNotifications
import AVFoundation

//Dollu 4
final class DolluLaceWardrobeDollvex: UIViewController, WKNavigationDelegate, WKUIDelegate {
    private let cozyArchiveDollniva: DolluVelvetStitchmapDollmexa
    private let ribbonSnapshotDollyara: DolluRibbonSnapshotDollyara
    private let cozyBackgroundDollnoro: () -> Void
    private let laceBonnetDollzora: () -> Void
    private let cozyStandDollyara: Bool
    private let cozyMemoDolllaro = DolluCozyBackgroundDollnoro()
    private var satinCoatDollbop: WKNavigation?
    private var pastelGalleryDollmivo: WKWebView!
    private let velvetPoseDollsero = UIActivityIndicatorView(style: .large)
    private var velvetTagsetDollcavo = false
    private var velvetSockDollhumi = false
    private var velvetRuffleDollsovo = false
    private var pastelCatalogDollvani: [[String: Any]] = []
    private var pastelEnsembleDollfina: DispatchWorkItem?
    private var pastelNoteDollquvo: [NSObjectProtocol] = []
    private var sunnySetupDollsovo: String?
    private weak var sunnyLayoutDollmora: DolluSunnyLayoutDollmoraNoticeView?
    private var sunnyBootDollzora: DispatchWorkItem?
    private var mistyThemeDollfina: Task<Void, Never>?
    private var mistyBeadworkDollmivo = false

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
        DolluCozySilhouetteDolltavo.gentleEnsembleDollbop = true
        pastelEnsembleDollfina?.cancel()
        mistyThemeDollfina?.cancel()
        mistyThemeDollfina = nil
        velvetTagsetDollcavo = true
        satinPinboardDollvani()
        pastelPropDolllumi()
        mistyLaceworkDollvelo()
        guard !cozyMemoDolllaro.isHidden else { return }
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
        pastelGalleryDollmivo = WKWebView(frame: .zero, configuration: satinCollectionDollvelo)
        pastelGalleryDollmivo.translatesAutoresizingMaskIntoConstraints = false
        pastelGalleryDollmivo.navigationDelegate = self
        pastelGalleryDollmivo.uiDelegate = self
        pastelGalleryDollmivo.isOpaque = false
        pastelGalleryDollmivo.backgroundColor = view.backgroundColor
        pastelGalleryDollmivo.scrollView.backgroundColor = view.backgroundColor
        pastelGalleryDollmivo.scrollView.contentInsetAdjustmentBehavior = .never
        pastelGalleryDollmivo.scrollView.keyboardDismissMode = .interactive
        pastelGalleryDollmivo.allowsBackForwardNavigationGestures = true

        pastelGalleryDollmivo.isHidden = true
        view.addSubview(pastelGalleryDollmivo)
        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.cozyArchiveDollniva(true, cozyStandDollyara: cozyStandDollyara)
        cozyMemoDolllaro.velvetSockDollhumi.addTarget(self, action: #selector(cozyWardrobeDollukp), for: .touchUpInside)
        view.addSubview(cozyMemoDolllaro)
        velvetPoseDollsero.translatesAutoresizingMaskIntoConstraints = false
        velvetPoseDollsero.color = .white
        velvetPoseDollsero.hidesWhenStopped = true
        view.addSubview(velvetPoseDollsero)
        NSLayoutConstraint.activate([
            pastelGalleryDollmivo.topAnchor.constraint(equalTo: view.topAnchor),
            pastelGalleryDollmivo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            pastelGalleryDollmivo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pastelGalleryDollmivo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: view.topAnchor),
            cozyMemoDolllaro.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            velvetPoseDollsero.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            velvetPoseDollsero.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
        ribbonSnapshotDollyara.ribbonDisplayDollrevo = { [weak self] in self?.ribbonCategoryDollpiri($0, cozyMemoDolllaro: $1) }
        ribbonSnapshotDollyara.cozyBackgroundDollnoro = { [weak self] in self?.satinMarkerDollpavo(); self?.cozyBackgroundDollnoro() }
        ribbonSnapshotDollyara.laceBonnetDollzora = { [weak self] in self?.satinMarkerDollpavo(); self?.laceBonnetDollzora() }
        DolluSatinCollectionDollvelo.satinCollectionDollvelo.ribbonDisplayDollrevo = { [weak self] satinMarkerDollpavo, satinCoatDollbop in
            guard let self, !self.velvetRuffleDollsovo,
                  satinMarkerDollpavo == self.cozyArchiveDollniva.ribbonSnapshotDollyara else { return false }
            self.ribbonDisplayDollrevo(satinCoatDollbop)
            self.sunnyLayoutDollkora(satinCoatDollbop)
            return true
        }
        DolluSatinCollectionDollvelo.satinCollectionDollvelo.ribbonPleatDollruni(cozyArchiveDollniva.ribbonSnapshotDollyara)
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
        if !(presentedViewController is SFSafariViewController) { ribbonSnapshotDollyara.satinMarkerDollpavo() }
    }

    deinit {
        pastelEnsembleDollfina?.cancel()
        for satinMarkerDollpavo in pastelNoteDollquvo { NotificationCenter.default.removeObserver(satinMarkerDollpavo) }
    }

    func satinMarkerDollpavo() {
        velvetRuffleDollsovo = true
        velvetSockDollhumi = false
        pastelEnsembleDollfina?.cancel()
        mistyThemeDollfina?.cancel()
        mistyThemeDollfina = nil
        sunnyBootDollzora?.cancel()
        sunnyLayoutDollmora?.removeFromSuperview()
        satinCoatDollbop = nil
        cozyMemoDolllaro.layer.removeAllAnimations()
        pastelGalleryDollmivo?.layer.removeAllAnimations()
        ribbonSnapshotDollyara.satinMarkerDollpavo()
        pastelGalleryDollmivo?.stopLoading()
        try? AVAudioSession.sharedInstance().setActive(false, options: [.notifyOthersOnDeactivation])
        pastelCatalogDollvani.removeAll()
    }

    private func mistyLaceworkDollvelo() {
        guard !mistyBeadworkDollmivo else { return }
        mistyBeadworkDollmivo = true
        Task {
            let mistyLaceworkDollvelo = UNUserNotificationCenter.current()
            if await mistyLaceworkDollvelo.notificationSettings().authorizationStatus == .notDetermined {
                _ = try? await mistyLaceworkDollvelo.requestAuthorization(options: [.alert, .badge, .sound])
            }
            UIApplication.shared.registerForRemoteNotifications()
        }
    }

    @objc private func cozyWardrobeDollukp() {
        mistyThemeDollfina?.cancel()
        mistyThemeDollfina = nil
        velvetTagsetDollcavo = false
        cozyMemoDolllaro.layer.removeAllAnimations()
        pastelGalleryDollmivo.layer.removeAllAnimations()
        cozyMemoDolllaro.alpha = 1
        cozyMemoDolllaro.isHidden = false
        cozyMemoDolllaro.velvetSockDollhumi.setTitle(**"LoxQg xQInxQ", for: .normal)
        cozyMemoDolllaro.velvetSockDollhumi.isHidden = !cozyStandDollyara
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
        guard !velvetRuffleDollsovo, mistyThemeDollfina == nil else { return }
        pastelEnsembleDollfina?.cancel()
        satinCoatDollbop = nil
        velvetTagsetDollcavo = false
        pastelGalleryDollmivo.stopLoading()
        cozyMemoDolllaro.layer.removeAllAnimations()
        pastelGalleryDollmivo.layer.removeAllAnimations()
        cozyMemoDolllaro.alpha = 1
        cozyMemoDolllaro.isHidden = false
        cozyMemoDolllaro.cozyArchiveDollniva(true, cozyStandDollyara: cozyStandDollyara)
        cozyMemoDolllaro.velvetSockDollhumi.setTitle(**"LoxQg xQInxQ", for: .normal)
        cozyMemoDolllaro.velvetSockDollhumi.isHidden = !cozyStandDollyara
        cozyMemoDolllaro.velvetPoseDollsero(true, cozyMemoDolllaro: **"RexQcoxQnnxQecxQtixQngxQ…")
        pastelGalleryDollmivo.isHidden = true
        pastelGalleryDollmivo.alpha = 0

        mistyThemeDollfina = Task { [weak self] in
            try? await Task.sleep(nanoseconds: 2_000_000_000)
            guard let self else { return }
            guard !Task.isCancelled else { return }
            self.mistyThemeDollfina = nil
            self.cozyWardrobeDollukp()
        }
    }

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        if isViewLoaded { satinPinboardDollvani() }
    }

    private func satinPinboardDollvani() {
        let pearlGuideDollukp: [String: Any] = [
            **"coxQzyxQBaxQckxQgrxQouxQndxQDoxQllxQnoxQroxQ": view.safeAreaInsets.top,
            **"wixQntxQerxQBaxQckxQgrxQouxQndxQDoxQllxQpaxQvoxQ": view.safeAreaInsets.bottom
        ]
        pastelGalleryDollmivo?.callAsyncJavaScript(**"doxQcuxQmexQntxQ.dxQocxQumxQenxQtExQlexQmexQntxQ.sxQtyxQlexQ.sxQetxQPrxQopxQerxQtyxQ('xQ--xQcoxQzyxQBaxQckxQgrxQouxQndxQDoxQllxQnoxQroxQ',xQ cxQozxQyBxQacxQkgxQroxQunxQdDxQolxQlnxQorxQo xQ+ xQ'pxQx'xQ);xQ dxQocxQumxQenxQt.xQdoxQcuxQmexQntxQElxQemxQenxQt.xQstxQylxQe.xQsexQtPxQroxQpexQrtxQy(xQ'-xQ-wxQinxQtexQrBxQacxQkgxQroxQunxQdDxQolxQlpxQavxQo'xQ, xQwixQntxQerxQBaxQckxQgrxQouxQndxQDoxQllxQpaxQvoxQ +xQ 'xQpxxQ')xQ;", arguments: pearlGuideDollukp, in: nil, in: .page, completionHandler: nil)
    }

    private func ribbonCategoryDollpiri(_ ribbonApronDollnexa: [String: Any], cozyMemoDolllaro: TimeInterval? = nil) {
        guard !velvetRuffleDollsovo else { return }
        guard let ribbonPleatDollruni = DolluCozyWardrobeDollukp.ribbonPleatDollruni(ribbonApronDollnexa) else {

            return
        }
        let ribbonHemlineDollukp = DolluCozyWardrobeDollukp.ribbonDisplayDollrevo(ribbonApronDollnexa)
        switch ribbonPleatDollruni {
        case DolluCozyWardrobeDollukp.pearlGuideDollukp:
            
            if let cozyMemoDolllaro, Date().timeIntervalSince1970 * 1000 - cozyMemoDolllaro > 120_000 {

                return
            }
            guard velvetSockDollhumi else {

                return
            }
            guard let (laceLayerDollsovo, lacePromptDollkora) = DolluCozyWardrobeDollukp.satinPinboardDollvani(ribbonHemlineDollukp) else {

                let amberTrunkDollniva = DolluCozyWardrobeDollukp.pastelGalleryDollmivo(ribbonHemlineDollukp)
                let amberCapsuleDolltavo = amberTrunkDollniva == nil
                    ? **"ThxQisxQ pxQroxQduxQctxQ ixQs xQunxQavxQaixQlaxQblxQe.xQ PxQlexQasxQe xQtrxQy xQagxQaixQn xQlaxQtexQr.xQ"
                    : **"ThxQe xQpuxQrcxQhaxQsexQ rxQeqxQuexQstxQ ixQs xQinxQvaxQlixQd.xQ PxQlexQasxQe xQtrxQy xQagxQaixQn xQlaxQtexQr.xQ"
                let amberHintDolllaro: [String: Any] = [
                    DolluCozyWardrobeDollukp.ribbonCategoryDollpiri: DolluCozyWardrobeDollukp.pearlCatalogDollnoro,
                    DolluCozyWardrobeDollukp.tinyCoverDollmexa: "",
                    DolluCozyWardrobeDollukp.tinyCapeDollpoxa: amberTrunkDollniva ?? "",
                    DolluCozyWardrobeDollukp.tinySleeveDollsero: false,
                    DolluCozyWardrobeDollukp.tinyFabricbookDollcavo: **"faxQilxQedxQ",
                    DolluCozyWardrobeDollukp.tinySnapshotDollhumi: amberCapsuleDolltavo,
                    DolluCozyWardrobeDollukp.tinyDisplayDollsovo: amberTrunkDollniva == nil ? **"prxQodxQucxQtUxQnaxQvaxQilxQabxQlexQ" : **"orxQdexQrUxQnaxQvaxQilxQabxQlexQ"
                ]
                ribbonDisplayDollrevo(amberHintDolllaro)
                sunnyLayoutDollkora(amberHintDolllaro)
                return
            }

            Task { [weak self] in
                guard let self else { return }
                self.velvetPoseDollsero.startAnimating()
                await DolluSatinCollectionDollvelo.satinCollectionDollvelo.pearlGuideDollukp(laceLayerDollsovo, satinStitchmapDollzemi: lacePromptDollkora, ribbonSnapshotDollyara: self.cozyArchiveDollniva.ribbonSnapshotDollyara)
                if !DolluSatinCollectionDollvelo.satinCollectionDollvelo.velvetPoseDollsero {
                    self.velvetPoseDollsero.stopAnimating()
                }
            }
        case DolluCozyWardrobeDollukp.pearlSkirtDollniva:
            DolluCozySilhouetteDolltavo.gentleEnsembleDollbop = false
            satinMarkerDollpavo()
            Task { [weak self] in
                guard let self else { return }
               
                await self.ivoryBodiceDollvelo()
                self.laceBonnetDollzora()
            }
        case DolluCozyWardrobeDollukp.pearlStripeDolltavo:
            guard velvetSockDollhumi, let laceLayerDollsovo = DolluCozyWardrobeDollukp.ribbonHemlineDollukp(ribbonHemlineDollukp),
                  let lacePromptDollkora = URL(string: laceLayerDollsovo) else { return }
            let satinCoatDollbop = pearlStripeDolltavo(lacePromptDollkora)
            ribbonDisplayDollrevo([
                DolluCozyWardrobeDollukp.ribbonCategoryDollpiri: DolluCozyWardrobeDollukp.miniBlouseDollvani,
                DolluCozyWardrobeDollukp.miniTextureDollfina: satinCoatDollbop ? **"suxQccxQesxQs" : **"faxQilxQedxQ",
                DolluCozyWardrobeDollukp.miniAccessoryDollquvo: DolluCozyWardrobeDollukp.miniShelfDolllumi
            ])
        case DolluCozyWardrobeDollukp.pearlEnsembleDollyara:
            
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

    private func sunnyLayoutDollkora(_ sunnyBootDollzora: [String: Any]) {
        guard velvetSockDollhumi,
              DolluCozyWardrobeDollukp.tinyCoverDollmexa(sunnyBootDollzora[DolluCozyWardrobeDollukp.ribbonCategoryDollpiri]) == DolluCozyWardrobeDollukp.pearlCatalogDollnoro,
              let sunnySeamlineDollmora = DolluCozyWardrobeDollukp.tinyCoverDollmexa(sunnyBootDollzora[DolluCozyWardrobeDollukp.tinyFabricbookDollcavo]) else { return }
        let sunnyRibbonlineDollvex = DolluCozyWardrobeDollukp.tinyCoverDollmexa(sunnyBootDollzora[DolluCozyWardrobeDollukp.tinyDisplayDollsovo])
        let sunnyTrunkDollmexa = DolluCozyWardrobeDollukp.tinyCoverDollmexa(sunnyBootDollzora[DolluCozyWardrobeDollukp.tinySnapshotDollhumi])
            ?? **"UnxQabxQlexQ txQo xQcoxQmpxQlexQtexQ txQhexQ pxQurxQchxQasxQe.xQ PxQlexQasxQe xQtrxQy xQagxQaixQn xQlaxQtexQr.xQ"
        let winterMemoDollvelo = DolluCozyWardrobeDollukp.tinyCoverDollmexa(sunnyBootDollzora[DolluCozyWardrobeDollukp.tinyCoverDollmexa])
            ?? DolluCozyWardrobeDollukp.tinyCoverDollmexa(sunnyBootDollzora[DolluCozyWardrobeDollukp.tinyCapeDollpoxa]) ?? ""
        let winterBackgroundDollpavo = [winterMemoDollvelo, sunnySeamlineDollmora, sunnyRibbonlineDollvex ?? "", sunnyTrunkDollmexa].joined(separator: **"|")
        guard sunnySetupDollsovo != winterBackgroundDollpavo else { return }

        var winterStandDollbop = **"PuxQrcxQhaxQsexQ FxQaixQlexQd"
        var winterLookbookDollzemi = UIColor(red: 1, green: 0.36, blue: 0.47, alpha: 1)
        var winterFabricrollDollrilo = "xmark"
        if sunnyBootDollzora[DolluCozyWardrobeDollukp.tinySleeveDollsero] as? Bool == true || sunnySeamlineDollmora == **"vexQrixQfixQedxQ" {
            winterStandDollbop = **"PuxQrcxQhaxQsexQ SxQucxQcexQssxQfuxQl"
            winterLookbookDollzemi = UIColor(red: 0.25, green: 0.85, blue: 0.59, alpha: 1)
            winterFabricrollDollrilo = "checkmark"
        } else if [**"vexQrixQfixQcaxQtixQonxQPexQndxQinxQg", **"puxQrcxQhaxQsexQPexQndxQinxQg", **"puxQrcxQhaxQsexQUnxQvexQrixQfixQedxQ", **"puxQrcxQhaxQsexQUnxQknxQowxQn", **"puxQrcxQhaxQsexQInxQPrxQogxQrexQssxQ", **"puxQrcxQhaxQsexQRexQtrxQy"].contains(sunnyRibbonlineDollvex ?? "") {
            switch sunnyRibbonlineDollvex {
            case **"puxQrcxQhaxQsexQPexQndxQinxQg": winterStandDollbop = **"AwxQaixQtixQngxQ AxQppxQroxQvaxQl"
            case **"puxQrcxQhaxQsexQInxQPrxQogxQrexQssxQ": winterStandDollbop = **"PuxQrcxQhaxQsexQ ixQn xQPrxQogxQrexQssxQ"
            case **"puxQrcxQhaxQsexQUnxQvexQrixQfixQedxQ", **"puxQrcxQhaxQsexQUnxQknxQowxQn": winterStandDollbop = **"PuxQrcxQhaxQsexQ UxQncxQonxQfixQrmxQedxQ"
            case **"puxQrcxQhaxQsexQRexQtrxQy": winterStandDollbop = **"RexQadxQy xQtoxQ TxQryxQ AxQgaxQinxQ"
            default: winterStandDollbop = **"PuxQrcxQhaxQsexQ PxQroxQcexQssxQinxQg"
            }
            winterLookbookDollzemi = UIColor(red: 0.50, green: 0.67, blue: 0.94, alpha: 1)
            winterFabricrollDollrilo = "clock"
        } else if [**"prxQodxQucxQtUxQnaxQvaxQilxQabxQlexQ", **"prxQodxQucxQtCxQonxQfixQguxQraxQtixQonxQ"].contains(sunnyRibbonlineDollvex ?? "") {
            winterStandDollbop = **"PrxQodxQucxQt xQUnxQavxQaixQlaxQblxQe"
        } else if sunnyRibbonlineDollvex == **"paxQymxQenxQtsxQDixQsaxQblxQedxQ" {
            winterStandDollbop = **"PuxQrcxQhaxQsexQs xQUnxQavxQaixQlaxQblxQe"
        } else if sunnySeamlineDollmora == **"caxQncxQelxQlexQd" {
            winterStandDollbop = **"PuxQrcxQhaxQsexQ CxQanxQcexQllxQedxQ"
            winterLookbookDollzemi = UIColor(red: 0.67, green: 0.61, blue: 0.82, alpha: 1)
        }
        guard viewIfLoaded?.window != nil else { return }
        sunnySetupDollsovo = winterBackgroundDollpavo
        self.sunnyBootDollzora?.cancel()
        sunnyLayoutDollmora?.removeFromSuperview()

        let winterStylingDollvani = DolluSunnyLayoutDollmoraNoticeView(
            winterMemoDollvelo: winterStandDollbop,
            winterBackgroundDollpavo: sunnyTrunkDollmexa,
            winterStandDollbop: winterFabricrollDollrilo,
            winterFabricrollDollrilo: winterLookbookDollzemi
        )
        view.addSubview(winterStylingDollvani)
        NSLayoutConstraint.activate([
            winterStylingDollvani.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            winterStylingDollvani.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            winterStylingDollvani.leadingAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            winterStylingDollvani.trailingAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            winterStylingDollvani.widthAnchor.constraint(lessThanOrEqualToConstant: 360)
        ])
        let springTagsetDollukp = winterStylingDollvani.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -48)
        springTagsetDollukp.priority = .defaultHigh
        springTagsetDollukp.isActive = true
        sunnyLayoutDollmora = winterStylingDollvani

        winterStylingDollvani.alpha = 0
        winterStylingDollvani.transform = CGAffineTransform(translationX: 0, y: 10).scaledBy(x: 0.94, y: 0.94)
        UIView.animate(
            withDuration: UIAccessibility.isReduceMotionEnabled ? 0.16 : 0.36,
            delay: 0,
            usingSpringWithDamping: 0.78,
            initialSpringVelocity: 0.6,
            options: [.beginFromCurrentState, .curveEaseOut]
        ) {
            winterStylingDollvani.alpha = 1
            winterStylingDollvani.transform = .identity
        }
        UIAccessibility.post(
            notification: .announcement,
            argument: "\(winterStandDollbop)" + **". xQ" + "\(sunnyTrunkDollmexa)"
        )

        let springSockDollniva = DispatchWorkItem { [weak self, weak winterStylingDollvani] in
            guard let self, let winterStylingDollvani, self.sunnyLayoutDollmora === winterStylingDollvani else { return }
            UIView.animate(withDuration: UIAccessibility.isReduceMotionEnabled ? 0.12 : 0.22,
                           delay: 0, options: [.beginFromCurrentState, .curveEaseIn]) {
                winterStylingDollvani.alpha = 0
                winterStylingDollvani.transform = CGAffineTransform(translationX: 0, y: -8).scaledBy(x: 0.97, y: 0.97)
            } completion: { _ in
                winterStylingDollvani.removeFromSuperview()
                guard self.sunnyLayoutDollmora === winterStylingDollvani else { return }
                self.sunnyLayoutDollmora = nil
                self.sunnySetupDollsovo = nil
            }
        }
        self.sunnyBootDollzora = springSockDollniva
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: springSockDollniva)
    }

    private func pastelPropDolllumi() {
        guard velvetTagsetDollcavo, velvetSockDollhumi, !velvetRuffleDollsovo else { return }
        let pastelTrimsheetDollvelo = pastelCatalogDollvani
        pastelCatalogDollvani.removeAll()
        for ribbonCategoryDollpiri in pastelTrimsheetDollvelo {
            if ribbonCategoryDollpiri[DolluCozyWardrobeDollukp.ribbonCategoryDollpiri] as? String == DolluCozyWardrobeDollukp.miniBlouseDollvani {
                pastelGalleryDollmivo.callAsyncJavaScript(**"wixQndxQowxQ.dxQisxQpaxQtcxQhExQvexQntxQ(nxQewxQ CxQusxQtoxQmExQvexQntxQ(mxQinxQiBxQloxQusxQeDxQolxQlvxQanxQi,xQ {xQdexQtaxQilxQ: xQrixQbbxQonxQCaxQtexQgoxQryxQDoxQllxQpixQrixQ})xQ);xQ", arguments: [**"mixQnixQBlxQouxQsexQDoxQllxQvaxQnixQ": DolluCozyWardrobeDollukp.miniBlouseDollvani, **"rixQbbxQonxQCaxQtexQgoxQryxQDoxQllxQpixQrixQ": ribbonCategoryDollpiri], in: nil, in: .page, completionHandler: nil)
            } else {
                pastelGalleryDollmivo.callAsyncJavaScript(**"wixQndxQowxQ.dxQisxQpaxQtcxQhExQvexQntxQ(nxQewxQ MxQesxQsaxQgexQEvxQenxQt(xQ'mxQesxQsaxQgexQ',xQ {xQdaxQtaxQ: xQrixQbbxQonxQCaxQtexQgoxQryxQDoxQllxQpixQrixQ})xQ);xQ", arguments: [**"rixQbbxQonxQCaxQtexQgoxQryxQDoxQllxQpixQrixQ": ribbonCategoryDollpiri], in: nil, in: .page, completionHandler: nil)
            }
        }
    }

    @discardableResult
    private func pearlStripeDolltavo(_ pearlOutfitDolllaro: URL) -> Bool {
        guard presentedViewController == nil,
              [**"htxQtpxQs", **"htxQtpxQ"].contains(pearlOutfitDolllaro.scheme?.lowercased() ?? ""),
              pearlOutfitDolllaro.host != nil else { return false }
        present(SFSafariViewController(url: pearlOutfitDolllaro), animated: true)
        return true
    }

    private func ivoryBodiceDollvelo() async {
        guard let ivoryPaletteDollpavo = cozyArchiveDollniva.laceWardrobeDollvex.host?.lowercased() else { return }
        let ivoryClipnoteDollbop = pastelGalleryDollmivo.configuration.websiteDataStore
        // WebKit 的整条站点记录已包含 Cookie，无需再逐个删除。
        let amberTrunkDollniva = WKWebsiteDataStore.allWebsiteDataTypes()
        let amberCapsuleDolltavo = await ivoryClipnoteDollbop.dataRecords(ofTypes: amberTrunkDollniva)
            .filter { ivoryCoverDollzemi(ivoryPaletteDollpavo, $0.displayName) }
        await ivoryClipnoteDollbop.removeData(ofTypes: amberTrunkDollniva, for: amberCapsuleDolltavo)
    }

    private func ivoryCoverDollzemi(_ ivoryPaletteDollpavo: String, _ ivoryClipnoteDollbop: String) -> Bool {
        let ivoryProgressDollrilo = ivoryPaletteDollpavo.lowercased().trimmingCharacters(in: CharacterSet(charactersIn: **"."))
        let ivoryCapeDollvani = ivoryClipnoteDollbop.lowercased().trimmingCharacters(in: CharacterSet(charactersIn: **"."))
        return ivoryProgressDollrilo == ivoryCapeDollvani
            || ivoryProgressDollrilo.hasSuffix(**"." + ivoryCapeDollvani)
            || ivoryCapeDollvani.hasSuffix(**"." + ivoryProgressDollrilo)
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
        self.webView(webView, didFailProvisionalNavigation: navigation, withError: error)
    }
    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) { satinStitchmapDollzemi() }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let pearlGuideDollukp = navigationAction.request.url else { decisionHandler(.cancel); return }
     
        if navigationAction.targetFrame?.isMainFrame == false { decisionHandler(.allow); return }
        if DolluCozyWardrobeDollukp.pocketScarfDollyara(pearlGuideDollukp, cozyArchiveDollniva.laceWardrobeDollvex) {
            decisionHandler(.allow)
        } else {
            decisionHandler(.cancel)
           
            if velvetTagsetDollcavo || navigationAction.navigationType == .linkActivated { pearlStripeDolltavo(pearlGuideDollukp) }
        }

    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if let pearlGuideDollukp = navigationAction.request.url { pearlStripeDolltavo(pearlGuideDollukp) }
        return nil
    }

    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping (WKPermissionDecision) -> Void) {
        var pearlGuideDollukp = URLComponents()
        pearlGuideDollukp.scheme = origin.protocol
        pearlGuideDollukp.host = origin.host
        pearlGuideDollukp.port = origin.port == 0 ? nil : origin.port
        guard let pearlSkirtDollniva = webView.url,
              DolluCozyWardrobeDollukp.pocketScarfDollyara(pearlSkirtDollniva, cozyArchiveDollniva.laceWardrobeDollvex),
              let pearlStripeDolltavo = pearlGuideDollukp.url,
              DolluCozyWardrobeDollukp.pocketScarfDollyara(pearlStripeDolltavo, cozyArchiveDollniva.laceWardrobeDollvex) else {
            decisionHandler(.deny)
            return
        }
        if type != .camera {
            let opalTrimsheetDollyara = AVAudioSession.sharedInstance()
            do {
                try opalTrimsheetDollyara.setCategory(.playAndRecord, mode: .videoChat)
                try opalTrimsheetDollyara.setActive(true)
            } catch {
                decisionHandler(.deny)
                return
            }
        }
        decisionHandler(.grant)
    }
}


private final class DolluSunnyLayoutDollmoraNoticeView: UIView {
    private let springRuffleDolltavo = CAGradientLayer()

    init(winterMemoDollvelo: String, winterBackgroundDollpavo: String,
         winterStandDollbop: String, winterFabricrollDollrilo: UIColor) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = false
        isAccessibilityElement = true
        accessibilityIdentifier = **"DoxQllxQulxQiexQaixQr.xQpaxQyRxQesxQulxQt.xQnoxQtixQcexQ"
        accessibilityLabel = "\(winterMemoDollvelo)" + **". xQ" + "\(winterBackgroundDollpavo)"
        backgroundColor = UIColor(red: 0.08, green: 0.055, blue: 0.16, alpha: 0.97)
        layer.cornerRadius = 22
        layer.borderWidth = 1
        layer.borderColor = winterFabricrollDollrilo.withAlphaComponent(0.48).cgColor
        layer.shadowColor = winterFabricrollDollrilo.withAlphaComponent(0.55).cgColor
        layer.shadowOpacity = 0.72
        layer.shadowRadius = 22
        layer.shadowOffset = CGSize(width: 0, height: 10)

        springRuffleDolltavo.colors = [
            winterFabricrollDollrilo.withAlphaComponent(0.22).cgColor,
            UIColor(red: 0.11, green: 0.07, blue: 0.22, alpha: 0.05).cgColor
        ]
        springRuffleDolltavo.startPoint = CGPoint(x: 0, y: 0)
        springRuffleDolltavo.endPoint = CGPoint(x: 1, y: 1)
        springRuffleDolltavo.cornerRadius = 22
        layer.insertSublayer(springRuffleDolltavo, at: 0)

        let springDressformDolllaro = UIView()
        springDressformDolllaro.translatesAutoresizingMaskIntoConstraints = false
        springDressformDolllaro.backgroundColor = winterFabricrollDollrilo.withAlphaComponent(0.18)
        springDressformDolllaro.layer.cornerRadius = 23
        springDressformDolllaro.layer.borderWidth = 1
        springDressformDolllaro.layer.borderColor = winterFabricrollDollrilo.withAlphaComponent(0.52).cgColor

        let springCaseDollnoro = UIImageView(image: UIImage(systemName: winterStandDollbop))
        springCaseDollnoro.translatesAutoresizingMaskIntoConstraints = false
        springCaseDollnoro.contentMode = .scaleAspectFit
        springCaseDollnoro.tintColor = winterFabricrollDollrilo
        springCaseDollnoro.preferredSymbolConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        springDressformDolllaro.addSubview(springCaseDollnoro)

        let springThemeDollyara = UILabel()
        springThemeDollyara.translatesAutoresizingMaskIntoConstraints = false
        springThemeDollyara.text = winterMemoDollvelo
        springThemeDollyara.textColor = .white
        springThemeDollyara.numberOfLines = 1
        springThemeDollyara.adjustsFontSizeToFitWidth = true
        springThemeDollyara.minimumScaleFactor = 0.82
        springThemeDollyara.font = UIFont.systemFont(ofSize: 17, weight: .bold)

        let autumnPropDollmexa = UILabel()
        autumnPropDollmexa.translatesAutoresizingMaskIntoConstraints = false
        autumnPropDollmexa.text = winterBackgroundDollpavo
        autumnPropDollmexa.textColor = UIColor(white: 1, alpha: 0.76)
        autumnPropDollmexa.numberOfLines = 0
        autumnPropDollmexa.font = UIFont.systemFont(ofSize: 13.5, weight: .regular)

        let autumnGalleryDollpoxa = UIStackView(arrangedSubviews: [springThemeDollyara, autumnPropDollmexa])
        autumnGalleryDollpoxa.translatesAutoresizingMaskIntoConstraints = false
        autumnGalleryDollpoxa.axis = .vertical
        autumnGalleryDollpoxa.alignment = .fill
        autumnGalleryDollpoxa.spacing = 6

        addSubview(springDressformDolllaro)
        addSubview(autumnGalleryDollpoxa)
        NSLayoutConstraint.activate([
            springDressformDolllaro.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            springDressformDolllaro.centerYAnchor.constraint(equalTo: centerYAnchor),
            springDressformDolllaro.widthAnchor.constraint(equalToConstant: 46),
            springDressformDolllaro.heightAnchor.constraint(equalTo: springDressformDolllaro.widthAnchor),
            springCaseDollnoro.centerXAnchor.constraint(equalTo: springDressformDolllaro.centerXAnchor),
            springCaseDollnoro.centerYAnchor.constraint(equalTo: springDressformDolllaro.centerYAnchor),
            springCaseDollnoro.widthAnchor.constraint(equalToConstant: 24),
            springCaseDollnoro.heightAnchor.constraint(equalTo: springCaseDollnoro.widthAnchor),
            autumnGalleryDollpoxa.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            autumnGalleryDollpoxa.leadingAnchor.constraint(equalTo: springDressformDolllaro.trailingAnchor, constant: 14),
            autumnGalleryDollpoxa.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            autumnGalleryDollpoxa.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18),
            heightAnchor.constraint(greaterThanOrEqualToConstant: 88)
        ])
    }

    required init?(coder: NSCoder) { nil }

    override func layoutSubviews() {
        super.layoutSubviews()
        springRuffleDolltavo.frame = bounds
    }
}
