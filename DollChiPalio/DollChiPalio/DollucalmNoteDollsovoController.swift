import UIKit

final class DollucalmNoteDollsovoController: UIViewController {
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let sageLookbookDollmexa = UILabel()
    private let glossyIdeaDollsovo = DolludelicateBonnetBadgeButton()
    private let calmNoteDollsovo = UIActivityIndicatorView(style: .large)
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
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshDollCheckinArchiveForEntry()
    }

    private func buildDollCheckinArchive() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        sageLookbookDollmexa.translatesAutoresizingMaskIntoConstraints = false
        sageLookbookDollmexa.text = **"CHxyECxyK-xyINxy"
        sageLookbookDollmexa.textColor = .white
        sageLookbookDollmexa.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 32, dollFontWeight: .heavy)
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
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 14
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        bowChecklistDollmora.axis = .vertical
        bowChecklistDollmora.spacing = 10

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
        satinPinboardDollvani.addArrangedSubview(makeDollSectionHeader(dollTitle: **"Buxyddxyy xyChxyecxyk-xyinxy", dollTrail: **"Chxyalxylexyngxye"))
        satinPinboardDollvani.addArrangedSubview(patternedCollectionDollbop)
        satinPinboardDollvani.addArrangedSubview(makeDollSectionHeader(dollTitle: **"Toxydaxyy'xys xyChxyecxyk-xyinxys", dollTrail: **"Paxyrtxynexyr xyinxyvixytexys"))
        satinPinboardDollvani.addArrangedSubview(bowChecklistDollmora)

        calmNoteDollsovo.translatesAutoresizingMaskIntoConstraints = false
        calmNoteDollsovo.color = .white
        calmNoteDollsovo.hidesWhenStopped = true
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

            sageLookbookDollmexa.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            sageLookbookDollmexa.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dollSideInset),
            sageLookbookDollmexa.trailingAnchor.constraint(lessThanOrEqualTo: glossyIdeaDollsovo.leadingAnchor, constant: -12),

            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -dollSideInset),
            glossyIdeaDollsovo.centerYAnchor.constraint(equalTo: sageLookbookDollmexa.centerYAnchor),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant:120),
            glossyIdeaDollsovo.heightAnchor.constraint(equalToConstant: 38),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: sageLookbookDollmexa.bottomAnchor, constant: 12),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: dollSideInset),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -dollSideInset),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -(dollSideInset * 2)),

            calmNoteDollsovo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calmNoteDollsovo.centerYAnchor.constraint(equalTo: view.centerYAnchor),

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
        calmNoteDollsovo.startAnimating()
    }

    private func refreshDollCheckinArchiveForEntry() {
        if pocketCollectionDollruni == nil {
            applyDollCheckinLoading()
        }
        loadDollCheckinArchive()
    }

    private func loadDollCheckinArchive() {
        guard !ivoryProgressDollrilo else { return }
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
        calmNoteDollsovo.stopAnimating()
        ribbonDisplayDollrevo.alpha = 1
        floralHintDollvelo.isHidden = true
        satinMarkerDollpavo.isHidden = true
        refreshDollStarBadge()
        reloadDollCheckinViews(dollArchive)
    }

    private func applyDollCheckinFailed() {
        calmNoteDollsovo.stopAnimating()
        ribbonDisplayDollrevo.alpha = 1
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
        let dollRouteBase = **"htxytpxy:/xy/nxy7vxy1mxy5bxy9cxy3xxy2zxy4.xyshxyopxy/#xy/"
        let dollRoute = dollQuery.isEmpty
        ? dollRouteBase + dollFragmentPath
        : dollRouteBase + dollFragmentPath + **"?" + dollQuery
        return URL(string: dollRoute) ?? URL(string: **"htxytpxy:/xy/nxy7vxy1mxy5bxy9cxy3xxy2zxy4.xyshxyopxy")!
    }

    @objc private func retryDollCheckinArchive() {
        applyDollCheckinLoading()
        loadDollCheckinArchive()
    }

    private func makeDollSectionHeader(dollTitle: String, dollTrail: String?) -> UIView {
        let dollRow = UIStackView()
        dollRow.axis = .horizontal
        dollRow.alignment = .firstBaseline
        dollRow.spacing = 8

        let dollTitleLabel = UILabel()
        dollTitleLabel.text = dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        dollTitleLabel.numberOfLines = 1

        dollRow.addArrangedSubview(dollTitleLabel)
        dollRow.addArrangedSubview(UIView())

        if let dollTrail {
            let dollTrailLabel = UILabel()
            dollTrailLabel.text = dollTrail + **" ›xy"
            dollTrailLabel.textColor = UIColor(red: 0.84, green: 0.75, blue: 1, alpha: 1)
            dollTrailLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
            dollTrailLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
            dollRow.addArrangedSubview(dollTrailLabel)
        }
        return dollRow
    }

}
