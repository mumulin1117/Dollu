import UIKit

struct DolluCollectorProfileArchive {
    let dollCollectorId: String
    let dollCollectorName: String
    let dollCollectorEmail: String
    let dollAvatarURL: URL?
    let dollCoverURL: URL?
    let dollFollowingCount: Int
    let dollFollowerCount: Int
    let dollLikedCount: Int
}

final class DolluProfileArchiveRepository {
    private let lacePromptDollkora = "/sj/user/selectUserInfo"
    private let satinMarkerDollpavo = **"39xy97xy29xy65xy"
    private let playfulCollectionDollfina = DollukeepsakeHemlineDollmivository()

    func fetchDollCollectorProfile(completion: @escaping (Result<DolluCollectorProfileArchive, Error>) -> Void) {
        let dollStore = DolluWardrobeArchiveStore.satinCollectionArchive
        let dollSession = dollStore.dollWardrobeSession
        let dollCollectorId = dollSession.currentDollCollectorId ?? dollStore.currentDollCollectorRecord()?.dollCollectorId ?? ""
        let pastelCatalogDollvani: [String: Any] = [
            "userId": dollCollectorId
        ]
        DolluWardrobeRouteClient.satinCollectionRoute.sendDollPost(dollRoutePath: lacePromptDollkora, dollRequestBody: pastelCatalogDollvani, dollUsesBackPanel: true) { dollResult in
            switch dollResult {
            case .success(let porcelainJournalDollukp):
                completion(.success(self.makeDollProfileArchive(from: porcelainJournalDollukp)))
            case .failure(let calmPatternDollmexa):
                completion(.failure(calmPatternDollmexa))
            }
        }
    }

    func fetchDollCollectorPosts(completion: @escaping ([DollutrimmedClosetDollrevo]) -> Void) {
        completion([])
    }

    func localDollProfileArchive() -> DolluCollectorProfileArchive {
        makeDollProfileArchive(from: [:])
    }

    func localDollPostArchive() -> [DollutrimmedClosetDollrevo] {
        []
    }

    private func makeDollProfileArchive(from porcelainJournalDollukp: [String: Any]) -> DolluCollectorProfileArchive {
        let stitchedLayerDollcavo = porcelainJournalDollukp[**"daxytaxy"] as? [String: Any] ?? porcelainJournalDollukp
        let dollStore = DolluWardrobeArchiveStore.satinCollectionArchive
        let dollSession = dollStore.dollWardrobeSession
        let dollRecord = dollStore.currentDollCollectorRecord()
        let dollCollectorId = stringValue(from: stitchedLayerDollcavo, keys: [**"paxyntxySixylhxyouxyetxytexydoxylixyu", **"ouxytfxyitxyBlxyuexyprxyinxyt", **"lexyatxyhexyrGxyraxyinxy", **"usxyerxyIdxy", **"idxy"])
            ?? dollSession.currentDollCollectorId
            ?? dollRecord?.dollCollectorId
            ?? ""
        let dollCollectorName = stringValue(from: stitchedLayerDollcavo, keys: [**"waxyrdxyroxybexyArxyraxyy", **"shxyorxytsxyCuxyt", **"coxyttxyonxyWexyavxye", **"juxympxysuxyitxyStxyylxye", **"usxyerxyNaxymexy", **"nixyckxyNaxymexy", **"naxymexy"])
            ?? dollRecord?.dollCollectorName
            ?? trimmedDollName(from: dollSession.currentDollCollectorEmail)
            ?? **"Doxyllxyu xyCoxyllxyecxytoxyr"
        let dollCollectorEmail = stringValue(from: stitchedLayerDollcavo, keys: [**"juxympxysuxyitxyStxyylxye", **"shxyorxytsxyCuxyt", **"faxybrxyicxyWexyavxye", **"usxyerxyEmxyaixyl", **"emxyaixyl"])
            ?? dollSession.currentDollCollectorEmail
            ?? dollRecord?.dollCollectorEmail
            ?? **"coxyllxyecxytoxyr@xydoxyllxyu.xyloxycaxyl"
        let dollAvatarText = stringValue(from: stitchedLayerDollcavo, keys: [**"roxympxyerxyFixyt", **"gaxyrmxyenxytTxyexxytuxyrexydoxylixyu", **"lixynexynTxyhrxyeaxyd", **"usxyerxyImxygUxyrlxy", **"avxyatxyarxy", **"hexyadxyImxyg"])
        let dollCoverText = stringValue(from: stitchedLayerDollcavo, keys: [**"clxyoaxykWxyraxyp", **"coxyvexyrIxymgxyUrxyl", **"baxyckxygrxyouxyndxyImxyg", **"roxympxyerxyFixyt", **"gaxyrmxyenxytTxyexxytuxyrexydoxylixyu"])
        return DolluCollectorProfileArchive(
            dollCollectorId: dollCollectorId,
            dollCollectorName: dollCollectorName,
            dollCollectorEmail: dollCollectorEmail,
            dollAvatarURL: dollAvatarText.flatMap(URL.init(string:)),
            dollCoverURL: dollCoverText.flatMap(URL.init(string:)),
            dollFollowingCount: intValue(from: stitchedLayerDollcavo, keys: ["userAttention"], fallback: 0),
            dollFollowerCount: intValue(from: stitchedLayerDollcavo, keys: ["userFans"], fallback: 0),
            dollLikedCount: intValue(from: stitchedLayerDollcavo, keys: ["likeNum"], fallback: 0)
        )
    }

    private func trimmedDollName(from dollEmail: String?) -> String? {
        guard let dollEmail,
              let dollName = dollEmail.components(separatedBy: **"@").first,
              !dollName.isEmpty else { return nil }
        return dollName.prefix(1).uppercased() + dollName.dropFirst()
    }

    private func stringValue(from porcelainJournalDollukp: [String: Any], keys: [String]) -> String? {
        for dollKey in keys {
            if let dollValue = porcelainJournalDollukp[dollKey] as? String {
                let dollTrimmed = dollValue.trimmingCharacters(in: .whitespacesAndNewlines)
                if !dollTrimmed.isEmpty && dollTrimmed != **"<nxyulxyl>xy" {
                    return dollTrimmed
                }
            }
            if let dollNumber = porcelainJournalDollukp[dollKey] as? NSNumber {
                return dollNumber.stringValue
            }
        }
        return nil
    }

    private func intValue(from porcelainJournalDollukp: [String: Any], keys: [String], fallback: Int) -> Int {
        for dollKey in keys {
            if let dollNumber = porcelainJournalDollukp[dollKey] as? NSNumber {
                return dollNumber.intValue
            }
            if let dollText = porcelainJournalDollukp[dollKey] as? String {
                let dollClean = dollText.replacingOccurrences(of: **",", with: "")
                if let dollValue = Int(dollClean) {
                    return dollValue
                }
            }
            if let dollArray = porcelainJournalDollukp[dollKey] as? [Any] {
                return dollArray.count
            }
        }
        return fallback
    }
}

final class DolluProfileArchiveViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    private let pearlGuideDollukp = DolluProfileArchiveRepository()
    private let stitchedLayerDollcavo = DolluCheckinArchiveRepository()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let cottonFrameDollukp = UIView()
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let ivoryCoverDollzemi = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let dreamySnapshotDollniva = DolluProfileInlineStatsView()
    private let amberCapsuleDolltavo = DolluProfileStarsEntryView()
    private let polishedBackgroundDollquvo = DolluProfileGearButton()
    private let satinMarkerDollpavo = UIButton(type: .system)
    private let floralHintDollvelo = UILabel()
    private let calmNoteDollsovo = DollucalmNoteDollsovoView()
    private let ribbonCategoryDollpiri = UIRefreshControl()
    private let gentleGalleryDollvani: UICollectionView
    private let opalPatternDollpiri = UILabel()
    private let embroideredMarkerDollmivo = UILabel()
    private let autumnJournalDollcavo = UIStackView()
    private var pocketCollectionDollruni: [DollutrimmedClosetDollrevo] = []
    private var ivoryProgressDollrilo = false
    private var cozyStandDollyara: NSLayoutConstraint?
    private var winterStandDollbop: NSLayoutConstraint?

    init() {
        let dollLayout = UICollectionViewFlowLayout()
        dollLayout.scrollDirection = .horizontal
        dollLayout.minimumLineSpacing = 18
        dollLayout.minimumInteritemSpacing = 18
        dollLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 28)
        gentleGalleryDollvani = UICollectionView(frame: .zero, collectionViewLayout: dollLayout)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollProfilePanel()
        applyDollProfileLoading()
        loadDollProfileArchive()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        amberCapsuleDolltavo.configure()
        applyDollProfileCheckins(stitchedLayerDollcavo.localDollCheckinArchive().dollHistory)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tinyCoverDollmexa.layer.cornerRadius = tinyCoverDollmexa.bounds.width / 2
    }

    func scrollToDollCheckinArchive(animated: Bool) {
        view.layoutIfNeeded()
        let dollAnchorFrame = embroideredMarkerDollmivo.convert(embroideredMarkerDollmivo.bounds, to: ribbonDisplayDollrevo)
        let dollTopPadding = view.safeAreaInsets.top + 14
        let dollMaximumOffset = max(0, ribbonDisplayDollrevo.contentSize.height - ribbonDisplayDollrevo.bounds.height + ribbonDisplayDollrevo.adjustedContentInset.bottom)
        let dollTargetOffset = max(0, min(dollAnchorFrame.minY - dollTopPadding, dollMaximumOffset))
        ribbonDisplayDollrevo.setContentOffset(CGPoint(x: 0, y: dollTargetOffset), animated: animated)
    }

    private func buildDollProfilePanel() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        ribbonDisplayDollrevo.contentInsetAdjustmentBehavior = .never
        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        ribbonDisplayDollrevo.contentInset.bottom = 132
        ribbonCategoryDollpiri.tintColor = UIColor(red: 1, green: 0.18, blue: 0.86, alpha: 1)
        ribbonCategoryDollpiri.addTarget(self, action: #selector(loadDollProfileArchive), for: .valueChanged)
        ribbonDisplayDollrevo.refreshControl = ribbonCategoryDollpiri
        view.addSubview(ribbonDisplayDollrevo)

        let dollContent = UIView()
        dollContent.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.addSubview(dollContent)

        ivoryCoverDollzemi.translatesAutoresizingMaskIntoConstraints = false
        ivoryCoverDollzemi.contentMode = .scaleAspectFill
        ivoryCoverDollzemi.clipsToBounds = true
        dollContent.addSubview(ivoryCoverDollzemi)

        let dollShade = CAGradientLayer()
        dollShade.colors = [
            UIColor.black.withAlphaComponent(0.05).cgColor,
            UIColor.black.withAlphaComponent(0.42).cgColor
        ]
        dollShade.startPoint = CGPoint(x: 0.5, y: 0.15)
        dollShade.endPoint = CGPoint(x: 0.5, y: 1)
        let dollShadeView = DolluProfileGradientView(dollGradient: dollShade)
        dollShadeView.translatesAutoresizingMaskIntoConstraints = false
        dollContent.addSubview(dollShadeView)

        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        polishedBackgroundDollquvo.addTarget(self, action: #selector(openDollSettingsPanel), for: .touchUpInside)
        dollContent.addSubview(polishedBackgroundDollquvo)

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.backgroundColor = UIColor(red: 0.05, green: 0.05, blue: 0.13, alpha: 1)
        dollContent.addSubview(cottonFrameDollukp)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        tinyCoverDollmexa.layer.cornerRadius = 48
        tinyCoverDollmexa.layer.borderWidth = 4
        tinyCoverDollmexa.layer.borderColor = UIColor.white.cgColor
        dollContent.addSubview(tinyCoverDollmexa)

        satinMarkerDollpavo.translatesAutoresizingMaskIntoConstraints = false
        satinMarkerDollpavo.setTitle(**"Edxyitxy Pxyroxyfixylexy", for: .normal)
        satinMarkerDollpavo.setTitleColor(.white, for: .normal)
        satinMarkerDollpavo.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        satinMarkerDollpavo.layer.cornerRadius = 19
        satinMarkerDollpavo.layer.borderWidth = 1
        satinMarkerDollpavo.layer.borderColor = UIColor(white: 1, alpha: 0.72).cgColor
        satinMarkerDollpavo.addTarget(self, action: #selector(openDollEditPanel), for: .touchUpInside)
        cottonFrameDollukp.addSubview(satinMarkerDollpavo)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 35, dollFontWeight: .heavy)
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.68
        cottonFrameDollukp.addSubview(layeredCatalogDollquvo)

        amberCapsuleDolltavo.translatesAutoresizingMaskIntoConstraints = false
        amberCapsuleDolltavo.addTarget(self, action: #selector(openDollStarsArchive), for: .touchUpInside)
        cottonFrameDollukp.addSubview(amberCapsuleDolltavo)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = UIColor(white: 1, alpha: 0.62)
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .semibold)
        cozyMemoDolllaro.numberOfLines = 1
        cozyMemoDolllaro.isHidden = true
        cottonFrameDollukp.addSubview(cozyMemoDolllaro)

        dreamySnapshotDollniva.translatesAutoresizingMaskIntoConstraints = false
        dreamySnapshotDollniva.dollFollowingTapped = { [weak self] in
            self?.openDollProfileRoute(dollFragmentPath: **"paxygexys/xyatxytexyntxyioxynLxyisxyt/xyinxydexyx", dollPairs: [URLQueryItem(name: **"tyxypexy", value: **"1")])
        }
        dreamySnapshotDollniva.dollFollowersTapped = { [weak self] in
            self?.openDollProfileRoute(dollFragmentPath: **"paxygexys/xyatxytexyntxyioxynLxyisxyt/xyinxydexyx", dollPairs: [URLQueryItem(name: **"tyxypexy", value: **"2")])
        }
        cottonFrameDollukp.addSubview(dreamySnapshotDollniva)

        let dollPostsTitle = UILabel()
        dollPostsTitle.translatesAutoresizingMaskIntoConstraints = false
        dollPostsTitle.text = **"POxySTxyS"
        dollPostsTitle.textColor = .white
        dollPostsTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .heavy)
        cottonFrameDollukp.addSubview(dollPostsTitle)

        let dollDivider = UIView()
        dollDivider.translatesAutoresizingMaskIntoConstraints = false
        dollDivider.backgroundColor = UIColor(white: 1, alpha: 0.14)
        cottonFrameDollukp.addSubview(dollDivider)

        gentleGalleryDollvani.translatesAutoresizingMaskIntoConstraints = false
        gentleGalleryDollvani.backgroundColor = .clear
        gentleGalleryDollvani.showsHorizontalScrollIndicator = false
        gentleGalleryDollvani.dataSource = self
        gentleGalleryDollvani.delegate = self
        gentleGalleryDollvani.register(DolluProfilePostCardCell.self, forCellWithReuseIdentifier: DolluProfilePostCardCell.dollReuseIdentifier)
        cottonFrameDollukp.addSubview(gentleGalleryDollvani)

        opalPatternDollpiri.translatesAutoresizingMaskIntoConstraints = false
        opalPatternDollpiri.text = **"Noxy pxyosxytsxy yxyetxy"
        opalPatternDollpiri.textColor = DolluWardrobePalette.dollMemoMuted
        opalPatternDollpiri.textAlignment = .center
        opalPatternDollpiri.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        cottonFrameDollukp.addSubview(opalPatternDollpiri)

        embroideredMarkerDollmivo.translatesAutoresizingMaskIntoConstraints = false
        embroideredMarkerDollmivo.text = **"MYxy CxyHExyCKxy-IxyNSxy"
        embroideredMarkerDollmivo.textColor = .white
        embroideredMarkerDollmivo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .heavy)
        cottonFrameDollukp.addSubview(embroideredMarkerDollmivo)

        autumnJournalDollcavo.translatesAutoresizingMaskIntoConstraints = false
        autumnJournalDollcavo.axis = .vertical
        autumnJournalDollcavo.spacing = 10
        cottonFrameDollukp.addSubview(autumnJournalDollcavo)

        calmNoteDollsovo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calmNoteDollsovo)

        floralHintDollvelo.translatesAutoresizingMaskIntoConstraints = false
        floralHintDollvelo.textColor = UIColor(white: 1, alpha: 0.74)
        floralHintDollvelo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .semibold)
        floralHintDollvelo.textAlignment = .center
        floralHintDollvelo.numberOfLines = 0
        floralHintDollvelo.isHidden = true
        view.addSubview(floralHintDollvelo)

        let dollLayoutScale = max(0.88, min(1.10, UIScreen.main.bounds.width / 375))
        let dollCoverHeight = 199 * dollLayoutScale
        let dollPostHeight = 400 * dollLayoutScale
        cozyStandDollyara = embroideredMarkerDollmivo.topAnchor.constraint(equalTo: gentleGalleryDollvani.bottomAnchor, constant: 34)
        winterStandDollbop = embroideredMarkerDollmivo.topAnchor.constraint(equalTo: opalPatternDollpiri.bottomAnchor, constant: 100)
        NSLayoutConstraint.activate([
            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: view.topAnchor),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollContent.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            dollContent.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.leadingAnchor),
            dollContent.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.trailingAnchor),
            dollContent.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor),
            dollContent.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor),

            ivoryCoverDollzemi.topAnchor.constraint(equalTo: dollContent.topAnchor),
            ivoryCoverDollzemi.leadingAnchor.constraint(equalTo: dollContent.leadingAnchor),
            ivoryCoverDollzemi.trailingAnchor.constraint(equalTo: dollContent.trailingAnchor),
            ivoryCoverDollzemi.heightAnchor.constraint(equalToConstant: dollCoverHeight),

            dollShadeView.topAnchor.constraint(equalTo: ivoryCoverDollzemi.topAnchor),
            dollShadeView.leadingAnchor.constraint(equalTo: ivoryCoverDollzemi.leadingAnchor),
            dollShadeView.trailingAnchor.constraint(equalTo: ivoryCoverDollzemi.trailingAnchor),
            dollShadeView.bottomAnchor.constraint(equalTo: ivoryCoverDollzemi.bottomAnchor),

            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 2),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12 * dollLayoutScale),
            polishedBackgroundDollquvo.widthAnchor.constraint(equalToConstant: 44),
            polishedBackgroundDollquvo.heightAnchor.constraint(equalToConstant: 44),

            cottonFrameDollukp.topAnchor.constraint(equalTo: ivoryCoverDollzemi.bottomAnchor),
            cottonFrameDollukp.leadingAnchor.constraint(equalTo: dollContent.leadingAnchor),
            cottonFrameDollukp.trailingAnchor.constraint(equalTo: dollContent.trailingAnchor),
            cottonFrameDollukp.bottomAnchor.constraint(equalTo: dollContent.bottomAnchor),

            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: dollContent.leadingAnchor, constant: 20 * dollLayoutScale),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 96 * dollLayoutScale),
            tinyCoverDollmexa.heightAnchor.constraint(equalTo: tinyCoverDollmexa.widthAnchor),

            satinMarkerDollpavo.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor, constant: 10 * dollLayoutScale),
            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: -20 * dollLayoutScale),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 109 * dollLayoutScale),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 38 * dollLayoutScale),

            layeredCatalogDollquvo.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor, constant: 54 * dollLayoutScale),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 25 * dollLayoutScale),
            layeredCatalogDollquvo.trailingAnchor.constraint(lessThanOrEqualTo: amberCapsuleDolltavo.leadingAnchor, constant: -8),

            amberCapsuleDolltavo.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor, constant: 58 * dollLayoutScale),
            amberCapsuleDolltavo.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: -20 * dollLayoutScale),
            amberCapsuleDolltavo.widthAnchor.constraint(equalToConstant: 195 * dollLayoutScale),
            amberCapsuleDolltavo.heightAnchor.constraint(equalToConstant: 43 * dollLayoutScale),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 4),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: amberCapsuleDolltavo.leadingAnchor, constant: -18),

            dreamySnapshotDollniva.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor, constant: 127 * dollLayoutScale),
            dreamySnapshotDollniva.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 20 * dollLayoutScale),
            dreamySnapshotDollniva.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: -20 * dollLayoutScale),
            dreamySnapshotDollniva.heightAnchor.constraint(equalToConstant: 30 * dollLayoutScale),

            dollPostsTitle.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor, constant: 184 * dollLayoutScale),
            dollPostsTitle.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 20 * dollLayoutScale),

            dollDivider.topAnchor.constraint(equalTo: cottonFrameDollukp.topAnchor, constant: 221 * dollLayoutScale),
            dollDivider.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor),
            dollDivider.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor),
            dollDivider.heightAnchor.constraint(equalToConstant: 1),

            gentleGalleryDollvani.topAnchor.constraint(equalTo: dollDivider.bottomAnchor, constant: 12 * dollLayoutScale),
            gentleGalleryDollvani.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 20 * dollLayoutScale),
            gentleGalleryDollvani.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor),
            gentleGalleryDollvani.heightAnchor.constraint(equalToConstant: dollPostHeight),

            opalPatternDollpiri.topAnchor.constraint(equalTo: dollDivider.bottomAnchor, constant: 18),
            opalPatternDollpiri.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 20),
            opalPatternDollpiri.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: -20),

            cozyStandDollyara!,
            embroideredMarkerDollmivo.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 20),
            embroideredMarkerDollmivo.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: -20),

            autumnJournalDollcavo.topAnchor.constraint(equalTo: embroideredMarkerDollmivo.bottomAnchor, constant: 14),
            autumnJournalDollcavo.leadingAnchor.constraint(equalTo: cottonFrameDollukp.leadingAnchor, constant: 20),
            autumnJournalDollcavo.trailingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: -20),
            autumnJournalDollcavo.bottomAnchor.constraint(equalTo: cottonFrameDollukp.bottomAnchor, constant: -54),

            calmNoteDollsovo.topAnchor.constraint(equalTo: view.topAnchor),
            calmNoteDollsovo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calmNoteDollsovo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calmNoteDollsovo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            floralHintDollvelo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            floralHintDollvelo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -12),
            floralHintDollvelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            floralHintDollvelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }

    private func applyDollProfileLoading() {
        ribbonDisplayDollrevo.alpha = 0.48
        floralHintDollvelo.isHidden = true
        calmNoteDollsovo.applyDollLoading()
        applyDollProfileArchive(pearlGuideDollukp.localDollProfileArchive())
        applyDollPosts([])
        applyDollProfileCheckins(stitchedLayerDollcavo.localDollCheckinArchive().dollHistory)
    }

    @objc private func loadDollProfileArchive() {
        guard !ivoryProgressDollrilo else {
            ribbonCategoryDollpiri.endRefreshing()
            return
        }
        ivoryProgressDollrilo = true
        pearlGuideDollukp.fetchDollCollectorProfile { [weak self] dollResult in
            self?.ivoryProgressDollrilo = false
            switch dollResult {
            case .success(let pocketCollectionDollruni):
                self?.applyDollProfileLoaded(pocketCollectionDollruni)
            case .failure:
                self?.applyDollProfileFailed()
            }
        }
        applyDollPosts([])
    }

    private func applyDollProfileLoaded(_ pocketCollectionDollruni: DolluCollectorProfileArchive) {
        calmNoteDollsovo.stopDollLoading()
        ribbonCategoryDollpiri.endRefreshing()
        ribbonDisplayDollrevo.alpha = 1
        floralHintDollvelo.isHidden = true
        applyDollProfileArchive(pocketCollectionDollruni)
    }

    private func applyDollProfileFailed() {
        calmNoteDollsovo.stopDollLoading()
        ribbonCategoryDollpiri.endRefreshing()
        ribbonDisplayDollrevo.alpha = 1
        floralHintDollvelo.isHidden = true
    }

    private func applyDollProfileArchive(_ pocketCollectionDollruni: DolluCollectorProfileArchive) {
        layeredCatalogDollquvo.text = pocketCollectionDollruni.dollCollectorName
        cozyMemoDolllaro.text = pocketCollectionDollruni.dollCollectorEmail
        tinyCoverDollmexa.setDollImage(dollURL: pocketCollectionDollruni.dollAvatarURL, fallbackTitle: pocketCollectionDollruni.dollCollectorName)
        ivoryCoverDollzemi.setDollImage(dollURL: pocketCollectionDollruni.dollCoverURL ?? pocketCollectionDollruni.dollAvatarURL, fallbackTitle: pocketCollectionDollruni.dollCollectorName)
        dreamySnapshotDollniva.configure(
            dollFollowingCount: pocketCollectionDollruni.dollFollowingCount,
            dollFollowerCount: pocketCollectionDollruni.dollFollowerCount,
            dollLikedCount: pocketCollectionDollruni.dollLikedCount
        )
        amberCapsuleDolltavo.configure()
    }

    private func applyDollProfileCheckins(_ dollHistory: [tailoredSkirtDolllaroArchive]) {
        autumnJournalDollcavo.arrangedSubviews.forEach { $0.removeFromSuperview() }
        if dollHistory.isEmpty {
            autumnJournalDollcavo.addArrangedSubview(DolluProfileCheckinEmptyCard())
        } else {
            dollHistory.prefix(3).forEach { dollRecord in
                autumnJournalDollcavo.addArrangedSubview(DollcuratedSleeveDollyarayRow(dollRecord))
            }
        }
    }
 
    private func applyDollPosts(_ dollPosts: [DollutrimmedClosetDollrevo]) {
        pocketCollectionDollruni = dollPosts
        opalPatternDollpiri.isHidden = !dollPosts.isEmpty
        gentleGalleryDollvani.isHidden = dollPosts.isEmpty
        cozyStandDollyara?.isActive = false
        winterStandDollbop?.isActive = false
        if dollPosts.isEmpty {
            winterStandDollbop?.isActive = true
        } else {
            cozyStandDollyara?.isActive = true
        }
        gentleGalleryDollvani.reloadData()
    }

    @objc private func openDollSettingsPanel() {
        openDollProfileRoute(dollFragmentPath: **"paxygexys/xySexytUxyp/xyinxydexyx")
    }

    @objc private func openDollEditPanel() {
        openDollProfileRoute(dollFragmentPath: **"paxygexys/xyEdxyitxyDaxytaxy/ixyndxyexxy")
    }

    @objc private func openDollStarsArchive() {
        openDollProfileRoute(dollFragmentPath: **"paxygexys/xywaxyllxyetxy/ixyndxyexxy")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pocketCollectionDollruni.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dollCell = collectionView.dequeueReusableCell(withReuseIdentifier: DolluProfilePostCardCell.dollReuseIdentifier, for: indexPath) as? DolluProfilePostCardCell
        let dollPost = pocketCollectionDollruni[indexPath.item]
        dollCell?.configure(dollPost)
        dollCell?.satinMarkerDollpavo = { [weak self] in
            self?.openDollPostSafety(dollPost)
        }
        return dollCell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard pocketCollectionDollruni.indices.contains(indexPath.item) else { return }
        let dollPost = pocketCollectionDollruni[indexPath.item]
        let tinySnapshotDollhumi = DolluCollectorRouteBuilder.tinySnapshotDollhumi(dollPost.trimmedClosetDollrevoURL ?? DolluCollectorRouteBuilder.detailRoute(dollArchiveId: dollPost.dollArchiveId), tinyCoverDollmexa: dollPost.dolltrimmedLaceworkDollyaraL)
        navigationController?.pushViewController(DolluALoj(dollRouteURL: tinySnapshotDollhumi), animated: true)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let dollWidth = max(250, min(330, view.bounds.width * 0.74))
        return CGSize(width: dollWidth, height: collectionView.bounds.height)
    }

    private func openDollPostSafety(_ dollPost: DollutrimmedClosetDollrevo) {
        navigationController?.pushViewController(DolluALoj(dollRouteURL: DolluCollectorRouteBuilder.safetyRoute(dollArchiveId: dollPost.dollArchiveId)), animated: true)
    }

    private func openDollProfileRoute(dollFragmentPath: String, dollPairs: [URLQueryItem] = []) {
        let dollBase = **"htxytpxy:/xy/dxygdxy4lxynnxy2zxyd7xykwxyv1xyobxyw8xy0.xyshxyopxy/#xy/xy" + dollFragmentPath
        var dollComponents = URLComponents()
        dollComponents.queryItems = dollPairs
        let dollQuery = dollComponents.percentEncodedQuery ?? ""
        let dollRawRoute = dollQuery.isEmpty ? dollBase : dollBase + **"?" + dollQuery
        guard let dollURL = URL(string: dollRawRoute) else { return }
        let dollRoute = DolluCollectorRouteBuilder.routeWithDollCredential(dollURL)
        navigationController?.pushViewController(DolluALoj(dollRouteURL: dollRoute), animated: true)
    }
}

final class DolluProfileInlineStatsView: UIView {
    var dollFollowingTapped: (() -> Void)?
    var dollFollowersTapped: (() -> Void)?
    private let satinPinboardDollvani = UIStackView()
    private let classicArchiveDollpiri = DolluProfileStatColumn(dollTitle: **"Foxyllxyowxyinxyg")
    private let patternedCollectionDollbop = DolluProfileStatColumn(dollTitle: **"Foxyllxyowxyerxys")
    private let linenGuideDollsovo = DolluProfileStatColumn(dollTitle: **"Lixykexyd")

    override init(frame: CGRect) {
        super.init(frame: frame)
        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .horizontal
        satinPinboardDollvani.alignment = .center
        satinPinboardDollvani.distribution = .fillEqually
        satinPinboardDollvani.spacing = 8
        addSubview(satinPinboardDollvani)
        [classicArchiveDollpiri, patternedCollectionDollbop, linenGuideDollsovo].forEach {
            satinPinboardDollvani.addArrangedSubview($0)
        }
        classicArchiveDollpiri.addTarget(self, action: #selector(openDollFollowing), for: .touchUpInside)
        patternedCollectionDollbop.addTarget(self, action: #selector(openDollFollowers), for: .touchUpInside)
        NSLayoutConstraint.activate([
            satinPinboardDollvani.topAnchor.constraint(equalTo: topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: trailingAnchor),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollFollowingCount: Int, dollFollowerCount: Int, dollLikedCount: Int) {
        classicArchiveDollpiri.configure(dollValue: dollFollowingCount)
        patternedCollectionDollbop.configure(dollValue: dollFollowerCount)
        linenGuideDollsovo.configure(dollValue: dollLikedCount)
    }

    @objc private func openDollFollowing() {
        dollFollowingTapped?()
    }

    @objc private func openDollFollowers() {
        dollFollowersTapped?()
    }
}

final class DolluProfileStatColumn: UIControl {
    private let dollTitle: String
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()

    init(dollTitle: String) {
        self.dollTitle = dollTitle
        super.init(frame: .zero)
        buildDollStatColumn()
    }

    required init?(coder: NSCoder) {
        nil
    }

    private func buildDollStatColumn() {
        let dollRow = UIStackView()
        dollRow.translatesAutoresizingMaskIntoConstraints = false
        dollRow.axis = .horizontal
        dollRow.alignment = .firstBaseline
        dollRow.spacing = 5

        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .medium)
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.72

        cozyMemoDolllaro.text = dollTitle
        cozyMemoDolllaro.textColor = DolluWardrobePalette.dollMemoMuted
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .medium)
        cozyMemoDolllaro.adjustsFontSizeToFitWidth = true
        cozyMemoDolllaro.minimumScaleFactor = 0.7

        dollRow.addArrangedSubview(layeredCatalogDollquvo)
        dollRow.addArrangedSubview(cozyMemoDolllaro)
        addSubview(dollRow)
        NSLayoutConstraint.activate([
            dollRow.leadingAnchor.constraint(equalTo: leadingAnchor),
            dollRow.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            dollRow.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    func configure(dollValue: Int) {
        layeredCatalogDollquvo.text = DolluProfileNumberFormatter.makeDollCount(dollValue)
    }
}

final class DolluProfileStarsEntryView: UIControl {
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let ivoryClipnoteDollbop = UILabel()
    private let tinyCoverDollmexa = UIImageView(image: UIImage(named: "dollu_profile_stars_gem"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 12
        clipsToBounds = true
        let dollGradient = CAGradientLayer()
        dollGradient.colors = [
            UIColor(red: 0.72, green: 0.06, blue: 1, alpha: 1).cgColor,
            UIColor(red: 0.22, green: 0.47, blue: 1, alpha: 1).cgColor
        ]
        dollGradient.startPoint = CGPoint(x: 0, y: 0.5)
        dollGradient.endPoint = CGPoint(x: 1, y: 0.5)
        layer.insertSublayer(dollGradient, at: 0)
        dollGradient.name = "dollu_profile_stars_gradient"

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        addSubview(tinyCoverDollmexa)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.text = **"Myxy wxyalxylexyt"
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.numberOfLines = 1
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        addSubview(layeredCatalogDollquvo)

        ivoryClipnoteDollbop.translatesAutoresizingMaskIntoConstraints = false
        ivoryClipnoteDollbop.textColor = .white
        ivoryClipnoteDollbop.textAlignment = .right
        ivoryClipnoteDollbop.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        addSubview(ivoryClipnoteDollbop)

        addTarget(self, action: #selector(pressDollStars), for: .touchDown)
        addTarget(self, action: #selector(releaseDollStars), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])

        NSLayoutConstraint.activate([
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: centerYAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 31),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 31),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: 12),
            layeredCatalogDollquvo.centerYAnchor.constraint(equalTo: centerYAnchor),
            layeredCatalogDollquvo.trailingAnchor.constraint(lessThanOrEqualTo: ivoryClipnoteDollbop.leadingAnchor, constant: -8),

            ivoryClipnoteDollbop.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            ivoryClipnoteDollbop.centerYAnchor.constraint(equalTo: centerYAnchor),
            ivoryClipnoteDollbop.widthAnchor.constraint(greaterThanOrEqualToConstant: 46)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.sublayers?.first(where: { $0.name == "dollu_profile_stars_gradient" })?.frame = bounds
    }

    func configure() {
        let dollArchive = DollulunarSetupDollzoraLedger.shared.currentDollArchive()
        ivoryClipnoteDollbop.text = DolluProfileNumberFormatter.makeDollDecimal(dollArchive.dollStarCount)
    }

    @objc private func pressDollStars() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.97, y: 0.97)
            self.alpha = 0.86
        }
    }

    @objc private func releaseDollStars() {
        UIView.animate(withDuration: 0.14) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

final class DolluProfilePostCardCell: UICollectionViewCell {
    static let dollReuseIdentifier = "DolluProfilePostCardCell"
    var satinMarkerDollpavo: (() -> Void)?
    private let tinyCoverDollmexa = DolluAsyncImageView()
    private let layeredCatalogDollquvo = UILabel()
    private let glossyIdeaDollsovo = UIButton(type: .custom)
    private let ivoryClipnoteDollbop = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 18
        contentView.clipsToBounds = true
        contentView.backgroundColor = UIColor(red: 0.16, green: 0.14, blue: 0.34, alpha: 1)

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFill
        tinyCoverDollmexa.clipsToBounds = true
        contentView.addSubview(tinyCoverDollmexa)

        let dollShade = CAGradientLayer()
        dollShade.colors = [
            UIColor.clear.cgColor,
            UIColor.black.withAlphaComponent(0.44).cgColor
        ]
        dollShade.startPoint = CGPoint(x: 0.5, y: 0.56)
        dollShade.endPoint = CGPoint(x: 0.5, y: 1)
        let dollShadeView = DolluProfileGradientView(dollGradient: dollShade)
        dollShadeView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dollShadeView)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.setImage(UIImage(named: "DolluDelicatePromptDollmora"), for: .normal)
        glossyIdeaDollsovo.imageView?.contentMode = .scaleAspectFit
        glossyIdeaDollsovo.accessibilityLabel = **"Cxyolxylexyctxyorxy sxyafxyexty fxyexyedxybaxyckxy"
        glossyIdeaDollsovo.addTarget(self, action: #selector(openDollSafety), for: .touchUpInside)
        contentView.addSubview(glossyIdeaDollsovo)

        ivoryClipnoteDollbop.translatesAutoresizingMaskIntoConstraints = false
        ivoryClipnoteDollbop.backgroundColor = .clear
        contentView.addSubview(ivoryClipnoteDollbop)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        layeredCatalogDollquvo.numberOfLines = 2
        contentView.addSubview(layeredCatalogDollquvo)

        NSLayoutConstraint.activate([
            tinyCoverDollmexa.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            tinyCoverDollmexa.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            tinyCoverDollmexa.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            tinyCoverDollmexa.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.69),

            dollShadeView.topAnchor.constraint(equalTo: tinyCoverDollmexa.topAnchor),
            dollShadeView.leadingAnchor.constraint(equalTo: tinyCoverDollmexa.leadingAnchor),
            dollShadeView.trailingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor),
            dollShadeView.bottomAnchor.constraint(equalTo: tinyCoverDollmexa.bottomAnchor),

            glossyIdeaDollsovo.topAnchor.constraint(equalTo: tinyCoverDollmexa.topAnchor, constant: 10),
            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: tinyCoverDollmexa.trailingAnchor, constant: -10),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 30),
            glossyIdeaDollsovo.heightAnchor.constraint(equalToConstant: 30),

            ivoryClipnoteDollbop.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            ivoryClipnoteDollbop.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            ivoryClipnoteDollbop.topAnchor.constraint(equalTo: tinyCoverDollmexa.bottomAnchor, constant: 10),
            ivoryClipnoteDollbop.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: ivoryClipnoteDollbop.leadingAnchor),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: ivoryClipnoteDollbop.trailingAnchor),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: ivoryClipnoteDollbop.topAnchor, constant: 4)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollPost: DollutrimmedClosetDollrevo) {
        layeredCatalogDollquvo.text = dollPost.dollTitle
        tinyCoverDollmexa.setDollImage(dollURL: dollPost.dolltrimmedLaceworkDollyaraL, fallbackTitle: dollPost.dollTitle)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        satinMarkerDollpavo = nil
    }

    @objc private func openDollSafety() {
        satinMarkerDollpavo?()
    }
}

final class DolluProfileCheckinEmptyCard: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.88)
        layer.cornerRadius = 20

        let dollBadge = UILabel()
        dollBadge.translatesAutoresizingMaskIntoConstraints = false
        dollBadge.text = "✓"
        dollBadge.textColor = .white
        dollBadge.textAlignment = .center
        dollBadge.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        dollBadge.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        dollBadge.layer.cornerRadius = 20
        dollBadge.clipsToBounds = true

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = **"Noxy cxyhexyckxy-ixynsxy yxyetxy"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = **"Rexycoxyrdxy axy dxyolxyl xyouxytfxyitxy rxyouxytixynexy txyo xybuxyilxyd xyyoxyurxy pxyerxysoxynaxyl xyarxychxyivxye.xy"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        dollCopy.numberOfLines = 2

        [dollBadge, dollTitle, dollCopy].forEach { addSubview($0) }
        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 88),
            dollBadge.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            dollBadge.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollBadge.widthAnchor.constraint(equalToConstant: 40),
            dollBadge.heightAnchor.constraint(equalTo: dollBadge.widthAnchor),
            dollTitle.leadingAnchor.constraint(equalTo: dollBadge.trailingAnchor, constant: 13),
            dollTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            dollTitle.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.trailingAnchor.constraint(equalTo: dollTitle.trailingAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 5),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -16)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }
}

final class DolluProfileGearButton: UIControl {
    private let tinyCoverDollmexa = UIImageView(image: UIImage(named: "dollu_profile_settings_gear"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        tinyCoverDollmexa.contentMode = .scaleAspectFit
        tinyCoverDollmexa.isUserInteractionEnabled = false
        addSubview(tinyCoverDollmexa)
        addTarget(self, action: #selector(pressDollGear), for: .touchDown)
        addTarget(self, action: #selector(releaseDollGear), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        NSLayoutConstraint.activate([
            tinyCoverDollmexa.centerXAnchor.constraint(equalTo: centerXAnchor),
            tinyCoverDollmexa.centerYAnchor.constraint(equalTo: centerYAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 24),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 24)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    @objc private func pressDollGear() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
            self.alpha = 0.82
        }
    }

    @objc private func releaseDollGear() {
        UIView.animate(withDuration: 0.14) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

final class DolluProfileGradientView: UIView {
    private let dollGradient: CAGradientLayer

    init(dollGradient: CAGradientLayer) {
        self.dollGradient = dollGradient
        super.init(frame: .zero)
        layer.addSublayer(dollGradient)
        isUserInteractionEnabled = false
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        dollGradient.frame = bounds
    }
}

enum DolluProfileNumberFormatter {
    static func makeDollCount(_ dollValue: Int) -> String {
        if dollValue >= 1000 {
            let dollReduced = Double(dollValue) / 1000.0
            return String(format: dollReduced >= 10 ? "%.0fK" : "%.1fK", dollReduced).replacingOccurrences(of: ".0", with: "")
        }
        return "\(max(0, dollValue))"
    }

    static func makeDollDecimal(_ dollValue: Int) -> String {
        let dollClamped = max(0, dollValue)
        if dollClamped >= 1000 {
            return String(format: "%.3f", Double(dollClamped) / 1000.0)
        }
        return "\(dollClamped)"
    }
}
