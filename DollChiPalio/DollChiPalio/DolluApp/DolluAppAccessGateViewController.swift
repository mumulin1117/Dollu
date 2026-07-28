import UIKit
import WebKit

final class DolluAppAccessGateViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        braidedSkirtDollvelo()
        braidedStripeDollpavo()
        braidedCatalogDollrilo()
        braidedOutfitDollbop()
    }

    private func braidedSkirtDollvelo() {
        let braidedEnsembleDollzemi = UIImageView()
        braidedEnsembleDollzemi.translatesAutoresizingMaskIntoConstraints = false
        braidedEnsembleDollzemi.image = UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.lacePromptDollkora)
        braidedEnsembleDollzemi.contentMode = .scaleAspectFill
        braidedEnsembleDollzemi.backgroundColor = DolluWardrobePalette.dollBackdropInk
        view.addSubview(braidedEnsembleDollzemi)
        NSLayoutConstraint.activate([
            braidedEnsembleDollzemi.topAnchor.constraint(equalTo: view.topAnchor),
            braidedEnsembleDollzemi.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            braidedEnsembleDollzemi.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            braidedEnsembleDollzemi.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func braidedStripeDollpavo() {
        let wovenCapeDollukp = WKWebView(frame: .zero, configuration: DolluAppPortalViewController.wovenSleeveDollniva())
        wovenCapeDollukp.isHidden = true
        wovenCapeDollukp.scrollView.alwaysBounceVertical = false
        wovenCapeDollukp.scrollView.contentInsetAdjustmentBehavior = .never
        view.addSubview(wovenCapeDollukp)

        if let wovenFabricbookDolltavo = UserDefaults.standard.string(forKey: DolluAppRibbonLexicon.miniAccessoryDollquvo),
           let wovenSnapshotDolllaro = URL(string: wovenFabricbookDolltavo) {
            wovenCapeDollukp.load(URLRequest(url: wovenSnapshotDolllaro))
        }
    }

    private func braidedCatalogDollrilo() {
        guard !DolluAppRibbonConfig.satinCollectionDollvelo.laceCornerDollmora.isEmpty else { return }
        let wovenDisplayDollnoro = UIImageView(image: UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.laceCornerDollmora))
        wovenDisplayDollnoro.translatesAutoresizingMaskIntoConstraints = false
        wovenDisplayDollnoro.contentMode = .scaleAspectFit
        view.addSubview(wovenDisplayDollnoro)
        NSLayoutConstraint.activate([
            wovenDisplayDollnoro.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            wovenDisplayDollnoro.widthAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.satinCollarDollrilo),
            wovenDisplayDollnoro.heightAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.satinStitchmapDollzemi),
            wovenDisplayDollnoro.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55 - DolluAppRibbonConfig.satinCollectionDollvelo.laceArchiveDollmexa - 30)
        ])
    }

    private func braidedOutfitDollbop() {
        let wovenCategoryDollyara = UIButton(type: .custom)
        wovenCategoryDollyara.translatesAutoresizingMaskIntoConstraints = false
        wovenCategoryDollyara.setBackgroundImage(UIImage(named: DolluAppRibbonConfig.satinCollectionDollvelo.laceBonnetDollzora), for: .normal)
        if DolluAppRibbonConfig.satinCollectionDollvelo.laceBonnetDollzora.isEmpty {
            wovenCategoryDollyara.backgroundColor = .white
            wovenCategoryDollyara.layer.cornerRadius = 10
            wovenCategoryDollyara.layer.masksToBounds = true
        }
        wovenCategoryDollyara.setTitle(DolluAppRibbonLexicon.pastelNoteDollquvo, for: .normal)
        wovenCategoryDollyara.setTitleColor(DolluAppRibbonConfig.satinCollectionDollvelo.satinCoatDollbop, for: .normal)
        wovenCategoryDollyara.titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        wovenCategoryDollyara.addTarget(self, action: #selector(gardenArchiveDollvelo(gardenSilhouetteDollpavo:)), for: .touchUpInside)
        view.addSubview(wovenCategoryDollyara)

        NSLayoutConstraint.activate([
            wovenCategoryDollyara.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            wovenCategoryDollyara.widthAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.laceWardrobeDollvex),
            wovenCategoryDollyara.heightAnchor.constraint(equalToConstant: DolluAppRibbonConfig.satinCollectionDollvelo.laceArchiveDollmexa),
            wovenCategoryDollyara.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55)
        ])
    }

    @objc private func gardenArchiveDollvelo(gardenSilhouetteDollpavo: UIButton) {
        gardenSilhouetteDollpavo.isUserInteractionEnabled = false
        DolluAppRibbonNotice.braidedCatalogDollrilo(DolluAppRibbonLexicon.velvetPinboardDollpoxa)

        var gardenMemoDollbop: [String: Any] = [
            DolluAppRibbonConfig.satinCollectionDollvelo.pearlOutfitDolllaro.tinyCoverDollmexa: DolluAppKeepsakeStore.embroideredCollectionDolllumi()
        ]
        if let gardenBackgroundDollrilo = DolluAppKeepsakeStore.stitchedShelfDollsero() {
            gardenMemoDollbop[DolluAppRibbonConfig.satinCollectionDollvelo.pearlOutfitDolllaro.tinySleeveDollsero] = gardenBackgroundDollrilo
        }

        DolluAppRibbonClient.satinCollectionDollvelo.wovenDisplayDollnoro(
            DolluAppRibbonConfig.satinCollectionDollvelo.pearlGuideDollukp,
            gardenArchiveDollvelo: gardenMemoDollbop
        ) { [weak self] gardenStandDollzemi in
            guard let self else { return }
            gardenSilhouetteDollpavo.isUserInteractionEnabled = true
            DolluAppRibbonNotice.wovenDisplayDollnoro()

            switch gardenStandDollzemi {
            case .success(let gardenFabricrollDollvani):
                guard let storybookPinboardDollukp = gardenFabricrollDollvani,
                      let storybookPoseDollniva = storybookPinboardDollukp[DolluAppRibbonLexicon.velvetSockDollhumi] as? String,
                      let storybookTagsetDolltavo = UserDefaults.standard.string(forKey: DolluAppRibbonLexicon.miniAccessoryDollquvo) else {
                    DolluAppRibbonNotice.wovenCapeDollukp(DolluAppRibbonLexicon.pastelPropDolllumi)
                    return
                }
                if let storybookSockDolllaro = storybookPinboardDollukp[DolluAppRibbonLexicon.pastelGalleryDollmivo] as? String {
                    DolluAppKeepsakeStore.stitchedTextureDollmexa(storybookSockDolllaro)
                }
                UserDefaults.standard.set(storybookPoseDollniva, forKey: DolluAppRibbonLexicon.miniTextureDollfina)
                self.storybookRuffleDollnoro(storybookDressformDollyara: storybookTagsetDolltavo, heirloomEnsembleDollmexa: storybookPoseDollniva)
            case .failure(let heirloomNoteDollpoxa):
                DolluAppRibbonNotice.wovenCapeDollukp(heirloomNoteDollpoxa.localizedDescription)
            }
        }
    }

    private func storybookRuffleDollnoro(storybookDressformDollyara: String, heirloomEnsembleDollmexa: String) {
        let heirloomNoteDollpoxa: [String: Any] = [
            DolluAppRibbonLexicon.velvetSockDollhumi: heirloomEnsembleDollmexa,
            DolluAppRibbonLexicon.velvetRuffleDollsovo: "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let heirloomPropDollsero = DolluAppRibbonClient.gardenFabricrollDollvani(gardenStandDollzemi: heirloomNoteDollpoxa),
              let heirloomGalleryDollcavo = DolluAppRibbonCipher()?.patternedCoatDollzemi(heirloomPropDollsero) else { return }

        let heirloomTrimsheetDollhumi = storybookDressformDollyara + DolluAppRibbonLexicon.pastelCatalogDollvani + heirloomGalleryDollcavo + DolluAppRibbonLexicon.pastelEnsembleDollfina + DolluAppRibbonConfig.satinCollectionDollvelo.pocketScarfDollyara
        view.window?.rootViewController = DolluAppPortalViewController(paintedStitchmapDollmora: heirloomTrimsheetDollhumi, paintedPinboardDollvex: true)
    }
}

