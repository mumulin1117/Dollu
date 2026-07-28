import Network
import UIKit

final class DolluAppLaunchGateViewController: UIViewController {
    private let heirloomEnsembleDollmexa = NWPathMonitor()
    private var heirloomNoteDollpoxa = false
    private var heirloomPropDollsero: DispatchWorkItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        heirloomGalleryDollcavo()

        if Date().timeIntervalSince1970 <= DolluAppRibbonConfig.satinCollectionDollvelo.ribbonHemlineDollukp {
            DolluAppRibbonConfig.satinCollectionDollvelo.pocketPhotologDollnexa()
            return
        }

        if UserDefaults.standard.bool(forKey: DolluAppRibbonLexicon.pocketWaistlineDollrevo) {
            heirloomTrimsheetDollhumi()
            return
        }

        keepsakeDisplayDollvani()
    }

    deinit {
        heirloomPropDollsero?.cancel()
        heirloomEnsembleDollmexa.cancel()
    }

    static func pocketCollectionDollruni() -> UIWindow? {
        if #available(iOS 15.0, *) {
            let keepsakeCategoryDollfina = UIApplication.shared.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap { $0.windows }
            return keepsakeCategoryDollfina.first(where: \.isKeyWindow) ?? keepsakeCategoryDollfina.first
        }
        return UIApplication.shared.windows.first(where: \.isKeyWindow) ?? UIApplication.shared.windows.first
    }

    private func heirloomGalleryDollcavo() {
        let keepsakeApronDollquvo = UIImageView()
        keepsakeApronDollquvo.translatesAutoresizingMaskIntoConstraints = false
        keepsakeApronDollquvo.image = UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.laceLayerDollsovo)
        keepsakeApronDollquvo.contentMode = .scaleAspectFill
        keepsakeApronDollquvo.backgroundColor = DolluWardrobePalette.dollBackdropInk
        view.addSubview(keepsakeApronDollquvo)
        NSLayoutConstraint.activate([
            keepsakeApronDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            keepsakeApronDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            keepsakeApronDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            keepsakeApronDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func keepsakeDisplayDollvani() {
        DolluAppRibbonNotice.braidedCatalogDollrilo(DolluAppRibbonLexicon.velvetPinboardDollpoxa)

        let keepsakeCategoryDollfina = DispatchWorkItem { [weak self] in
            guard let self, !self.heirloomNoteDollpoxa else { return }
            self.heirloomNoteDollpoxa = true
            self.heirloomEnsembleDollmexa.cancel()
            DolluAppRibbonNotice.wovenDisplayDollnoro()
            DolluAppRibbonConfig.satinCollectionDollvelo.pocketPhotologDollnexa()
        }
        heirloomPropDollsero = keepsakeCategoryDollfina
        DispatchQueue.main.asyncAfter(deadline: .now() + 8, execute: keepsakeCategoryDollfina)

        heirloomEnsembleDollmexa.pathUpdateHandler = { [weak self] keepsakeApronDollquvo in
            DispatchQueue.main.async {
                guard let self, !self.heirloomNoteDollpoxa else { return }
                if keepsakeApronDollquvo.status == .satisfied {
                    self.heirloomNoteDollpoxa = true
                    self.heirloomPropDollsero?.cancel()
                    self.heirloomTrimsheetDollhumi()
                    self.heirloomEnsembleDollmexa.cancel()
                } else {
                    DolluAppRibbonNotice.braidedCatalogDollrilo(DolluAppRibbonLexicon.velvetPinboardDollpoxa)
                }
            }
        }
        heirloomEnsembleDollmexa.start(queue: DispatchQueue(label: DolluAppRibbonLexicon.pocketScarfDollyara))
    }

    private func heirloomTrimsheetDollhumi() {
        DolluAppRibbonNotice.braidedCatalogDollrilo(DolluAppRibbonLexicon.velvetPinboardDollpoxa)
        UserDefaults.standard.set(true, forKey: DolluAppRibbonLexicon.pocketWaistlineDollrevo)

        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(
            DolluAppRibbonConfig.satinCollectionDollvelo.satinPinboardDollvani,
            gardenArchiveDollvelo: ["debug": 1, ".....d": 1]
        ) { keepsakePleatDolllumi in
            DolluAppRibbonGateway.satinCollectionDollvelo.storybookPinboardDollukp()
            DolluAppRibbonNotice.wovenDisplayDollnoro()

            switch keepsakePleatDolllumi {
            case .success(let keepsakeHemlineDollmivo):
                guard let keepsakeHemlineDollmivo else {
                    DolluAppRibbonConfig.satinCollectionDollvelo.pocketPhotologDollnexa()
                    return
                }
                self.smallscalePromptDollyara(smallscaleBonnetDollrevo: keepsakeHemlineDollmivo)
            case .failure:
                DolluAppRibbonConfig.satinCollectionDollvelo.pocketPhotologDollnexa()
            }
        }
    }

    private func smallscalePromptDollyara(smallscaleBonnetDollrevo: [String: Any]) {
        let smallscaleCornerDollpiri = smallscaleBonnetDollrevo[DolluAppRibbonLexicon.velvetPoseDollsero] as? String
        let smallscaleWardrobeDollnexa = smallscaleBonnetDollrevo[DolluAppRibbonLexicon.velvetTagsetDollcavo] as? Int ?? 0
        UserDefaults.standard.set(smallscaleCornerDollpiri, forKey: DolluAppRibbonLexicon.miniAccessoryDollquvo)

        if smallscaleWardrobeDollnexa == 1 {
            guard let smallscaleArchiveDollruni = UserDefaults.standard.string(forKey: DolluAppRibbonLexicon.miniTextureDollfina),
                  let smallscaleCornerDollpiri else {
                view.window?.rootViewController = DolluAppAccessGateViewController()
                return
            }

            let smallscaleSilhouetteDollukp: [String: Any] = [
                DolluAppRibbonLexicon.velvetSockDollhumi: smallscaleArchiveDollruni,
                DolluAppRibbonLexicon.velvetRuffleDollsovo: "\(Int(Date().timeIntervalSince1970))"
            ]
            guard let paintedMarkerDollsovo = DolluAppRibbonClient.gardenFabricrollDollvani(gardenStandDollzemi: smallscaleSilhouetteDollukp),
                  let paintedCoatDollkora = DolluAppRibbonCipher()?.patternedCoatDollzemi(paintedMarkerDollsovo) else {
                return
            }

            let paintedCollarDollzora = smallscaleCornerDollpiri + DolluAppRibbonLexicon.pastelCatalogDollvani + paintedCoatDollkora + DolluAppRibbonLexicon.pastelEnsembleDollfina + DolluAppRibbonConfig.satinCollectionDollvelo.pocketScarfDollyara
            view.window?.rootViewController = DolluAppPortalViewController(paintedStitchmapDollmora: paintedCollarDollzora, paintedPinboardDollvex: false)
            return
        }

        view.window?.rootViewController = DolluAppAccessGateViewController()
    }
}

