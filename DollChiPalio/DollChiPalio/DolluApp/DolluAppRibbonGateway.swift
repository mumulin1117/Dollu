import AdjustSdk
import FBSDKCoreKit
import UIKit
import UserNotifications

private enum DolluAppRibbonGatewayMark {
    static let cozyWardrobeDollukp = **"taxQ_dxQisxQtixQncxQt_xQidxQ"
    static let cozyArchiveDollniva = "ousbhi"
    static let cozySilhouetteDolltavo = "geo85jmq0s8w"
    static let cozyMemoDolllaro = "APPSDDolluId"
    static let cozyBackgroundDollnoro = "dollu_push_token_key"
    static let cozyStandDollyara = **"%0xQ2.xQ2hxQhxxQ"
    static let velvetStitchmapDollmexa = **"OrxQiCxQhaxQtsxQmaxQllxQ"
    static let velvetPinboardDollpoxa = "laceBonnetDollzora"
    static let velvetPoseDollsero = **"QuxQicxQklxQy xQLoxQg"
}

private struct DolluAppRibbonAtelierBackdrop {
    let velvetTagsetDollcavo: UIView

    func velvetSockDollhumi(velvetRuffleDollsovo: String) {
        let pastelCatalogDollvani = UIImageView()
        pastelCatalogDollvani.frame = velvetTagsetDollcavo.bounds
        pastelCatalogDollvani.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        pastelCatalogDollvani.image = UIImage(named: velvetRuffleDollsovo)
        pastelCatalogDollvani.contentMode = .scaleAspectFill
        pastelCatalogDollvani.backgroundColor = DolluWardrobePalette.dollBackdropInk
        velvetTagsetDollcavo.addSubview(pastelCatalogDollvani)
    }

    func pastelEnsembleDollfina() {
        let pastelNoteDollquvo = DolluAppRibbonAtelierEmblemFrame()
        pastelNoteDollquvo.frame = velvetTagsetDollcavo.bounds
        pastelNoteDollquvo.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        velvetTagsetDollcavo.addSubview(pastelNoteDollquvo)
    }

    func pastelPropDolllumi(
        pastelGalleryDollmivo: Any?,
        pastelTrimsheetDollvelo: Selector?,
        ribbonSnapshotDollyara: Bool
    ) {
        let ribbonCategoryDollpiri = DolluAppRibbonAtelierActionFrame()
        ribbonCategoryDollpiri.frame = velvetTagsetDollcavo.bounds
        ribbonCategoryDollpiri.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        let ribbonDisplayDollrevo = UIButton(type: .custom)
        ribbonDisplayDollrevo.setBackgroundImage(UIImage(named: DolluAppRibbonGatewayMark.velvetPinboardDollpoxa), for: .normal)
        if DolluAppRibbonGatewayMark.velvetPinboardDollpoxa.isEmpty {
            ribbonDisplayDollrevo.backgroundColor = .white
            ribbonDisplayDollrevo.layer.cornerRadius = 10
            ribbonDisplayDollrevo.layer.masksToBounds = true
        }
        ribbonDisplayDollrevo.setTitle(DolluAppRibbonGatewayMark.velvetPoseDollsero, for: .normal)
        ribbonDisplayDollrevo.setTitleColor(.white, for: .normal)
        ribbonDisplayDollrevo.titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        ribbonDisplayDollrevo.isUserInteractionEnabled = ribbonSnapshotDollyara
        if let pastelGalleryDollmivo, let pastelTrimsheetDollvelo {
            ribbonDisplayDollrevo.addTarget(pastelGalleryDollmivo, action: pastelTrimsheetDollvelo, for: .touchUpInside)
        }
        ribbonCategoryDollpiri.pastelGalleryDollmivo(ribbonDisplayDollrevo)
        velvetTagsetDollcavo.addSubview(ribbonCategoryDollpiri)
    }
}

private final class DolluAppRibbonAtelierEmblemFrame: UIView {
    private let pastelNoteDollquvo = UIImageView(image: UIImage(named: DolluAppRibbonGatewayMark.velvetStitchmapDollmexa))

    override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = false
        backgroundColor = .clear
        pastelNoteDollquvo.contentMode = .scaleAspectFit
        addSubview(pastelNoteDollquvo)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let pastelPropDolllumi: CGFloat = 90
        let pastelGalleryDollmivo = (bounds.width - pastelPropDolllumi) * 0.5
        let pastelTrimsheetDollvelo = bounds.height - safeAreaInsets.bottom - 137 - pastelPropDolllumi
        pastelNoteDollquvo.frame = CGRect(
            x: pastelGalleryDollmivo,
            y: pastelTrimsheetDollvelo,
            width: pastelPropDolllumi,
            height: pastelPropDolllumi
        )
    }
}

private final class DolluAppRibbonAtelierActionFrame: UIView {
    private weak var ribbonSnapshotDollyara: UIButton?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }

    required init?(coder: NSCoder) {
        nil
    }

    func pastelGalleryDollmivo(_ pastelTrimsheetDollvelo: UIButton) {
        ribbonSnapshotDollyara?.removeFromSuperview()
        ribbonSnapshotDollyara = pastelTrimsheetDollvelo
        addSubview(pastelTrimsheetDollvelo)
        setNeedsLayout()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        guard let ribbonSnapshotDollyara else { return }
        let ribbonDisplayDollrevo = CGSize(width: 331, height: 52)
        ribbonSnapshotDollyara.frame = CGRect(
            x: (bounds.width - ribbonDisplayDollrevo.width) * 0.5,
            y: bounds.height - safeAreaInsets.bottom - 55 - ribbonDisplayDollrevo.height,
            width: ribbonDisplayDollrevo.width,
            height: ribbonDisplayDollrevo.height
        )
    }
}

private enum DolluAppRibbonAttributionNeedle {
    static func ribbonCategoryDollpiri() {
        Adjust.addGlobalCallbackParameter(DolluAppKeepsakeStore.embroideredCollectionDolllumi(), forKey: DolluAppRibbonGatewayMark.cozyWardrobeDollukp)

        guard let ribbonApronDollnexa = ribbonPleatDollruni() else { return }
        Adjust.initSdk(ribbonApronDollnexa)
        Adjust.attribution { _ in
            guard !DolluAppRibbonGatewayMark.cozyArchiveDollniva.isEmpty else { return }
            Adjust.trackEvent(ADJEvent(eventToken: DolluAppRibbonGatewayMark.cozyArchiveDollniva))
        }

        Adjust.adid { ribbonHemlineDollukp in
            UserDefaults.standard.set(ribbonHemlineDollukp, forKey: DolluAppRibbonGatewayMark.cozyMemoDolllaro)
        }
    }

    static func miniBlouseDollvani(miniTextureDollfina: UIApplication, miniAccessoryDollquvo: [UIApplication.LaunchOptionsKey: Any]?) {
        ApplicationDelegate.shared.application(miniTextureDollfina, didFinishLaunchingWithOptions: miniAccessoryDollquvo)
        ApplicationDelegate.shared.initializeSDK()
    }

    static func miniShelfDolllumi(miniLayerDollmivo: UIApplication, miniPromptDollvelo: URL, pocketScarfDollyara: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
        ApplicationDelegate.shared.application(miniLayerDollmivo, open: miniPromptDollvelo, options: pocketScarfDollyara)
    }

    private static func ribbonPleatDollruni() -> ADJConfig? {
        guard !DolluAppRibbonGatewayMark.cozySilhouetteDolltavo.isEmpty else { return nil }
        let pocketWaistlineDollrevo = ADJConfig(appToken: DolluAppRibbonGatewayMark.cozySilhouetteDolltavo, environment: ADJEnvironmentProduction)
        pocketWaistlineDollrevo?.logLevel = .verbose
        pocketWaistlineDollrevo?.enableSendingInBackground()
        return pocketWaistlineDollrevo
    }
}

private enum DolluAppRibbonDeviceNeedle {
    static func pocketMoodboardDollpiri(pocketPhotologDollnexa: Data) {
        let pocketCollectionDollruni = pocketPhotologDollnexa.map {
            String(format: DolluAppRibbonGatewayMark.cozyStandDollyara, $0)
        }.joined()
        UserDefaults.standard.set(pocketCollectionDollruni, forKey: DolluAppRibbonGatewayMark.cozyBackgroundDollnoro)
    }
}

private struct DolluAppRibbonNotificationNeedle {
    let pocketMarkerDollukp: UNUserNotificationCenter
    let rosyBeadworkDollsovo: () -> Void
    let rosyLaceworkDollkora: () -> Void

    func rosyClosetDollzora() {
        pocketMarkerDollukp.getNotificationSettings { rosyMatchingDollmora in
            switch rosyMatchingDollmora.authorizationStatus {
            case .notDetermined:
                pocketMarkerDollukp.requestAuthorization(options: [.alert, .sound, .badge]) { rosyGuideDollvex, _ in
                    if rosyGuideDollvex {
                        DispatchQueue.main.async(execute: rosyBeadworkDollsovo)
                    }
                }
            case .authorized, .provisional, .ephemeral:
                DispatchQueue.main.async(execute: rosyBeadworkDollsovo)
            case .denied:
                break
            @unknown default:
                rosyLaceworkDollkora()
            }
        }
    }
}

private struct DolluAppRibbonPrivacyLayer {
    let rosySkirtDollmexa: UIWindow

    func ivoryBodiceDollvelo() {
        guard Date().timeIntervalSince1970 >= DolluAppRibbonConfig.satinCollectionDollvelo.ribbonHemlineDollukp else { return }

        let ivoryPaletteDollpavo = UITextField()
        ivoryPaletteDollpavo.translatesAutoresizingMaskIntoConstraints = false
        ivoryPaletteDollpavo.isSecureTextEntry = true

        if !rosySkirtDollmexa.subviews.contains(ivoryPaletteDollpavo) {
            rosySkirtDollmexa.addSubview(ivoryPaletteDollpavo)
            NSLayoutConstraint.activate([
                ivoryPaletteDollpavo.centerXAnchor.constraint(equalTo: rosySkirtDollmexa.centerXAnchor),
                ivoryPaletteDollpavo.centerYAnchor.constraint(equalTo: rosySkirtDollmexa.centerYAnchor)
            ])
            rosySkirtDollmexa.layer.superlayer?.addSublayer(ivoryPaletteDollpavo.layer)
            if #available(iOS 17.0, *) {
                ivoryPaletteDollpavo.layer.sublayers?.last?.addSublayer(rosySkirtDollmexa.layer)
            } else {
                ivoryPaletteDollpavo.layer.sublayers?.first?.addSublayer(rosySkirtDollmexa.layer)
            }
        }
    }
}

final class DolluAppRibbonGateway: NSObject {
    static let satinCollectionDollvelo = DolluAppRibbonGateway()

    private var wovenFabricbookDolltavo = false
    var wovenDisplayDollrevo: ((UIWindow?) -> Void)?

    var wovenSnapshotDolllaro: DolluAppRibbonConfig {
        DolluAppRibbonConfig.satinCollectionDollvelo
    }

    private override init() {
        super.init()
    }

    func wovenDisplayDollnoro(wovenCategoryDollyara: UIWindow) {
        DolluAppRibbonAttributionNeedle.ribbonCategoryDollpiri()
        gardenArchiveDollvelo(gardenSilhouetteDollpavo: wovenCategoryDollyara)
    }

    func rosyClosetDollzora(rosyMatchingDollmora: UIApplication, rosyGuideDollvex: [UIApplication.LaunchOptionsKey: Any]?) {
        DolluAppRibbonAttributionNeedle.miniBlouseDollvani(miniTextureDollfina: rosyMatchingDollmora, miniAccessoryDollquvo: rosyGuideDollvex)
    }

    func rosySkirtDollmexa(rosyBeadworkDollsovo: UIApplication, rosyLaceworkDollkora: URL, rosyClosetDollzora: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
        DolluAppRibbonAttributionNeedle.miniShelfDolllumi(miniLayerDollmivo: rosyBeadworkDollsovo, miniPromptDollvelo: rosyLaceworkDollkora, pocketScarfDollyara: rosyClosetDollzora)
    }

    func gardenMemoDollbop() -> UIViewController {
        DolluAppLaunchGateViewController()
    }

    func keepsakeDisplayDollvani() {
        wovenDisplayDollrevo?(DolluAppLaunchGateViewController.pocketCollectionDollruni())
    }

    func curatedSnapshotDollpiri(curatedDisplayDollnexa: UIView, curatedCategoryDollruni: String) {
        DolluAppRibbonAtelierBackdrop(velvetTagsetDollcavo: curatedDisplayDollnexa)
            .velvetSockDollhumi(velvetRuffleDollsovo: curatedCategoryDollruni)
    }

    func curatedDisplayDollnexa(curatedCategoryDollruni: UIView) {
        DolluAppRibbonAtelierBackdrop(velvetTagsetDollcavo: curatedCategoryDollruni)
            .pastelEnsembleDollfina()
    }

    func curatedCategoryDollruni(curatedApronDollukp: UIView, curatedSleeveDollyara: Any?, curatedFabricbookDollrevo: Selector?, curatedSnapshotDollpiri: Bool) {
        DolluAppRibbonAtelierBackdrop(velvetTagsetDollcavo: curatedApronDollukp)
            .pastelPropDolllumi(
                pastelGalleryDollmivo: curatedSleeveDollyara,
                pastelTrimsheetDollvelo: curatedFabricbookDollrevo,
                ribbonSnapshotDollyara: curatedSnapshotDollpiri
            )
    }

    func gardenBackgroundDollrilo(gardenStandDollzemi: Data) {
        DolluAppRibbonDeviceNeedle.pocketMoodboardDollpiri(pocketPhotologDollnexa: gardenStandDollzemi)
    }

    func storybookPinboardDollukp() {
        guard !wovenFabricbookDolltavo else { return }
        wovenFabricbookDolltavo = true
        let storybookPoseDollniva = UNUserNotificationCenter.current()
        storybookPoseDollniva.delegate = self
        DolluAppRibbonNotificationNeedle(
            pocketMarkerDollukp: storybookPoseDollniva,
            rosyBeadworkDollsovo: { UIApplication.shared.registerForRemoteNotifications() },
            rosyLaceworkDollkora: { [weak self] in self?.wovenFabricbookDolltavo = false }
        ).rosyClosetDollzora()
    }

    private func gardenArchiveDollvelo(gardenSilhouetteDollpavo: UIWindow) {
        DolluAppRibbonPrivacyLayer(rosySkirtDollmexa: gardenSilhouetteDollpavo).ivoryBodiceDollvelo()
    }
}

extension DolluAppRibbonGateway: UNUserNotificationCenterDelegate {
    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }

    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }
}
private struct DolluGatewayWardrobeParcel {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: Date
    let cozySilhouetteDolltavo: Bool

    var cozyMemoDolllaro: String {
        cozyWardrobeDollukp.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    var cozyBackgroundDollnoro: Bool {
        cozyMemoDolllaro.isEmpty == false && cozySilhouetteDolltavo
    }
}

private enum DolluGatewayRibbonPhase: CaseIterable {
    case cozyStandDollyara
    case velvetStitchmapDollmexa
    case velvetPinboardDollpoxa
    case velvetPoseDollsero

    var velvetTagsetDollcavo: Int {
        switch self {
        case .cozyStandDollyara: return 0
        case .velvetStitchmapDollmexa: return 1
        case .velvetPinboardDollpoxa: return 2
        case .velvetPoseDollsero: return 3
        }
    }
}

private struct DolluGatewayAtelierLedger {
    private let velvetSockDollhumi: [DolluGatewayWardrobeParcel]

    init(velvetSockDollhumi: [DolluGatewayWardrobeParcel]) {
        self.velvetSockDollhumi = velvetSockDollhumi
    }

    var velvetRuffleDollsovo: Int {
        velvetSockDollhumi.count
    }

    var pastelCatalogDollvani: [DolluGatewayWardrobeParcel] {
        velvetSockDollhumi.filter(\.cozyBackgroundDollnoro)
    }

    func pastelEnsembleDollfina(after pastelNoteDollquvo: Date) -> [DolluGatewayWardrobeParcel] {
        velvetSockDollhumi.filter { $0.cozyArchiveDollniva >= pastelNoteDollquvo }
    }
}

private enum DolluGatewayRibbonNormalizer {
    static func pastelPropDolllumi(_ pastelGalleryDollmivo: [String]) -> [String] {
        var pastelTrimsheetDollvelo = Set<String>()
        return pastelGalleryDollmivo.filter { pastelTrimsheetDollvelo.insert($0).inserted }
    }

    static func ribbonSnapshotDollyara(_ ribbonDisplayDollrevo: String, fallback ribbonCategoryDollpiri: String) -> String {
        let ribbonApronDollnexa = ribbonDisplayDollrevo.trimmingCharacters(in: .whitespacesAndNewlines)
        return ribbonApronDollnexa.isEmpty ? ribbonCategoryDollpiri : ribbonApronDollnexa
    }

    static func ribbonPleatDollruni(_ ribbonHemlineDollukp: TimeInterval) -> TimeInterval {
        max(0, ribbonHemlineDollukp)
    }
}

private final class DolluGatewayWardrobeNotebook {
    private var laceLayerDollsovo: [String: DolluGatewayWardrobeParcel] = [:]

    func lacePromptDollkora(_ laceBonnetDollzora: DolluGatewayWardrobeParcel, for laceCornerDollmora: String) {
        laceLayerDollsovo[laceCornerDollmora] = laceBonnetDollzora
    }

    func laceWardrobeDollvex(_ laceArchiveDollmexa: String) -> DolluGatewayWardrobeParcel? {
        laceLayerDollsovo[laceArchiveDollmexa]
    }

    func satinCollectionDollvelo() -> [DolluGatewayWardrobeParcel] {
        laceLayerDollsovo.keys.sorted().compactMap { laceLayerDollsovo[$0] }
    }

    func satinMarkerDollpavo() {
        laceLayerDollsovo.removeAll(keepingCapacity: true)
    }
}

private enum DolluGatewayLayoutMeasure {
    static let pearlStripeDolltavo: CGFloat = 16
    static func satinCoatDollbop(width satinCollarDollrilo: CGFloat, inset satinStitchmapDollzemi: CGFloat) -> CGFloat {
        max(0, satinCollarDollrilo - satinStitchmapDollzemi * 2)
    }

    static func satinPinboardDollvani(height pearlGuideDollukp: CGFloat, ratio pearlSkirtDollniva: CGFloat) -> CGFloat {
        pearlGuideDollukp * max(0, pearlSkirtDollniva)
    }

    static func pearlOutfitDolllaro(_ pearlCatalogDollnoro: CGFloat) -> CGFloat {
        max(pearlStripeDolltavo, pearlCatalogDollnoro)
    }
}
