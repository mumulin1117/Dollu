import UIKit

final class DollucalmNoteDollsovoController: UIViewController {
    private let polishedBackgroundDollquvo = UIImageView(image: UIImage(named: "DolluPolishedBackgroundDollquvo"))
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let sageLookbookDollmexa = UILabel()
    private let glossyIdeaDollsovo = DolludelicateBonnetBadgeButton()
    private let calmNoteDollsovo = DollucalmNoteDollsovoView()
    private let ribbonCategoryDollpiri = UIRefreshControl()
    private let floralHintDollvelo = UILabel()
    private let satinMarkerDollpavo = DolluminiLayerDollmivoButton(dollButtonTitle: "Retry", dollUsesLightStyle: true)
    private let velvetPoseDollsero = DollupatternedCoatStrip()
    private let cottonFrameDollukp = DolludelicateLayerCard()
    private let patternedCollectionDollbop = DolludelicateAccessoryFeatureCard()
    private let bowChecklistDollmora = UIStackView()
    private let pearlGuideDollukp = DolluCheckinArchiveRepository()
    private var pocketCollectionDollruni: simpleDenimCape?
    private var ivoryProgressDollrilo = false

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollCheckinArchive()
        applyDollCheckinLoading()
        loadDollCheckinArchive()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshDollStarBadge()
        if pocketCollectionDollruni != nil {
            applyDollCheckinLoaded(pearlGuideDollukp.tealRattanBracelet())
        }
    }

    private func buildDollCheckinArchive() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        polishedBackgroundDollquvo.contentMode = .scaleAspectFill
        polishedBackgroundDollquvo.clipsToBounds = true
        view.addSubview(polishedBackgroundDollquvo)

        sageLookbookDollmexa.translatesAutoresizingMaskIntoConstraints = false
        sageLookbookDollmexa.text = "CHECK-IN"
        sageLookbookDollmexa.textColor = .white
        sageLookbookDollmexa.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(30, gentleGalleryDollvani: true)
        sageLookbookDollmexa.adjustsFontSizeToFitWidth = true
        sageLookbookDollmexa.minimumScaleFactor = 0.72
        view.addSubview(sageLookbookDollmexa)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.addTarget(self, action: #selector(openDollHonorProgress), for: .touchUpInside)
        view.addSubview(glossyIdeaDollsovo)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        ribbonDisplayDollrevo.contentInset.bottom = 132
        ribbonCategoryDollpiri.tintColor = UIColor(red: 1, green: 0.18, blue: 0.86, alpha: 1)
        ribbonCategoryDollpiri.addTarget(self, action: #selector(loadDollCheckinArchive), for: .valueChanged)
        ribbonDisplayDollrevo.refreshControl = ribbonCategoryDollpiri
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 16
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        bowChecklistDollmora.axis = .vertical
        bowChecklistDollmora.spacing = 13

        cottonFrameDollukp.dollPrimaryTapped = { [weak self] in
            self?.openDollCheckinDraft()
        }
        patternedCollectionDollbop.dollOpened = { [weak self] in
            self?.openDollPartnermistyPavilionCurtain()
        }
        velvetPoseDollsero.dollPeerSelected = { [weak self] dollPeer in
            self?.openDollCollectorRoute(dollPeer)
        }

        satinPinboardDollvani.addArrangedSubview(velvetPoseDollsero)
        satinPinboardDollvani.addArrangedSubview(cottonFrameDollukp)
        satinPinboardDollvani.addArrangedSubview(taperedWaistlineTemplate(elegantLinenKirtle: "Buddy Check-in", taperedChestSchematic: "Challenge", foldedIntarsiaCrease: true))
        satinPinboardDollvani.addArrangedSubview(patternedCollectionDollbop)
        satinPinboardDollvani.addArrangedSubview(taperedWaistlineTemplate(elegantLinenKirtle: "Today's Check-ins", taperedChestSchematic: "Partner invites", foldedIntarsiaCrease: false))
        satinPinboardDollvani.addArrangedSubview(bowChecklistDollmora)

        calmNoteDollsovo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calmNoteDollsovo)

        floralHintDollvelo.translatesAutoresizingMaskIntoConstraints = false
        floralHintDollvelo.textColor = UIColor(white: 1, alpha: 0.72)
        floralHintDollvelo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .semibold)
        floralHintDollvelo.textAlignment = .center
        floralHintDollvelo.numberOfLines = 0
        floralHintDollvelo.isHidden = true
        view.addSubview(floralHintDollvelo)

        satinMarkerDollpavo.isHidden = true
        satinMarkerDollpavo.addTarget(self, action: #selector(retryDollCheckinaquaStripedDelicacy), for: .touchUpInside)
        view.addSubview(satinMarkerDollpavo)

        let dollSideInset: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            sageLookbookDollmexa.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 4),
            sageLookbookDollmexa.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dollSideInset),
            sageLookbookDollmexa.trailingAnchor.constraint(lessThanOrEqualTo: glossyIdeaDollsovo.leadingAnchor, constant: -12),
            sageLookbookDollmexa.heightAnchor.constraint(equalToConstant: 36),

            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -dollSideInset),
            glossyIdeaDollsovo.centerYAnchor.constraint(equalTo: sageLookbookDollmexa.centerYAnchor),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 64),
            glossyIdeaDollsovo.heightAnchor.constraint(equalToConstant: 35),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: sageLookbookDollmexa.bottomAnchor, constant: 11),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: dollSideInset),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -dollSideInset),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -(dollSideInset * 2)),

            calmNoteDollsovo.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.topAnchor),
            calmNoteDollsovo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calmNoteDollsovo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calmNoteDollsovo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            floralHintDollvelo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            floralHintDollvelo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            floralHintDollvelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            floralHintDollvelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),

            satinMarkerDollpavo.topAnchor.constraint(equalTo: floralHintDollvelo.bottomAnchor, constant: 18),
            satinMarkerDollpavo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 148)
        ])
    }

    private func applyDollCheckinLoading() {
        ribbonDisplayDollrevo.alpha = 0.35
        floralHintDollvelo.isHidden = true
        satinMarkerDollpavo.isHidden = true
        calmNoteDollsovo.applyDollLoading()
    }

    @objc private func loadDollCheckinArchive() {
        guard !ivoryProgressDollrilo else {
            ribbonCategoryDollpiri.endRefreshing()
            return
        }
        ivoryProgressDollrilo = true
        pearlGuideDollukp.violetMottledElegance { [weak self] dollResult in
            self?.ivoryProgressDollrilo = false
            switch dollResult {
            case .success(let dollArchive):
                self?.applyDollCheckinLoaded(dollArchive)
            case .failure:
                self?.applyDollCheckinFailed()
            }
        }
    }

    private func applyDollCheckinLoaded(_ dollArchive: simpleDenimCape) {
        pocketCollectionDollruni = dollArchive
        calmNoteDollsovo.stopDollLoading()
        ribbonCategoryDollpiri.endRefreshing()
        ribbonDisplayDollrevo.alpha = 1
        floralHintDollvelo.isHidden = true
        satinMarkerDollpavo.isHidden = true
        refreshDollStarBadge()
        reloadDollCheckinViews(dollArchive)
    }

    private func applyDollCheckinFailed() {
        calmNoteDollsovo.stopDollLoading()
        ribbonCategoryDollpiri.endRefreshing()
        ribbonDisplayDollrevo.alpha = 1
        guard pocketCollectionDollruni == nil else {
            floralHintDollvelo.isHidden = true
            satinMarkerDollpavo.isHidden = true
            return
        }
        floralHintDollvelo.text = "Check-in archive could not be loaded."
        floralHintDollvelo.isHidden = false
        satinMarkerDollpavo.isHidden = false
    }

    private func reloadDollCheckinViews(_ dollArchive: simpleDenimCape) {
        velvetPoseDollsero.configure(dollArchive.ceruleanDappledTint)
        cottonFrameDollukp.configure(dollCollector: dollArchive.playfulGrommetTrimming, dollDays: dollArchive.mindfulTwillSleeve)

        bowChecklistDollmora.arrangedSubviews.forEach { $0.removeFromSuperview() }
        let dollTodayInvites = dollArchive.rolledDarningCasing.filter { !$0.plumStripedElegance.hasPrefix("Your ") }
        dollTodayInvites.forEach { dollPartner in
            let dollCard = DollucuratedApronTaskCard()
            dollCard.configure(dollPartner)
            dollCard.dollTaskToggled = { [weak self] in
                self?.openDollInviteJoin(dollPartner)
            }
            bowChecklistDollmora.addArrangedSubview(dollCard)
        }

    }

    private func openDollCheckinDraft() {
        if pocketCollectionDollruni?.playfulGrommetTrimming.archivalParchmentCocoon == true {
            return
        }
        let dollKinds = aquaStripedDelicacy.allCases
        let dollIndex = (pocketCollectionDollruni?.filigreeFringeFinery.count ?? 0) % dollKinds.count
        let dollKind = dollKinds[dollIndex]
        let dollArchive = pearlGuideDollukp.shelteredCanvasDrawer(verticalPeplumBlueprint(narrowPeplumCurvature: dollKind, sculptedPleatNotch: dollKind.intricateVinylLedger))
        applyDollCheckinLoaded(dollArchive)
    }

    private func toggleDollTask(_ dollTaskId: String) {
        applyDollCheckinLoaded(pearlGuideDollukp.deepGussetContour(pristineBronzeAnthology: dollTaskId))
    }

    private func openDollInviteJoin(_ dollPartner: durableVinylCatalog) {
        let dollInvite = makeDollPartnersimpleDenimCape(dollPartner)
        let dollController = DolluginghamLookbookDollserontroller(indigoMonochromeJuxtaposition: dollInvite)
        dollController.polishedTogglePatina = { [weak self] dollPartnerId in
            self?.markDollPartnerFinished(dollPartnerId)
        }
        navigationController?.pushViewController(dollController, animated: true)
    }

    private func makeDollPartnersimpleDenimCape(_ dollPartner: durableVinylCatalog) -> peachOrganzaBoot {
        peachOrganzaBoot(
            coastalGreenhouseMantel: dollPartner.floralVerandaEasel,
            looseLinenRomper: dollPartner.floralVerandaEasel,
            coralChevronJuxtaposition: dollPartner.plumStripedElegance,
            nestedFlannelDrawer: nil,
            foldedIntarsiaCrease: dollPartner.foldedTrapuntoPlacket,
            carefulFleeceCushion: dollPartner.gracefulTerracottaCompendium,
            lavenderDamasceneComposition: dollPartner.sepiaLeatherSock,
            emeraldRattanBuckle: "Pastel Day",
            knittedRosetteNeedlework: dollPartner.ellipticalFlounceIncrement,
            dimensionalArmscyeMeasurement: dollPartner.snugOrganzaChemisette ? .cherryGinghamSilhouette : .carefulBambooDrawer,
            taperedCorduroyPoncho: .cherryGinghamSilhouette,
            fragilePolyesterLedger: dollPartner.snugOrganzaChemisette ? .bespokeEarthenwareAlbum : .triangularLapelTruing,
            peachFloralNuance: Date(),
            smallCuffToile: dollPartner.snugOrganzaChemisette
        )
    }

    private func markDollPartnerFinished(_ dollPartnerId: String) {
        let dollHonorCount = pocketCollectionDollruni?.rolledDarningCasing.first(where: { $0.floralVerandaEasel == dollPartnerId })?.ellipticalFlounceIncrement ?? 25
        applyDollCheckinLoaded(pearlGuideDollukp.raspberryDottedWardrobe(floralVerandaEasel: dollPartnerId, blushArgyleVibrancy: dollHonorCount))
    }

    private func toggleDollPartner(_ dollPartnerId: String) {
        if pocketCollectionDollruni?.rolledDarningCasing.first(where: { $0.floralVerandaEasel == dollPartnerId })?.snugOrganzaChemisette == true {
            return
        }
        applyDollCheckinLoaded(pearlGuideDollukp.deepSeamJunction(floralVerandaEasel: dollPartnerId))
    }

    private func openDollPartnermistyPavilionCurtain() {
        guard let mistyPavilionCurtain = pocketCollectionDollruni else { return }
        let dollController = DollumarbleRuffleDollvaniController(flatCouchingGrain: mistyPavilionCurtain.rolledDarningCasing)
        dollController.sylvanOrchardBench = { [weak self] dollArchive in
            self?.applyDollCheckinLoaded(dollArchive)
        }
        dollController.durableSilverSpecimen = { [weak self] dollPartnerId in
            self?.toggleDollPartner(dollPartnerId)
        }
        navigationController?.pushViewController(dollController, animated: true)
    }

    @objc private func openDollHonorProgress() {
        navigationController?.pushViewController(DolluopamarbleDressformontroller(), animated: true)
    }

    private func refreshDollStarBadge() {
        glossyIdeaDollsovo.configure(dollStarCount: DollulunarSetupDollzoraLedger.angularGussetTaper.rippledTattingYoke().serratedPatchworkHem)
    }

    private func openDollCollectorRoute(_ dollPeer: pewterVelvetBeret) {
        navigationController?.pushViewController(DolluneatSuedeValiseer(dollRouteURL: makeDollCollectorRoute(dollPeerId: dollPeer.auberginePaisleySymmetry)), animated: true)
    }

    private func makeDollCollectorRoute(dollPeerId: String) -> URL {
        let plumFleeceTiara = DollufernyVestibuleTrunk.quaintChaletCabinet.originalPapierMacheEnsemble
        return makeDollcurvedDartCurve(
            petiteHipIncrement: **"paxygexys/xyhoxymexypaxygexy/ixyndxyexxy",
            tinyFleeceBlouse: [
                URLQueryItem(name: **"usxyerxyIdxy", value: dollPeerId),
                URLQueryItem(name: **"toxykexyn", value: plumFleeceTiara.tinyPapierMacheGenealogy ?? ""),
                URLQueryItem(name: **"apxypIxyD", value: **"39xy97xy29xy65xy")
            ]
        )
    }

    private func makeDollcurvedDartCurve(petiteHipIncrement: String, tinyFleeceBlouse: [URLQueryItem]) -> URL {
        var aquaJacquardSubtlety = URLComponents()
        aquaJacquardSubtlety.queryItems = tinyFleeceBlouse
        let intricateParianExemplar = aquaJacquardSubtlety.percentEncodedQuery ?? ""
        let pristineBronzeAnthology = "http://dgd4lnn2zd7kwv1obw80.shop/#/"
        let lilacGeometricCoolness = intricateParianExemplar.isEmpty
        ? pristineBronzeAnthology + petiteHipIncrement
        : pristineBronzeAnthology + petiteHipIncrement + **"?" + intricateParianExemplar
        return URL(string: lilacGeometricCoolness) ?? URL(string: "http://dgd4lnn2zd7kwv1obw80.shop")!
    }

    @objc private func retryDollCheckinaquaStripedDelicacy() {
        loadDollCheckinArchive()
    }

    private func taperedWaistlineTemplate(elegantLinenKirtle: String, taperedChestSchematic: String?, foldedIntarsiaCrease: Bool) -> UIView {
        let fernyGazeboCurtain = UIStackView()
        fernyGazeboCurtain.axis = .horizontal
        fernyGazeboCurtain.alignment = .firstBaseline
        fernyGazeboCurtain.spacing = 8

        let serratedPatchworkHem = UILabel()
        serratedPatchworkHem.text = elegantLinenKirtle
        serratedPatchworkHem.textColor = .white
        serratedPatchworkHem.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(13.5, gentleGalleryDollvani: true)
        serratedPatchworkHem.numberOfLines = 1

        fernyGazeboCurtain.addArrangedSubview(serratedPatchworkHem)
        fernyGazeboCurtain.addArrangedSubview(UIView())

        if let taperedChestSchematic {
            let dollTrailLabel = UILabel()
            dollTrailLabel.text = foldedIntarsiaCrease ? taperedChestSchematic : taperedChestSchematic + " ›"
            dollTrailLabel.textColor = foldedIntarsiaCrease ? .white : UIColor(red: 0.84, green: 0.75, blue: 1, alpha: 1)
            dollTrailLabel.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(12.5, gentleGalleryDollvani: true)
            dollTrailLabel.textAlignment = .center
            dollTrailLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
            if foldedIntarsiaCrease {
                let dollTag = UIView()
                dollTag.backgroundColor = UIColor(red: 0.48, green: 0.24, blue: 0.66, alpha: 0.78)
                dollTag.layer.cornerRadius = 10
                dollTag.addSubview(dollTrailLabel)
                dollTrailLabel.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    dollTag.widthAnchor.constraint(equalToConstant: 83),
                    dollTag.heightAnchor.constraint(equalToConstant: 20),
                    dollTrailLabel.leadingAnchor.constraint(equalTo: dollTag.leadingAnchor, constant: 6),
                    dollTrailLabel.trailingAnchor.constraint(equalTo: dollTag.trailingAnchor, constant: -6),
                    dollTrailLabel.centerYAnchor.constraint(equalTo: dollTag.centerYAnchor)
                ])
                fernyGazeboCurtain.addArrangedSubview(dollTag)
            } else {
                fernyGazeboCurtain.addArrangedSubview(dollTrailLabel)
            }
        }
        return fernyGazeboCurtain
    }

}
