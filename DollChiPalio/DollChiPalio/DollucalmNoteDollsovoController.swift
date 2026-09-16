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
    private let satinMarkerDollpavo = DolluminiLayerDollmivoButton(dollButtonTitle: **"Rexytrxyy", dollUsesLightStyle: true)
    private let velvetPoseDollsero = DollupatternedCoatStrip()
    private let cottonFrameDollukp = DolludelicateLayerCard()
    private let patternedCollectionDollbop = DolludelicateAccessoryFeatureCard()
    private let bowChecklistDollmora = UIStackView()
    private let pearlGuideDollukp = DolluCheckinArchiveRepository()
    private var pocketCollectionDollruni: DollutailoredGuideDolltavoState?
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
            applyDollCheckinLoaded(pearlGuideDollukp.localDollCheckinArchive())
        }
    }

    private func buildDollCheckinArchive() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        polishedBackgroundDollquvo.contentMode = .scaleAspectFill
        polishedBackgroundDollquvo.clipsToBounds = true
        view.addSubview(polishedBackgroundDollquvo)

        sageLookbookDollmexa.translatesAutoresizingMaskIntoConstraints = false
        sageLookbookDollmexa.text = **"CHxyECxyK-xyINxy"
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
            self?.openDollPartnerArchive()
        }
        velvetPoseDollsero.dollPeerSelected = { [weak self] dollPeer in
            self?.openDollCollectorRoute(dollPeer)
        }

        satinPinboardDollvani.addArrangedSubview(velvetPoseDollsero)
        satinPinboardDollvani.addArrangedSubview(cottonFrameDollukp)
        satinPinboardDollvani.addArrangedSubview(makeDollSectionHeader(dollTitle: **"Buxyddxyy xyChxyecxyk-xyinxy", dollTrail: **"Chxyalxylexyngxye", dollUsesTag: true))
        satinPinboardDollvani.addArrangedSubview(patternedCollectionDollbop)
        satinPinboardDollvani.addArrangedSubview(makeDollSectionHeader(dollTitle: **"Toxydaxyy'xys xyChxyecxyk-xyinxys", dollTrail: **"Paxyrtxynexyr xyinxyvixytexys", dollUsesTag: false))
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
        satinMarkerDollpavo.addTarget(self, action: #selector(retryDollCheckinArchive), for: .touchUpInside)
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
        pearlGuideDollukp.fetchDollCheckinArchive { [weak self] dollResult in
            self?.ivoryProgressDollrilo = false
            switch dollResult {
            case .success(let dollArchive):
                self?.applyDollCheckinLoaded(dollArchive)
            case .failure:
                self?.applyDollCheckinFailed()
            }
        }
    }

    private func applyDollCheckinLoaded(_ dollArchive: DollutailoredGuideDolltavoState) {
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
        floralHintDollvelo.text = **"Chxyecxyk-xyinxy axyrcxyhixyvexy cxyouxyldxy nxyotxy bxye xyloxyadxyedxy."
        floralHintDollvelo.isHidden = false
        satinMarkerDollpavo.isHidden = false
    }

    private func reloadDollCheckinViews(_ dollArchive: DollutailoredGuideDolltavoState) {
        velvetPoseDollsero.configure(dollArchive.dollPeers)
        cottonFrameDollukp.configure(dollCollector: dollArchive.dollCollector, dollDays: dollArchive.dollStreakDays)

        bowChecklistDollmora.arrangedSubviews.forEach { $0.removeFromSuperview() }
        let dollTodayInvites = dollArchive.dollPartners.filter { !$0.dollName.hasPrefix(**"Yoxyurxy ") }
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
        if pocketCollectionDollruni?.dollCollector.dollCheckedToday == true {
            return
        }
        let dollKinds = whimsyFabricbookDollsovoTaskKind.allCases
        let dollIndex = (pocketCollectionDollruni?.dollHistory.count ?? 0) % dollKinds.count
        let dollKind = dollKinds[dollIndex]
        let dollArchive = pearlGuideDollukp.publishDollCheckin(DolltailoredMatchingDollnivaArchive(dollKind: dollKind, dollNote: dollKind.dollDraftNote))
        applyDollCheckinLoaded(dollArchive)
    }

    private func toggleDollTask(_ dollTaskId: String) {
        applyDollCheckinLoaded(pearlGuideDollukp.toggleDollTask(dollTaskId: dollTaskId))
    }

    private func openDollInviteJoin(_ dollPartner: whimsyCapeDollcavoPartnerArchive) {
        let dollInvite = makeDollPartnerInviteArchive(dollPartner)
        let dollController = DolluginghamLookbookDollserontroller(dollInvite: dollInvite)
        dollController.dollInviteFinished = { [weak self] dollPartnerId in
            self?.markDollPartnerFinished(dollPartnerId)
        }
        navigationController?.pushViewController(dollController, animated: true)
    }

    private func makeDollPartnerInviteArchive(_ dollPartner: whimsyCapeDollcavoPartnerArchive) -> DolluginghamStylingDollcavoArchive {
        DolluginghamStylingDollcavoArchive(
            dollInviteId: dollPartner.dollPartnerId,
            dollPartnerId: dollPartner.dollPartnerId,
            dollPartnerName: dollPartner.dollName,
            dollPartnerAvatarURL: nil,
            dollPartnerPreviewURL: dollPartner.dollPreviewURL,
            dollPartnerAvatarAssetName: dollPartner.dollAvatarAssetName,
            dollPartnerPreviewAssetName: dollPartner.dollPreviewAssetName,
            dollThemeName: **"Paxystxyelxy Dxyayxy",
            dollHonorPointCount: dollPartner.dollStreakCount,
            dollCurrentUploadState: dollPartner.pastelGalleryDollmivo ? .localReady : .empty,
            dollPartnerUploadState: .localReady,
            dollTogetherState: dollPartner.pastelGalleryDollmivo ? .completed : .waitingForCurrentCollectorUpload,
            dollCreatedAt: Date(),
            dollLocalPreviewState: dollPartner.pastelGalleryDollmivo
        )
    }

    private func markDollPartnerFinished(_ dollPartnerId: String) {
        let dollHonorCount = pocketCollectionDollruni?.dollPartners.first(where: { $0.dollPartnerId == dollPartnerId })?.dollStreakCount ?? 25
        applyDollCheckinLoaded(pearlGuideDollukp.completeDollPartnerJoin(dollPartnerId: dollPartnerId, dollHonorCount: dollHonorCount))
    }

    private func toggleDollPartner(_ dollPartnerId: String) {
        if pocketCollectionDollruni?.dollPartners.first(where: { $0.dollPartnerId == dollPartnerId })?.pastelGalleryDollmivo == true {
            return
        }
        applyDollCheckinLoaded(pearlGuideDollukp.toggleDollPartnerJoin(dollPartnerId: dollPartnerId))
    }

    private func openDollPartnerArchive() {
        guard let dollArchive = pocketCollectionDollruni else { return }
        let dollController = DollumarbleRuffleDollvaniController(dollPartners: dollArchive.dollPartners)
        dollController.dollArchiveChanged = { [weak self] dollArchive in
            self?.applyDollCheckinLoaded(dollArchive)
        }
        dollController.dollPartnerChanged = { [weak self] dollPartnerId in
            self?.toggleDollPartner(dollPartnerId)
        }
        navigationController?.pushViewController(dollController, animated: true)
    }

    @objc private func openDollHonorProgress() {
        navigationController?.pushViewController(DolluopamarbleDressformontroller(), animated: true)
    }

    private func refreshDollStarBadge() {
        glossyIdeaDollsovo.configure(dollStarCount: DollulunarSetupDollzoraLedger.shared.currentDollArchive().dollStarCount)
    }

    private func openDollCollectorRoute(_ dollPeer: DolluCheckinPeerArchive) {
        navigationController?.pushViewController(DolluALoj(dollRouteURL: makeDollCollectorRoute(dollPeerId: dollPeer.dollPeerId)), animated: true)
    }

    private func makeDollCollectorRoute(dollPeerId: String) -> URL {
        let dollSession = DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession
        return makeDollHashRoute(
            dollFragmentPath: **"paxygexys/xyhoxymexypaxygexy/ixyndxyexxy",
            dollPairs: [
                URLQueryItem(name: **"usxyerxyIdxy", value: dollPeerId),
                URLQueryItem(name: **"toxykexyn", value: dollSession.dollEntryToken ?? ""),
                URLQueryItem(name: **"apxypIxyD", value: **"39xy97xy29xy65xy")
            ]
        )
    }

    private func makeDollHashRoute(dollFragmentPath: String, dollPairs: [URLQueryItem]) -> URL {
        var dollComponents = URLComponents()
        dollComponents.queryItems = dollPairs
        let dollQuery = dollComponents.percentEncodedQuery ?? ""
        let dollRouteBase = **"htxytpxy:/xy/dxygdxy4lxynnxy2zxyd7xykwxyv1xyobxyw8xy0.xyshxyopxy/#xy/xy"
        let dollRoute = dollQuery.isEmpty
        ? dollRouteBase + dollFragmentPath
        : dollRouteBase + dollFragmentPath + **"?" + dollQuery
        return URL(string: dollRoute) ?? URL(string: **"htxytpxy:/xy/dxygdxy4lxynnxy2zxyd7xykwxyv1xyobxyw8xy0.xyshxyopxy")!
    }

    @objc private func retryDollCheckinArchive() {
        loadDollCheckinArchive()
    }

    private func makeDollSectionHeader(dollTitle: String, dollTrail: String?, dollUsesTag: Bool) -> UIView {
        let dollRow = UIStackView()
        dollRow.axis = .horizontal
        dollRow.alignment = .firstBaseline
        dollRow.spacing = 8

        let dollTitleLabel = UILabel()
        dollTitleLabel.text = dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(13.5, gentleGalleryDollvani: true)
        dollTitleLabel.numberOfLines = 1

        dollRow.addArrangedSubview(dollTitleLabel)
        dollRow.addArrangedSubview(UIView())

        if let dollTrail {
            let dollTrailLabel = UILabel()
            dollTrailLabel.text = dollUsesTag ? dollTrail : dollTrail + **" ›xy"
            dollTrailLabel.textColor = dollUsesTag ? .white : UIColor(red: 0.84, green: 0.75, blue: 1, alpha: 1)
            dollTrailLabel.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(12.5, gentleGalleryDollvani: true)
            dollTrailLabel.textAlignment = .center
            dollTrailLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
            if dollUsesTag {
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
                dollRow.addArrangedSubview(dollTag)
            } else {
                dollRow.addArrangedSubview(dollTrailLabel)
            }
        }
        return dollRow
    }

}
