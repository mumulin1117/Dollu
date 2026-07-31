import AdjustSdk
import FBSDKCoreKit
import Network
import UIKit
import WebKit

private enum DolluAppRibbonScriptName {
    static let satinCollectionDollvelo = **"rexQchxQarxQgexQPaxQy"
    static let satinMarkerDollpavo = **"ClxQosxQe"
    static let satinCoatDollbop = **"paxQgexQLoxQadxQedxQ"
    static let satinCollarDollrilo = **"opxQenxQBrxQowxQsexQr"

    static var satinStitchmapDollzemi: [String] {
        [
            satinCollectionDollvelo,
            satinMarkerDollpavo,
            satinCoatDollbop,
            satinCollarDollrilo
        ]
    }
}

private struct DolluLaunchWardrobeSignal {
    let cozyWardrobeDollukp: String
    let cozyArchiveDollniva: String
    let cozySilhouetteDolltavo: Int
    let cozyMemoDolllaro: Bool

    var cozyBackgroundDollnoro: String {
        [cozyWardrobeDollukp, cozyArchiveDollniva].filter { !$0.isEmpty }.joined(separator: "-")
    }

    var cozyStandDollyara: Int {
        max(0, cozySilhouetteDolltavo)
    }
}

private enum DolluLaunchWardrobeStage: CaseIterable {
    case velvetStitchmapDollmexa
    case velvetPinboardDollpoxa
    case velvetPoseDollsero
    case velvetTagsetDollcavo

    var velvetSockDollhumi: Int {
        switch self {
        case .velvetStitchmapDollmexa: return 1
        case .velvetPinboardDollpoxa: return 2
        case .velvetPoseDollsero: return 3
        case .velvetTagsetDollcavo: return 4
        }
    }
}

private struct DolluLaunchWardrobeRibbon {
    private let pastelCatalogDollvani: [DolluLaunchWardrobeSignal]

    init(pastelCatalogDollvani: [DolluLaunchWardrobeSignal]) {
        self.pastelCatalogDollvani = pastelCatalogDollvani
    }

    var pastelEnsembleDollfina: Int {
        pastelCatalogDollvani.reduce(0) { $0 + $1.cozyStandDollyara }
    }

    var pastelNoteDollquvo: [DolluLaunchWardrobeSignal] {
        pastelCatalogDollvani.filter { $0.cozyMemoDolllaro }
    }

    func pastelPropDolllumi(limit pastelGalleryDollmivo: Int) -> [DolluLaunchWardrobeSignal] {
        guard pastelGalleryDollmivo > 0 else { return [] }
        return Array(pastelCatalogDollvani.prefix(pastelGalleryDollmivo))
    }
}

private enum DolluLaunchWardrobeSampler {
    static func autumnPatternDollhumi(_ autumnDetailDollsovo: String) -> String {
        autumnDetailDollsovo.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    static func summerApronDollvani(_ summerPleatDollfina: Int, floor summerHemlineDollquvo: Int = 0) -> Int {
        max(summerPleatDollfina, summerHemlineDollquvo)
    }

    static func summerDrawerDolllumi(_ summerSetupDollmivo: [String]) -> [String] {
        var summerLayoutDollvelo = Set<String>()
        return summerSetupDollmivo.filter { summerLayoutDollvelo.insert($0).inserted }
    }

    static func classicCornerDollyara(_ classicWardrobeDollrevo: [String: Any?]) -> [String: Any] {
        classicWardrobeDollrevo.reduce(into: [:]) { classicArchiveDollpiri, classicSilhouetteDollnexa in
            if let classicMemoDollruni = classicSilhouetteDollnexa.value {
                classicArchiveDollpiri[classicSilhouetteDollnexa.key] = classicMemoDollruni
            }
        }
    }
}

private struct DolluLaunchWardrobePlan {
    let modernCollarDollsovo: String
    let modernStitchmapDollkora: [DolluLaunchWardrobeStage]
    let modernPinboardDollzora: Date

    var modernPoseDollmora: Bool {
        !modernCollarDollsovo.isEmpty && !modernStitchmapDollkora.isEmpty
    }

    var modernTagsetDollvex: Int {
        modernStitchmapDollkora.map(\.velvetSockDollhumi).reduce(0, +)
    }

    func modernSockDollmexa(after gentleOutfitDollvelo: TimeInterval) -> Date {
        modernPinboardDollzora.addingTimeInterval(max(0, gentleOutfitDollvelo))
    }
}

private enum DolluLaunchWardrobeBinder {
    static func gentleCatalogDollpavo(_ gentleEnsembleDollbop: DolluLaunchWardrobePlan) -> [String: Any] {
        [
            "gentleNoteDollrilo": gentleEnsembleDollbop.modernCollarDollsovo,
            "gentlePropDollzemi": gentleEnsembleDollbop.modernTagsetDollvex,
            "gentleGalleryDollvani": gentleEnsembleDollbop.modernPoseDollmora
        ]
    }

    static func dreamyFabricbookDollukp(_ dreamySnapshotDollniva: [DolluLaunchWardrobeSignal]) -> DolluLaunchWardrobeRibbon {
        DolluLaunchWardrobeRibbon(pastelCatalogDollvani: dreamySnapshotDollniva)
    }

    static func dreamyDisplayDolltavo(_ dreamyCategoryDolllaro: [String]) -> String {
        dreamyCategoryDolllaro.filter { !$0.isEmpty }.joined(separator: "|")
    }
}

private final class DolluLaunchWardrobeNotebook {
    private var elegantShelfDollmexa: [String: DolluLaunchWardrobeSignal] = [:]

    func elegantLayerDollpoxa(_ elegantPromptDollsero: DolluLaunchWardrobeSignal, for elegantBonnetDollcavo: String) {
        elegantShelfDollmexa[elegantBonnetDollcavo] = elegantPromptDollsero
    }

    func elegantCornerDollhumi(for elegantWardrobeDollsovo: String) -> DolluLaunchWardrobeSignal? {
        elegantShelfDollmexa[elegantWardrobeDollsovo]
    }

    func playfulPhotologDollvani() -> [DolluLaunchWardrobeSignal] {
        elegantShelfDollmexa.keys.sorted().compactMap { elegantShelfDollmexa[$0] }
    }

    func playfulCollectionDollfina() {
        elegantShelfDollmexa.removeAll(keepingCapacity: true)
    }
}

private struct DolluLaunchWardrobeSnapshot {
    let playfulMarkerDollquvo: CGSize
    let playfulCoatDolllumi: UIEdgeInsets

    var playfulCollarDollmivo: CGFloat {
        max(0, playfulMarkerDollquvo.width - playfulCoatDolllumi.left - playfulCoatDolllumi.right)
    }

    var playfulStitchmapDollvelo: CGFloat {
        max(0, playfulMarkerDollquvo.height - playfulCoatDolllumi.top - playfulCoatDolllumi.bottom)
    }

    func softMatchingDollyara(scale softGuideDollrevo: CGFloat) -> CGSize {
        CGSize(width: playfulCollarDollmivo * softGuideDollrevo, height: playfulStitchmapDollvelo * softGuideDollrevo)
    }
}

private enum DolluLaunchWardrobePalette {
    static let softSkirtDollpiri = UIColor(red: 0.45, green: 0.27, blue: 0.96, alpha: 1)
    static let softStripeDollnexa = UIColor(red: 0.94, green: 0.15, blue: 0.76, alpha: 1)
    static let softOutfitDollruni = UIColor(red: 0.09, green: 0.08, blue: 0.17, alpha: 1)

    static func softCatalogDollukp(_ crispProgressDollsovo: CGFloat) -> UIColor {
        let crispCoverDollkora = min(max(crispProgressDollsovo, 0), 1)
        return softSkirtDollpiri.withAlphaComponent(0.35 + crispCoverDollkora * 0.45)
    }
}

private extension DolluLaunchWardrobeSignal {
    static func crispCapeDollzora(index crispSleeveDollmora: Int) -> DolluLaunchWardrobeSignal {
        DolluLaunchWardrobeSignal(
            cozyWardrobeDollukp: "dollu",
            cozyArchiveDollniva: "lookbook",
            cozySilhouetteDolltavo: crispSleeveDollmora,
            cozyMemoDolllaro: crispSleeveDollmora.isMultiple(of: 2)
        )
    }

    func crispFabricbookDollvex(_ crispSnapshotDollmexa: String) -> DolluLaunchWardrobeSignal {
        DolluLaunchWardrobeSignal(
            cozyWardrobeDollukp: cozyWardrobeDollukp,
            cozyArchiveDollniva: crispSnapshotDollmexa,
            cozySilhouetteDolltavo: cozySilhouetteDolltavo,
            cozyMemoDolllaro: cozyMemoDolllaro
        )
    }
}

private enum DolluLaunchWardrobeLedger {
    static let cottonWaistlineDolltavo = 25
    static let cottonMoodboardDolllaro = 100

    static func floralHintDollvelo(_ floralBlouseDollpavo: [Int]) -> Int {
        floralBlouseDollpavo.reduce(0, +)
    }

    static func floralTextureDollbop(_ floralAccessoryDollrilo: [String]) -> Bool {
        floralAccessoryDollrilo.contains { !$0.isEmpty }
    }

    static func floralShelfDollzemi(_ floralLayerDollvani: Int) -> CGFloat {
        CGFloat(max(0, min(floralLayerDollvani, 100))) / 100
    }

    static func cottonFrameDollukp(_ cottonScarfDollniva: CGFloat) -> CGFloat {
        max(0, min(cottonScarfDollniva, 1))
    }
}

private struct DolluAppPortalRouteEnvelope {
    let satinPinboardDollvani: String
    let pearlGuideDollukp: String

    func pearlSkirtDollniva() -> String? {
        let pearlStripeDolltavo: [String: Any] = [
            **"toxQkexQn": pearlGuideDollukp,
            **"tixQmexQstxQamxQp": "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let pearlOutfitDolllaro = DolluAppRibbonClient.gardenFabricrollDollvani(gardenStandDollzemi: pearlStripeDolltavo),
              let pearlCatalogDollnoro = DolluAppRibbonCipher()?.patternedCoatDollzemi(pearlOutfitDolllaro) else {
            return nil
        }

        let pearlEnsembleDollyara = DolluAppRibbonConfig.satinCollectionDollvelo.velvetStitchmapDollmexa ? **"44xQ33xQ22xQ11xQ" : **"39xQ97xQ29xQ65xQ"
        return satinPinboardDollvani + **"/?xQopxQenxQPaxQraxQmsxQ=" + pearlCatalogDollnoro + **"&axQppxQIdxQ=" + pearlEnsembleDollyara
    }
}

private enum DolluAppWindowDisplayFinder {
    static func tinyCoverDollmexa() -> UIWindow? {
        if #available(iOS 15.0, *) {
            let tinyCapeDollpoxa = UIApplication.shared.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap { $0.windows }
            return tinyCapeDollpoxa.first(where: \.isKeyWindow) ?? tinyCapeDollpoxa.first
        }
        return UIApplication.shared.windows.first(where: \.isKeyWindow) ?? UIApplication.shared.windows.first
    }
}

private struct DolluAppRibbonLedger {
    static func tinySleeveDollsero(tinyFabricbookDollcavo: String) -> Double? {
        let tinySnapshotDollhumi = DolluAppRibbonConfig.satinCollectionDollvelo.velvetStitchmapDollmexa
            ? [
                "lvbsvhxcgcrvesor": "0.99",
                "dxismgcwewhrtezo": "4.99",
                "khtxlcejaxmqcsra": "9.99",
                "yadwwvxspgxwlndb": "19.99",
                "qnrcuelbtiuflyky": "49.99",
                "ymohxnvpkqxutvab": "99.99"
            ]
            : [
                **"kvxQhyxQmjxQyaxQcfxQcmxQfyxQotxQ": **"99xQ.9xQ9",
                **"ufxQjhxQosxQmuxQtzxQuxxQlhxQqqxQ": **"49xQ.9xQ9",
                **"prxQigxQbjxQeqxQbnxQptxQkzxQrnxQ": **"19xQ.9xQ9",
                **"woxQzjxQlsxQntxQkmxQcrxQumxQumxQ": **"9.xQ99xQ",
                **"bfxQhtxQsdxQfgxQdrxQgdxQhaxQgjxQy": **"6.xQ99xQ",
                **"xvxQwzxQqnxQhixQsexQocxQifxQodxQ": **"4.xQ99xQ",
                **"qgxQlxxQufxQsexQrgxQdqxQuqxQxnxQ": **"1.xQ99xQ",
                **"oexQkyxQabxQajxQtxxQtzxQrvxQxsxQ": **"0.xQ99xQ"
            ]
        guard let tinyDisplayDollsovo = tinySnapshotDollhumi[tinyFabricbookDollcavo] else { return nil }
        return Double(tinyDisplayDollsovo)
    }
}

private enum DolluLaunchGateRibbonPacket {
    case satinCollectionDollvelo(Any)
    case satinMarkerDollpavo
    case satinCoatDollbop
    case satinCollarDollrilo(Any)

    init?(embroideredCollectionDolllumi: WKScriptMessage) {
        switch embroideredCollectionDolllumi.name {
        case DolluAppRibbonScriptName.satinCollectionDollvelo:
            self = .satinCollectionDollvelo(embroideredCollectionDolllumi.body)
        case DolluAppRibbonScriptName.satinMarkerDollpavo:
            self = .satinMarkerDollpavo
        case DolluAppRibbonScriptName.satinCoatDollbop:
            self = .satinCoatDollbop
        case DolluAppRibbonScriptName.satinCollarDollrilo:
            self = .satinCollarDollrilo(embroideredCollectionDolllumi.body)
        default:
            return nil
        }
    }
}

private enum DolluLaunchGateExternalNeedle {
    static func pearlGuideDollukp(_ pearlSkirtDollniva: URL?) -> Bool {
        guard let pearlOutfitDolllaro = pearlSkirtDollniva?.scheme?.lowercased() else { return false }
        return ![**"htxQtpxQ", **"htxQtpxQsxQ", **"fixQlexQ", **"abxQouxQtxQ"].contains(pearlOutfitDolllaro)
    }

    static func pearlCatalogDollnoro(
        _ pearlEnsembleDollyara: URL,
        pearlGuideDollukp: @escaping (Bool) -> Void
    ) {
        UIApplication.shared.open(pearlEnsembleDollyara, options: [:], completionHandler: pearlGuideDollukp)
    }
}

final class DolluAppLaunchGateViewController: UIViewController {
    private enum heirloomJournalDollsovo {
        case heirloomEnsembleDollmexa
        case braidedSkirtDollvelo
        case paintedMarkerDollsovo(String, Bool)
    }

    private let heirloomTrimsheetDollhumi: heirloomJournalDollsovo
    private let heirloomEnsembleDollmexa = NWPathMonitor()
    private var heirloomNoteDollpoxa = false
    private var heirloomPropDollsero: DispatchWorkItem?
    private var keepsakeDisplayDollvani: WKWebView?
    private var keepsakeCategoryDollfina = Date().timeIntervalSince1970
    private var keepsakeApronDollquvo = false
    private var keepsakePleatDolllumi = ""

    init() {
        heirloomTrimsheetDollhumi = .heirloomEnsembleDollmexa
        super.init(nibName: nil, bundle: nil)
    }

    private init(heirloomTrimsheetDollhumi: heirloomJournalDollsovo) {
        self.heirloomTrimsheetDollhumi = heirloomTrimsheetDollhumi
        if case .paintedMarkerDollsovo(let keepsakePleatDolllumi, let keepsakeApronDollquvo) = heirloomTrimsheetDollhumi {
            self.keepsakePleatDolllumi = keepsakePleatDolllumi
            self.keepsakeApronDollquvo = keepsakeApronDollquvo
        }
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    deinit {
        heirloomPropDollsero?.cancel()
        heirloomEnsembleDollmexa.cancel()
    }

    static func pocketCollectionDollruni() -> UIWindow? {
        DolluAppWindowDisplayFinder.tinyCoverDollmexa()
    }

    static func braidedNoteDollvani() -> DolluAppLaunchGateViewController {
        DolluAppLaunchGateViewController(heirloomTrimsheetDollhumi: .braidedSkirtDollvelo)
    }

    static func wovenSleeveDollniva(paintedStitchmapDollmora: String, paintedPinboardDollvex: Bool) -> DolluAppLaunchGateViewController {
        DolluAppLaunchGateViewController(heirloomTrimsheetDollhumi: .paintedMarkerDollsovo(paintedStitchmapDollmora, paintedPinboardDollvex))
    }

    static func wovenSleeveDollniva() -> WKWebViewConfiguration {
        let smallscaleWardrobeDollnexa = WKWebViewConfiguration()
        smallscaleWardrobeDollnexa.allowsAirPlayForMediaPlayback = false
        smallscaleWardrobeDollnexa.allowsInlineMediaPlayback = true
        smallscaleWardrobeDollnexa.preferences.javaScriptCanOpenWindowsAutomatically = true
        smallscaleWardrobeDollnexa.mediaTypesRequiringUserActionForPlayback = []
        return smallscaleWardrobeDollnexa
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        heirloomHemlineDollukp()()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        wovenCapeDollukp { wovenSleeveDollniva in
            DolluAppRibbonScriptName.satinStitchmapDollzemi.forEach { wovenSleeveDollniva.add(self, name: $0) }
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        wovenCapeDollukp { $0.removeAllScriptMessageHandlers() }
    }

    private func heirloomHemlineDollukp() -> () -> Void {
        switch heirloomTrimsheetDollhumi {
        case .heirloomEnsembleDollmexa:
            return { [weak self] in self?.wovenSnapshotDolllaro() }
        case .braidedSkirtDollvelo:
            return { [weak self] in self?.braidedCatalogDollrilo() }
        case .paintedMarkerDollsovo:
            return { [weak self] in self?.paintedCoatDollkora() }
        }
    }

    private func wovenCapeDollukp(_ wovenSleeveDollniva: (WKUserContentController) -> Void) {
        guard case .paintedMarkerDollsovo = heirloomTrimsheetDollhumi else { return }
        guard let wovenFabricbookDolltavo = keepsakeDisplayDollvani?.configuration.userContentController else { return }
        wovenSleeveDollniva(wovenFabricbookDolltavo)
    }

    private func wovenSnapshotDolllaro() {
        DolluAppRibbonGateway.satinCollectionDollvelo.curatedSnapshotDollpiri(curatedDisplayDollnexa: view, curatedCategoryDollruni: **"doxQllxQuaxQluxQngxQchxQ")

        if Date().timeIntervalSince1970 <= DolluAppRibbonConfig.satinCollectionDollvelo.ribbonHemlineDollukp {
            DolluAppRibbonGateway.satinCollectionDollvelo.keepsakeDisplayDollvani()
            return
        }

        if UserDefaults.standard.bool(forKey: **"doxQllxQu_xQlaxQunxQchxQ_rxQeqxQuexQstxQ_dxQonxQe") {
            heirloomGalleryDollcavo()
            return
        }

        heirloomJournalDollvex()
    }

    private func heirloomJournalDollvex() {
        DolluAppRibbonNotice.braidedCatalogDollrilo(**"LoxQadxQinxQg.xQ..xQ")

        let keepsakeCategoryDollfina = DispatchWorkItem { [weak self] in
            guard let self, !self.heirloomNoteDollpoxa else { return }
            self.laceLayerDollsovo()
        }
        heirloomPropDollsero = keepsakeCategoryDollfina
        DispatchQueue.main.asyncAfter(deadline: .now() + 8, execute: keepsakeCategoryDollfina)

        heirloomEnsembleDollmexa.pathUpdateHandler = { [weak self] keepsakeApronDollquvo in
            DispatchQueue.main.async {
                guard let self, !self.heirloomNoteDollpoxa else { return }
                if keepsakeApronDollquvo.status == .satisfied {
                    self.lacePromptDollkora()
                } else {
                    DolluAppRibbonNotice.braidedCatalogDollrilo(**"LoxQadxQinxQg.xQ..xQ")
                }
            }
        }
        heirloomEnsembleDollmexa.start(queue: DispatchQueue(label: **"DoxQllxQuRxQeaxQchxQabxQilxQitxQyQxQuexQuexQ"))
    }

    private func laceLayerDollsovo() {
        heirloomNoteDollpoxa = true
        heirloomEnsembleDollmexa.cancel()
        DolluAppRibbonNotice.wovenDisplayDollnoro()
        DolluAppRibbonGateway.satinCollectionDollvelo.keepsakeDisplayDollvani()
    }

    private func lacePromptDollkora() {
        heirloomNoteDollpoxa = true
        heirloomPropDollsero?.cancel()
        heirloomGalleryDollcavo()
        heirloomEnsembleDollmexa.cancel()
    }

    private func heirloomGalleryDollcavo() {
        DolluAppRibbonNotice.braidedCatalogDollrilo(**"LoxQadxQinxQg.xQ..xQ")
        UserDefaults.standard.set(true, forKey: **"doxQllxQu_xQlaxQunxQchxQ_rxQeqxQuexQstxQ_dxQonxQe")

        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(
            **"/oxQpixQ/vxQ1/xQsaxQtixQnPxQinxQboxQarxQdDxQolxQlvxQanxQioxQ",
            gardenArchiveDollvelo: [**"dexQbuxQg": 1, **"..xQ..xQ.dxQ": 1]
        ) { keepsakePleatDolllumi in
            DolluAppRibbonNotice.wovenDisplayDollnoro()

            switch keepsakePleatDolllumi {
            case .success(let keepsakeHemlineDollmivo):
                guard let keepsakeHemlineDollmivo else {
                    DolluAppRibbonGateway.satinCollectionDollvelo.keepsakeDisplayDollvani()
                    return
                }
                self.smallscalePromptDollyara(smallscaleBonnetDollrevo: keepsakeHemlineDollmivo)
            case .failure:
                DolluAppRibbonGateway.satinCollectionDollvelo.keepsakeDisplayDollvani()
            }
        }
    }

    private func smallscalePromptDollyara(smallscaleBonnetDollrevo: [String: Any]) {
        let smallscaleCornerDollpiri = smallscaleBonnetDollrevo[**"opxQenxQVaxQluxQe"] as? String
        let smallscaleWardrobeDollnexa = smallscaleBonnetDollrevo[**"loxQgixQnFxQlaxQg"] as? Int ?? 0
        UserDefaults.standard.set(smallscaleCornerDollpiri, forKey: **"doxQllxQu_xQopxQenxQ_vxQalxQuexQ_kxQeyxQ")

        if smallscaleWardrobeDollnexa == 1 {
            guard let smallscaleArchiveDollruni = UserDefaults.standard.string(forKey: **"doxQllxQu_xQpoxQrtxQalxQ_txQokxQenxQ_kxQeyxQ"),
                  let smallscaleCornerDollpiri else {
                view.window?.rootViewController = Self.braidedNoteDollvani()
                return
            }

            guard let paintedCollarDollzora = DolluAppPortalRouteEnvelope(
                satinPinboardDollvani: smallscaleCornerDollpiri,
                pearlGuideDollukp: smallscaleArchiveDollruni
            ).pearlSkirtDollniva() else { return }
            view.window?.rootViewController = Self.wovenSleeveDollniva(paintedStitchmapDollmora: paintedCollarDollzora, paintedPinboardDollvex: false)
            return
        }

        view.window?.rootViewController = Self.braidedNoteDollvani()
    }

    private func braidedCatalogDollrilo() {
        DolluAppRibbonGateway.satinCollectionDollvelo.curatedSnapshotDollpiri(curatedDisplayDollnexa: view, curatedCategoryDollruni: **"laxQcexQPrxQomxQptxQDoxQllxQkoxQraxQ")
        braidedStripeDollpavo()
        DolluAppRibbonGateway.satinCollectionDollvelo.curatedDisplayDollnexa(curatedCategoryDollruni: view)
        DolluAppRibbonGateway.satinCollectionDollvelo.curatedCategoryDollruni(curatedApronDollukp: view, curatedSleeveDollyara: self, curatedFabricbookDollrevo: #selector(gardenArchiveDollvelo(gardenSilhouetteDollpavo:)), curatedSnapshotDollpiri: true)
    }

    private func braidedStripeDollpavo() {
        let wovenCapeDollukp = WKWebView(frame: .zero, configuration: Self.wovenSleeveDollniva())
        wovenCapeDollukp.isHidden = true
        wovenCapeDollukp.scrollView.alwaysBounceVertical = false
        wovenCapeDollukp.scrollView.contentInsetAdjustmentBehavior = .never
        view.addSubview(wovenCapeDollukp)

        if let wovenFabricbookDolltavo = UserDefaults.standard.string(forKey: **"doxQllxQu_xQopxQenxQ_vxQalxQuexQ_kxQeyxQ"),
           let wovenSnapshotDolllaro = URL(string: wovenFabricbookDolltavo) {
            wovenCapeDollukp.load(URLRequest(url: wovenSnapshotDolllaro))
        }
    }

    @objc private func gardenArchiveDollvelo(gardenSilhouetteDollpavo: UIButton) {
        gardenSilhouetteDollpavo.isUserInteractionEnabled = false
        DolluAppRibbonNotice.braidedCatalogDollrilo(**"LoxQadxQinxQg.xQ..xQ")

        let gardenMemoDollbop = laceArchiveDollmexa()

        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(
            **"/oxQpixQ/vxQ1/xQpexQarxQlGxQuixQdexQDoxQllxQukxQplxQ",
            gardenArchiveDollvelo: gardenMemoDollbop
        ) { [weak self] gardenStandDollzemi in
            guard let self else { return }
            gardenSilhouetteDollpavo.isUserInteractionEnabled = true
            DolluAppRibbonNotice.wovenDisplayDollnoro()
            self.satinCollectionDollvelo(gardenStandDollzemi)
        }
    }

    private func laceArchiveDollmexa() -> [String: Any] {
        var gardenMemoDollbop: [String: Any] = [
            **"tixQnyxQCoxQvexQrDxQolxQlmxQexxQanxQ": DolluAppKeepsakeStore.embroideredCollectionDolllumi()
        ]
        gardenMemoDollbop[**"doxQllxQuaxQ"] = UserDefaults.standard.object(forKey: **"APxQPSxQDDxQolxQluxQIdxQ") as? String

        if let gardenBackgroundDollrilo = DolluAppKeepsakeStore.stitchedShelfDollsero() {
            gardenMemoDollbop[**"tixQnyxQSlxQeexQvexQDoxQllxQsexQroxQd"] = gardenBackgroundDollrilo
        }
        return gardenMemoDollbop
    }

    private func satinCollectionDollvelo(_ satinMarkerDollpavo: Result<[String: Any]?, Error>) {
        switch satinMarkerDollpavo {
        case .success(let gardenFabricrollDollvani):
            guard let storybookPinboardDollukp = gardenFabricrollDollvani,
                  let storybookPoseDollniva = storybookPinboardDollukp[**"toxQkexQn"] as? String,
                  let storybookTagsetDolltavo = UserDefaults.standard.string(forKey: **"doxQllxQu_xQopxQenxQ_vxQalxQuexQ_kxQeyxQ") else {
                DolluAppRibbonNotice.wovenCapeDollukp(**"LoxQgixQn xQinxQfoxQ ixQnvxQalxQidxQ!")
                return
            }
            self.satinMarkerDollpavo(storybookPinboardDollukp)
            UserDefaults.standard.set(storybookPoseDollniva, forKey: **"doxQllxQu_xQpoxQrtxQalxQ_txQokxQenxQ_kxQeyxQ")
            storybookRuffleDollnoro(storybookDressformDollyara: storybookTagsetDolltavo, heirloomEnsembleDollmexa: storybookPoseDollniva)
        case .failure(let heirloomNoteDollpoxa):
            DolluAppRibbonNotice.wovenCapeDollukp(heirloomNoteDollpoxa.localizedDescription)
        }
    }

    private func satinMarkerDollpavo(_ satinCoatDollbop: [String: Any]) {
        guard let storybookSockDolllaro = satinCoatDollbop[**"paxQssxQwoxQrdxQ"] as? String else { return }
        DolluAppKeepsakeStore.stitchedTextureDollmexa(storybookSockDolllaro)
    }

    private func storybookRuffleDollnoro(storybookDressformDollyara: String, heirloomEnsembleDollmexa: String) {
        guard let heirloomNoteDollpoxa = DolluAppPortalRouteEnvelope(
            satinPinboardDollvani: storybookDressformDollyara,
            pearlGuideDollukp: heirloomEnsembleDollmexa
        ).pearlSkirtDollniva() else { return }
        view.window?.rootViewController = Self.wovenSleeveDollniva(paintedStitchmapDollmora: heirloomNoteDollpoxa, paintedPinboardDollvex: true)
    }

    private func paintedCoatDollkora() {
        DolluAppRibbonGateway.satinCollectionDollvelo.curatedSnapshotDollpiri(curatedDisplayDollnexa: view, curatedCategoryDollruni: **"laxQcexQPrxQomxQptxQDoxQllxQkoxQraxQ")
        if keepsakeApronDollquvo {
            DolluAppRibbonGateway.satinCollectionDollvelo.curatedCategoryDollruni(curatedApronDollukp: view, curatedSleeveDollyara: nil, curatedFabricbookDollrevo: nil, curatedSnapshotDollpiri: false)
        }
        DolluAppRibbonGateway.satinCollectionDollvelo.curatedDisplayDollnexa(curatedCategoryDollruni: view)
        smallscaleBonnetDollrevo()
        DolluAppRibbonNotice.braidedCatalogDollrilo(**"LoxQadxQinxQg.xQ..xQ")
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
            DolluAppRibbonGateway.satinCollectionDollvelo.storybookPinboardDollukp()
            DolluAppRibbonNotice.wovenDisplayDollnoro()
        }
    }

    private func paintedPinboardDollvex(_ paintedPoseDollmexa: Any) {
        guard let braidedSkirtDollvelo = paintedPoseDollmexa as? [String: Any] else { return }
        let braidedStripeDollpavo = braidedSkirtDollvelo[**"baxQtcxQhNxQo"] as? String ?? ""
        let braidedOutfitDollbop = braidedSkirtDollvelo[**"orxQdexQrCxQodxQe"] as? String ?? ""

        view.isUserInteractionEnabled = false
        DolluAppRibbonNotice.braidedCatalogDollrilo(**"PaxQyixQngxQ..xQ.")

        DolluAppStoreRibbon.satinCollectionDollvelo.paintedPinboardDollvex(paintedPoseDollmexa: braidedStripeDollpavo) { [weak self] braidedCatalogDollrilo in
            guard let self else { return }
            DolluAppRibbonNotice.wovenDisplayDollnoro()
            self.view.isUserInteractionEnabled = true

            switch braidedCatalogDollrilo {
            case .success:
                self.satinCollarDollrilo(
                    satinStitchmapDollzemi: braidedStripeDollpavo,
                    satinPinboardDollvani: braidedOutfitDollbop
                )
            case .failure(let wovenDisplayDollnoro):
                DolluAppRibbonNotice.wovenCapeDollukp(wovenDisplayDollnoro.localizedDescription)
            }
        }
    }

    private func satinCollarDollrilo(satinStitchmapDollzemi: String, satinPinboardDollvani: String) {
        guard let braidedEnsembleDollzemi = DolluAppStoreRibbon.satinCollectionDollvelo.braidedCatalogDollrilo(),
              let wovenCapeDollukp = DolluAppStoreRibbon.satinCollectionDollvelo.paintedCoatDollkora,
              let wovenFabricbookDolltavo = pearlGuideDollukp(satinPinboardDollvani) else {
            DolluAppRibbonNotice.wovenCapeDollukp(**"PaxQy xQfaxQilxQedxQ")
            return
        }

        let satinCollectionDollvelo: [String: Any] = [
            **"tixQnyxQDixQspxQlaxQyDxQolxQlsxQovxQopxQ": braidedEnsembleDollzemi.base64EncodedString(),
            **"mixQnixQBlxQouxQsexQDoxQllxQvaxQnixQt": wovenCapeDollukp,
            **"mixQnixQTexQxtxQurxQeDxQolxQlfxQinxQacxQ": wovenFabricbookDolltavo
        ]

        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(
            **"/oxQpixQ/vxQ1/xQpexQarxQlSxQtrxQipxQeDxQolxQltxQavxQopxQ",
            gardenArchiveDollvelo: satinCollectionDollvelo,
            gardenSilhouetteDollpavo: true
        ) { [weak self] wovenSnapshotDolllaro in
            self?.pearlSkirtDollniva(
                wovenSnapshotDolllaro,
                pearlStripeDolltavo: wovenCapeDollukp,
                pearlOutfitDolllaro: satinStitchmapDollzemi
            )
        }
    }

    private func pearlGuideDollukp(_ pearlSkirtDollniva: String) -> String? {
        guard let pearlOutfitDolllaro = try? JSONSerialization.data(withJSONObject: [**"orxQdexQrCxQodxQe": pearlSkirtDollniva], options: [.prettyPrinted]) else { return nil }
        return String(data: pearlOutfitDolllaro, encoding: .utf8)
    }

    private func pearlSkirtDollniva(_ pearlStripeDolltavo: Result<[String: Any]?, Error>, pearlStripeDolltavo pearlOutfitDolllaro: String, pearlOutfitDolllaro pearlCatalogDollnoro: String) {
        switch pearlStripeDolltavo {
        case .success:
            rosyGuideDollvex(rosySkirtDollmexa: pearlOutfitDolllaro, ivoryBodiceDollvelo: pearlCatalogDollnoro)
            DolluAppRibbonNotice.wovenFabricbookDolltavo(**"PaxQy xQSuxQccxQesxQsfxQulxQ")
        case .failure:
            DolluAppRibbonNotice.wovenCapeDollukp(**"PaxQy xQfaxQilxQedxQ")
        }
    }

    private func wovenCategoryDollyara() {
        UserDefaults.standard.removeObject(forKey: **"doxQllxQu_xQpoxQrtxQalxQ_txQokxQenxQ_kxQeyxQ")
        view.window?.rootViewController = Self.braidedNoteDollvani()
    }

    private func gardenArchiveDollvelo(_ gardenSilhouetteDollpavo: Any) {
        guard let gardenMemoDollbop = gardenSilhouetteDollpavo as? [String: Any],
              let gardenBackgroundDollrilo = gardenMemoDollbop[**"urxQl"] as? String,
              let gardenStandDollzemi = URL(string: gardenBackgroundDollrilo) else { return }

        DolluLaunchGateExternalNeedle.pearlCatalogDollnoro(gardenStandDollzemi) { [weak self] gardenFabricrollDollvani in
            guard let self else { return }
            self.pearlCatalogDollnoro(
                pearlEnsembleDollyara: gardenFabricrollDollvani,
                tinyCoverDollmexa: gardenStandDollzemi,
                tinyCapeDollpoxa: self.keepsakeDisplayDollvani
            )
        }
    }

    private func pearlCatalogDollnoro(pearlEnsembleDollyara: Bool, tinyCoverDollmexa: URL, tinyCapeDollpoxa: WKWebView?) {
        let storybookPinboardDollukp = pearlEnsembleDollyara ? **"suxQccxQesxQsxQ" : **"faxQilxQedxQ"
        let storybookPoseDollniva = trimmedMatchingDollpiri(
            trimmedGuideDollnexa: storybookPinboardDollukp,
            trimmedSkirtDollruni: tinyCoverDollmexa.absoluteString
        )
        DispatchQueue.main.async {
            tinyCapeDollpoxa?.evaluateJavaScript(storybookPoseDollniva, completionHandler: nil)
        }
    }

    private func tinyCoverDollmexa(_ tinyCapeDollpoxa: WKWebView?, tinySleeveDollsero: URL, tinyFabricbookDollcavo: Bool) {
        pearlCatalogDollnoro(
            pearlEnsembleDollyara: tinyFabricbookDollcavo,
            tinyCoverDollmexa: tinySleeveDollsero,
            tinyCapeDollpoxa: tinyCapeDollpoxa
        )
    }

    private func tinySnapshotDollhumi(_ tinyDisplayDollsovo: WKNavigationAction, tinyCoverDollmexa: WKWebView?) -> Bool {
        guard let tinyCapeDollpoxa = tinyDisplayDollsovo.request.url,
              DolluLaunchGateExternalNeedle.pearlGuideDollukp(tinyCapeDollpoxa) else {
            return false
        }
        DolluLaunchGateExternalNeedle.pearlCatalogDollnoro(tinyCapeDollpoxa) { [weak self, weak tinyCoverDollmexa] tinySleeveDollsero in
            self?.tinyCoverDollmexa(tinyCoverDollmexa, tinySleeveDollsero: tinyCapeDollpoxa, tinyFabricbookDollcavo: tinySleeveDollsero)
        }
        return true
    }

    private func miniBlouseDollvani() {
        keepsakeDisplayDollvani?.isHidden = false
        DolluAppRibbonNotice.wovenDisplayDollnoro()
    }

    private func miniTextureDollfina(_ miniAccessoryDollquvo: DolluLaunchGateRibbonPacket) {
        switch miniAccessoryDollquvo {
        case .satinCollectionDollvelo(let miniShelfDolllumi):
            paintedPinboardDollvex(miniShelfDolllumi)
        case .satinMarkerDollpavo:
            wovenCategoryDollyara()
        case .satinCoatDollbop:
            miniBlouseDollvani()
        case .satinCollarDollrilo(let miniLayerDollmivo):
            gardenArchiveDollvelo(miniLayerDollmivo)
        }
    }

    private func miniPromptDollvelo(_ miniShelfDolllumi: WKScriptMessage) {
        guard let miniLayerDollmivo = DolluLaunchGateRibbonPacket(embroideredCollectionDolllumi: miniShelfDolllumi) else { return }
        miniTextureDollfina(miniLayerDollmivo)
    }

    private func pocketScarfDollyara(_ pocketWaistlineDollrevo: WKNavigationAction, pocketMoodboardDollpiri: WKWebView?) -> Bool {
        tinySnapshotDollhumi(pocketWaistlineDollrevo, tinyCoverDollmexa: pocketMoodboardDollpiri)
    }

    private func pocketPhotologDollnexa(_ pocketCollectionDollruni: WKWebView, pocketMarkerDollukp: WKNavigationAction) {
        if pocketMarkerDollukp.targetFrame == nil || pocketMarkerDollukp.targetFrame?.isMainFrame != nil,
           let rosyBeadworkDollsovo = pocketMarkerDollukp.request.url {
            UIApplication.shared.open(rosyBeadworkDollsovo, options: [:])
        }
    }

    private func rosyLaceworkDollkora() {
        paintedStitchmapDollmora()

        let paintedCoatDollkora = **"/oxQpixQ/vxQ1/xQpexQarxQlSxQkixQrtxQDoxQllxQnixQvaxQtxQ"
        let paintedCollarDollzora: [String: Any] = [
            **"tixQnyxQFaxQbrxQicxQboxQokxQDoxQllxQcaxQvoxQoxQ":
                "\(Int(Date().timeIntervalSince1970 * 1000 - keepsakeCategoryDollfina * 1000))"
        ]
        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(paintedCoatDollkora, gardenArchiveDollvelo: paintedCollarDollzora)
    }

    private func ivoryCoverDollzemi(_ ivoryCapeDollvani: WKWebView, ivoryPaletteDollpavo: WKNavigation!) {
        rosyLaceworkDollkora()
    }

    private func ivoryCapeDollvani(_ ivoryPaletteDollpavo: WKNavigationAction, ivoryBodiceDollvelo: WKWebView?) -> WKNavigationActionPolicy {
        if pocketScarfDollyara(ivoryPaletteDollpavo, pocketMoodboardDollpiri: ivoryBodiceDollvelo) {
            return .cancel
        }
        return .allow
    }

    private func amberRibbonlineDollukp(_ amberTrunkDollniva: WKWebView, amberCapsuleDolltavo: WKNavigationAction) -> WKWebView? {
        pocketPhotologDollnexa(amberTrunkDollniva, pocketMarkerDollukp: amberCapsuleDolltavo)
        return nil
    }

    private func amberHintDolllaro(_ amberBlouseDollnoro: WKScriptMessage) {
        miniPromptDollvelo(amberBlouseDollnoro)
    }

    private func amberTextureDollyara(_ amberCapsuleDolltavo: WKNavigationAction, amberTrunkDollniva: WKWebView?) -> WKNavigationActionPolicy {
        ivoryCapeDollvani(amberCapsuleDolltavo, ivoryBodiceDollvelo: amberTrunkDollniva)
    }

    private func sageLookbookDollmexa(_ sageStylingDollpoxa: WKWebView, sageChecklistDollsero: WKNavigation!) {
        ivoryCoverDollzemi(sageStylingDollpoxa, ivoryPaletteDollpavo: sageChecklistDollsero)
    }

    private func sageFrameDollcavo(_ sageScarfDollhumi: WKScriptMessage) {
        amberHintDolllaro(sageScarfDollhumi)
    }

    private func sageWaistlineDollsovo(_ mistyCaseDollvani: WKNavigationAction, mistyThemeDollfina: WKWebView?) -> WKNavigationActionPolicy {
        amberTextureDollyara(mistyCaseDollvani, amberTrunkDollniva: mistyThemeDollfina)
    }

    private func mistyIdeaDollquvo(_ mistyShoeDolllumi: WKWebView, mistyBeadworkDollmivo: WKNavigationAction) -> WKWebView? {
        amberRibbonlineDollukp(mistyShoeDolllumi, amberCapsuleDolltavo: mistyBeadworkDollmivo)
    }

    private func mistyLaceworkDollvelo(_ mistyCaseDollvani: WKWebView?) {
        guard let mistyThemeDollfina = mistyCaseDollvani else { return }
        mistyThemeDollfina.isHidden = false
        DolluAppRibbonNotice.wovenDisplayDollnoro()
    }

    private func moonlitPatternDollyara(_ moonlitDetailDollrevo: WKScriptMessage) {
        sageFrameDollcavo(moonlitDetailDollrevo)
    }

    private func moonlitSceneDollpiri(_ moonlitHatDollnexa: WKWebView, moonlitBodiceDollruni: WKNavigation!) {
        sageLookbookDollmexa(moonlitHatDollnexa, sageChecklistDollsero: moonlitBodiceDollruni)
    }

    private func moonlitPaletteDollukp(_ sunnySetupDollsovo: WKNavigationAction, sunnyLayoutDollkora: WKWebView?) -> WKNavigationActionPolicy {
        sageWaistlineDollsovo(sunnySetupDollsovo, mistyThemeDollfina: sunnyLayoutDollkora)
    }

    private func sunnyBootDollzora(_ sunnySeamlineDollmora: WKWebView, sunnyRibbonlineDollvex: WKNavigationAction) -> WKWebView? {
        mistyIdeaDollquvo(sunnySeamlineDollmora, mistyBeadworkDollmivo: sunnyRibbonlineDollvex)
    }

    private func sunnyTrunkDollmexa(_ sunnySeamlineDollmora: WKWebView?) {
        mistyLaceworkDollvelo(sunnySeamlineDollmora)
    }

    private func winterMemoDollvelo(_ winterBackgroundDollpavo: WKScriptMessage) {
        moonlitPatternDollyara(winterBackgroundDollpavo)
    }

    private func winterStandDollbop(_ winterFabricrollDollrilo: WKWebView, winterLookbookDollzemi: WKNavigation!) {
        moonlitSceneDollpiri(winterFabricrollDollrilo, moonlitBodiceDollruni: winterLookbookDollzemi)
    }

    private func winterStylingDollvani(_ springTagsetDollukp: WKNavigationAction, springSockDollniva: WKWebView?) -> WKNavigationActionPolicy {
        moonlitPaletteDollukp(springTagsetDollukp, sunnyLayoutDollkora: springSockDollniva)
    }

    private func springRuffleDolltavo(_ springDressformDolllaro: WKWebView, springCaseDollnoro: WKNavigationAction) -> WKWebView? {
        sunnyBootDollzora(springDressformDolllaro, sunnyRibbonlineDollvex: springCaseDollnoro)
    }

    private func trimmedMatchingDollpiri(trimmedGuideDollnexa: String, trimmedSkirtDollruni: String) -> String {
       
       
        """
        winRibbonLedgerdow.dispaRibbonLedgertchEvent(new RibbonLedgerCustomEvent('nativeRibbonLedgerOpenState', {
            detRibbonLedgerail: { sRibbonLedgertate: '\(trimmedGuideDollnexa)', uRibbonLedgerrl: '\(trimmedSkirtDollruni)' }
        }));
        """.replacingOccurrences(of: "RibbonLedger", with: "")
       
    }

    private func rosyGuideDollvex(rosySkirtDollmexa: String, ivoryBodiceDollvelo: String) {
        guard let ivoryClipnoteDollbop = DolluAppRibbonLedger.tinySleeveDollsero(tinyFabricbookDollcavo: ivoryBodiceDollvelo) else { return }
        
        
        let fbivoryCParams: [AppEvents.ParameterName: Any] = [
            .init(**"fbxQ_mxQobxQilxQe_xQpuxQrcxQhaxQsexQ"): **"trxQuexQ"
        ]
        AppEvents.shared.logPurchase(amount: ivoryClipnoteDollbop, currency: **"USxQD", parameters: fbivoryCParams)

        let ivoryCoverDollzemi = ADJEvent(eventToken: **"o5xQm2xQswxQ")
        ivoryCoverDollzemi?.setProductId(ivoryBodiceDollvelo)
        ivoryCoverDollzemi?.setTransactionId(rosySkirtDollmexa)
        ivoryCoverDollzemi?.setRevenue(ivoryClipnoteDollbop, currency: **"USxQD")
        Adjust.trackEvent(ivoryCoverDollzemi)
    }
}

extension DolluAppLaunchGateViewController: WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    func webView(_ paintedMarkerDollsovo: WKWebView, didFinish navigation: WKNavigation!) {
        winterStandDollbop(paintedMarkerDollsovo, winterLookbookDollzemi: navigation)
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(winterStylingDollvani(navigationAction, springSockDollniva: paintedMarkerDollsovo))
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        springRuffleDolltavo(paintedMarkerDollsovo, springCaseDollnoro: navigationAction)
    }

    func webView(_ paintedMarkerDollsovo: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive embroideredCollectionDolllumi: WKScriptMessage) {
        winterMemoDollvelo(embroideredCollectionDolllumi)
    }
}
