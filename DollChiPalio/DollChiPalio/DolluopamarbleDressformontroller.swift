import UIKit

struct DolunarBootDollvexArchive: Codable {
    var dollStarCount: Int
    var dollCompletedCount: Int
    var dollStreakCount: Int
    var dollUnlockedPendantIds: [String]
    var dollRewardedEventIds: [String]

    init(dollStarCount: Int, dollCompletedCount: Int, dollStreakCount: Int, dollUnlockedPendantIds: [String], dollRewardedEventIds: [String] = []) {
        self.dollStarCount = dollStarCount
        self.dollCompletedCount = dollCompletedCount
        self.dollStreakCount = dollStreakCount
        self.dollUnlockedPendantIds = dollUnlockedPendantIds
        self.dollRewardedEventIds = dollRewardedEventIds
    }

    private enum CodingKeys: String, CodingKey {
        case dollStarCount
        case dollCompletedCount
        case dollStreakCount
        case dollUnlockedPendantIds
        case dollRewardedEventIds
    }

    init(from dollDecoder: Decoder) throws {
        let dollContainer = try dollDecoder.container(keyedBy: CodingKeys.self)
        dollStarCount = try dollContainer.decodeIfPresent(Int.self, forKey: .dollStarCount) ?? 0
        dollCompletedCount = try dollContainer.decodeIfPresent(Int.self, forKey: .dollCompletedCount) ?? 0
        dollStreakCount = try dollContainer.decodeIfPresent(Int.self, forKey: .dollStreakCount) ?? 0
        dollUnlockedPendantIds = try dollContainer.decodeIfPresent([String].self, forKey: .dollUnlockedPendantIds) ?? []
        dollRewardedEventIds = try dollContainer.decodeIfPresent([String].self, forKey: .dollRewardedEventIds) ?? []
    }
}

struct DolluCheckinPendantArchive: Hashable {
    let dollPendantId: String
    let dollPendantName: String
    let dollRequiredStars: Int
    let dollRequiredCopy: String?
    let dollTint: UIColor
    let dollAccent: UIColor
}

enum DolluCheckinStarLedgerResult {
    case unlocked(DolunarBootDollvexArchive)
    case alreadyOwned(DolunarBootDollvexArchive)
    case notEnough(DolunarBootDollvexArchive)
    case locked(DolunarBootDollvexArchive)
}

final class DollulunarSetupDollzoraLedger {
    static let shared = DollulunarSetupDollzoraLedger()
    private let cozyArchiveDollniva = "dollu_checkin_star_ledger"

    private init() {}

    func currentDollArchive() -> DolunarBootDollvexArchive {
        let dollKey = currentDollLedgerKey()
        guard let dollData = UserDefaults.standard.data(forKey: dollKey),
              let dollArchive = try? JSONDecoder().decode(DolunarBootDollvexArchive.self, from: dollData) else {
            let dollSeed = DolunarBootDollvexArchive(dollStarCount: 0, dollCompletedCount: 0, dollStreakCount: 0, dollUnlockedPendantIds: [])
            saveDollArchive(dollSeed)
            return dollSeed
        }
        return dollArchive
    }

    @discardableResult
    func addDollStars(_ dollCount: Int) -> DolunarBootDollvexArchive {
        var dollArchive = currentDollArchive()
        dollArchive.dollStarCount += max(0, dollCount)
        dollArchive.dollCompletedCount += 1
        dollArchive.dollStreakCount = min(7, max(dollArchive.dollStreakCount, dollArchive.dollCompletedCount))
        saveDollArchive(dollArchive)
        return dollArchive
    }

    @discardableResult
    func addDollStars(_ dollCount: Int, dollEventId: String) -> DolunarBootDollvexArchive {
        var dollArchive = currentDollArchive()
        guard !dollArchive.dollRewardedEventIds.contains(dollEventId) else {
            return dollArchive
        }
        dollArchive.dollRewardedEventIds.append(dollEventId)
        dollArchive.dollStarCount += max(0, dollCount)
        dollArchive.dollCompletedCount += 1
        dollArchive.dollStreakCount = min(7, max(dollArchive.dollStreakCount, dollArchive.dollCompletedCount))
        saveDollArchive(dollArchive)
        return dollArchive
    }

    func redeemDollPendant(_ dollPendant: DolluCheckinPendantArchive) -> DolluCheckinStarLedgerResult {
        var dollArchive = currentDollArchive()
        if dollArchive.dollUnlockedPendantIds.contains(dollPendant.dollPendantId) {
            return .alreadyOwned(dollArchive)
        }
        if let dollRequiredCopy = dollPendant.dollRequiredCopy {
            if dollRequiredCopy.contains("7-day") && dollArchive.dollStreakCount < 7 {
                return .locked(dollArchive)
            }
            if dollRequiredCopy.contains("30") && dollArchive.dollCompletedCount < 30 {
                return .locked(dollArchive)
            }
        }
        guard dollArchive.dollStarCount >= dollPendant.dollRequiredStars else {
            return .notEnough(dollArchive)
        }
        dollArchive.dollStarCount -= dollPendant.dollRequiredStars
        dollArchive.dollUnlockedPendantIds.append(dollPendant.dollPendantId)
        saveDollArchive(dollArchive)
        return .unlocked(dollArchive)
    }

    private func saveDollArchive(_ dollArchive: DolunarBootDollvexArchive) {
        guard let dollData = try? JSONEncoder().encode(dollArchive) else { return }
        UserDefaults.standard.set(dollData, forKey: currentDollLedgerKey())
    }

    private func currentDollLedgerKey() -> String {
        let dollStore = DolluWardrobeArchiveStore.satinCollectionArchive
        let dollSession = dollStore.dollWardrobeSession
        let dollCollectorKey = dollSession.currentDollCollectorId
            ?? dollSession.currentDollCollectorEmail
            ?? dollStore.currentDollCollectorRecord()?.dollCollectorEmail
            ?? "guest"
        return "\(cozyArchiveDollniva)_\(dollCollectorKey)"
    }
}

final class DolluopamarbleDressformontroller: UIViewController {
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let matteSceneDollvelo = UILabel()
    private let tinySnapshotDollhumi = DolluCheckinRewardSummaryCard()
    private let playfulMarkerDollquvo = UIStackView()
    private let frillyAccessoryDollmivo = DolluCheckinRewardShopEntryCard()
    private let satinMarkerDollpavo = DolluminiLayerDollmivoButton(dollButtonTitle: "Redeem", dollUsesLightStyle: true)
    private let floralHintDollvelo = DolluRewardToastView()

    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        buildDollRewardCenter()
        reloadDollRewardArchive()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadDollRewardArchive()
    }

    private func buildDollRewardCenter() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollBackButton = DolluRewardBackButton()
        dollBackButton.addTarget(self, action: #selector(closeDollRewardPage), for: .touchUpInside)
        view.addSubview(dollBackButton)

        matteSceneDollvelo.translatesAutoresizingMaskIntoConstraints = false
        matteSceneDollvelo.text = "Rewards"
        matteSceneDollvelo.textColor = .white
        matteSceneDollvelo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .heavy)
        matteSceneDollvelo.textAlignment = .center
        view.addSubview(matteSceneDollvelo)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 22
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        tinySnapshotDollhumi.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.addArrangedSubview(tinySnapshotDollhumi)

        satinPinboardDollvani.addArrangedSubview(makeDollRewardHeader(dollTitle: "Ways to earn", dollPill: "3 check-ins"))
        playfulMarkerDollquvo.axis = .vertical
        playfulMarkerDollquvo.spacing = 0
        playfulMarkerDollquvo.backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.94)
        playfulMarkerDollquvo.layer.cornerRadius = 24
        playfulMarkerDollquvo.isLayoutMarginsRelativeArrangement = true
        playfulMarkerDollquvo.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 14, leading: 18, bottom: 14, trailing: 18)
        satinPinboardDollvani.addArrangedSubview(playfulMarkerDollquvo)

        satinPinboardDollvani.addArrangedSubview(makeDollRewardHeader(dollTitle: "Redeem with Stars", dollPill: "Spend Stars"))
        frillyAccessoryDollmivo.addTarget(self, action: #selector(openDollPendantShop), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(frillyAccessoryDollmivo)

        let dollReviveCard = DolluCheckinRewardRedeemCard()
        dollReviveCard.configure(dollTitle: "Streak revive", dollCopy: "Restore a missed day", dollRequiredStars: 200)
        dollReviveCard.dollTapped = { [weak self] in
            self?.showDollRewardToast("Keep saving Stars for this badge tool.")
        }
        satinPinboardDollvani.addArrangedSubview(dollReviveCard)

        floralHintDollvelo.translatesAutoresizingMaskIntoConstraints = false
        floralHintDollvelo.alpha = 0
        view.addSubview(floralHintDollvelo)

        let dollSideInset: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dollSideInset),
            dollBackButton.widthAnchor.constraint(equalToConstant: 44),
            dollBackButton.heightAnchor.constraint(equalToConstant: 44),

            matteSceneDollvelo.centerYAnchor.constraint(equalTo: dollBackButton.centerYAnchor),
            matteSceneDollvelo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            matteSceneDollvelo.leadingAnchor.constraint(greaterThanOrEqualTo: dollBackButton.trailingAnchor, constant: 14),
            matteSceneDollvelo.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -dollSideInset),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 24),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: dollSideInset),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -dollSideInset),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -28),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -(dollSideInset * 2)),

            floralHintDollvelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            floralHintDollvelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            floralHintDollvelo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22)
        ])
    }

    private func reloadDollRewardArchive() {
        let dollArchive = DollulunarSetupDollzoraLedger.shared.currentDollArchive()
        tinySnapshotDollhumi.configure(dollStarCount: dollArchive.dollStarCount)
        playfulMarkerDollquvo.arrangedSubviews.forEach { $0.removeFromSuperview() }
        [
            DolluRewardWayArchive(dollTitle: "Browse style ideas", dollCopy: "Open the Dollu inspiration page today", dollStars: 15, dollTint: UIColor(red: 1, green: 0.52, blue: 0.45, alpha: 1)),
            DolluRewardWayArchive(dollTitle: "Record a doll look", dollCopy: "Save one outfit note to your archive", dollStars: 20, dollTint: UIColor(red: 0.96, green: 0.34, blue: 0.78, alpha: 1)),
            DolluRewardWayArchive(dollTitle: "Buddy check-in", dollCopy: "Finish a collector routine together", dollStars: 25, dollTint: UIColor(red: 0.47, green: 0.83, blue: 0.77, alpha: 1))
        ].enumerated().forEach { dollIndex, dollWay in
            let dollRow = DolluRewardWayRow()
            dollRow.configure(dollWay)
            playfulMarkerDollquvo.addArrangedSubview(dollRow)
            if dollIndex < 2 {
                playfulMarkerDollquvo.addArrangedSubview(DolluRewardDivider())
            }
        }
    }

    private func makeDollRewardHeader(dollTitle: String, dollPill: String) -> UIView {
        let dollRow = UIStackView()
        dollRow.axis = .horizontal
        dollRow.alignment = .center
        dollRow.spacing = 12

        let dollTitleLabel = UILabel()
        dollTitleLabel.text = dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        dollTitleLabel.adjustsFontSizeToFitWidth = true
        dollTitleLabel.minimumScaleFactor = 0.8
        dollRow.addArrangedSubview(dollTitleLabel)

        let dollPillLabel = PaddingLabel()
        dollPillLabel.text = dollPill
        dollPillLabel.textColor = UIColor(red: 0.42, green: 0.93, blue: 0.78, alpha: 1)
        dollPillLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        dollPillLabel.backgroundColor = UIColor(red: 0.14, green: 0.34, blue: 0.31, alpha: 0.82)
        dollPillLabel.layer.cornerRadius = 14
        dollPillLabel.clipsToBounds = true
        dollPillLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        dollRow.addArrangedSubview(dollPillLabel)
        dollRow.addArrangedSubview(UIView())
        return dollRow
    }

    private func showDollRewardToast(_ dollText: String) {
        floralHintDollvelo.configure(dollText)
        UIView.animate(withDuration: 0.18, animations: {
            self.floralHintDollvelo.alpha = 1
        }, completion: { _ in
            UIView.animate(withDuration: 0.22, delay: 1.5, options: [.curveEaseInOut]) {
                self.floralHintDollvelo.alpha = 0
            }
        })
    }

    @objc private func openDollPendantShop() {
        navigationController?.pushViewController(DolluCheckinStarsShopViewController(), animated: true)
    }

    @objc private func closeDollRewardPage() {
        navigationController?.popViewController(animated: true)
    }
}

final class DolluCheckinStarsShopViewController: UIViewController {
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let ribbonDisplayDollrevo = UIScrollView()
    private let satinPinboardDollvani = UIStackView()
    private let matteSceneDollvelo = UILabel()
    private let floralHintDollvelo = DolluRewardToastView()
    private let dollPendants: [DolluCheckinPendantArchive] = [
        DolluCheckinPendantArchive(dollPendantId: "pink_lavender", dollPendantName: "Pink Lavender", dollRequiredStars: 350, dollRequiredCopy: nil, dollTint: UIColor(red: 1, green: 0.62, blue: 0.78, alpha: 1), dollAccent: UIColor(red: 0.90, green: 0.44, blue: 0.98, alpha: 1)),
        DolluCheckinPendantArchive(dollPendantId: "lavender_moon_bunny", dollPendantName: "Lavender Moon Bunny", dollRequiredStars: 500, dollRequiredCopy: nil, dollTint: UIColor(red: 0.74, green: 0.62, blue: 1, alpha: 1), dollAccent: UIColor(red: 1, green: 0.87, blue: 0.53, alpha: 1)),
        DolluCheckinPendantArchive(dollPendantId: "mint_bear", dollPendantName: "Mint Bear", dollRequiredStars: 0, dollRequiredCopy: "Reach a 7-day streak", dollTint: UIColor(red: 0.53, green: 0.91, blue: 0.78, alpha: 1), dollAccent: UIColor(red: 0.78, green: 0.90, blue: 1, alpha: 1)),
        DolluCheckinPendantArchive(dollPendantId: "peach_dress", dollPendantName: "Peach Dress", dollRequiredStars: 0, dollRequiredCopy: "Finish 30 check-ins", dollTint: UIColor(red: 1, green: 0.66, blue: 0.47, alpha: 1), dollAccent: UIColor(red: 1, green: 0.85, blue: 0.61, alpha: 1))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        buildDollShop()
    }

    private func buildDollShop() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollBackButton = DolluRewardBackButton()
        dollBackButton.addTarget(self, action: #selector(closeDollShop), for: .touchUpInside)
        view.addSubview(dollBackButton)

        matteSceneDollvelo.translatesAutoresizingMaskIntoConstraints = false
        matteSceneDollvelo.text = "Stars Shop"
        matteSceneDollvelo.textColor = .white
        matteSceneDollvelo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .heavy)
        matteSceneDollvelo.textAlignment = .center
        view.addSubview(matteSceneDollvelo)

        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        ribbonDisplayDollrevo.showsVerticalScrollIndicator = false
        view.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 22
        ribbonDisplayDollrevo.addSubview(satinPinboardDollvani)

        let dollHeader = DolluPendantShopHeaderCard()
        satinPinboardDollvani.addArrangedSubview(dollHeader)
        satinPinboardDollvani.addArrangedSubview(makeDollShopHeader())
        let dollGrid = makeDollPendantGrid()
        satinPinboardDollvani.addArrangedSubview(dollGrid)

        floralHintDollvelo.translatesAutoresizingMaskIntoConstraints = false
        floralHintDollvelo.alpha = 0
        view.addSubview(floralHintDollvelo)

        let dollSideInset: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dollSideInset),
            dollBackButton.widthAnchor.constraint(equalToConstant: 44),
            dollBackButton.heightAnchor.constraint(equalToConstant: 44),

            matteSceneDollvelo.centerYAnchor.constraint(equalTo: dollBackButton.centerYAnchor),
            matteSceneDollvelo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            matteSceneDollvelo.leadingAnchor.constraint(greaterThanOrEqualTo: dollBackButton.trailingAnchor, constant: 14),
            matteSceneDollvelo.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -dollSideInset),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 24),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.topAnchor),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.leadingAnchor, constant: dollSideInset),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.trailingAnchor, constant: -dollSideInset),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: ribbonDisplayDollrevo.contentLayoutGuide.bottomAnchor, constant: -28),
            satinPinboardDollvani.widthAnchor.constraint(equalTo: ribbonDisplayDollrevo.frameLayoutGuide.widthAnchor, constant: -(dollSideInset * 2)),

            floralHintDollvelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            floralHintDollvelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            floralHintDollvelo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22)
        ])
    }

    private func makeDollShopHeader() -> UIView {
        let dollStack = UIStackView()
        dollStack.axis = .vertical
        dollStack.spacing = 12

        let dollTopRow = UIStackView()
        dollTopRow.axis = .horizontal
        dollTopRow.alignment = .center
        dollTopRow.spacing = 12

        let dollTitle = UILabel()
        dollTitle.text = "Pendants"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        dollTopRow.addArrangedSubview(dollTitle)

        let dollPill = PaddingLabel()
        dollPill.text = "Reward & redeem"
        dollPill.textColor = UIColor(red: 0.84, green: 0.68, blue: 1, alpha: 1)
        dollPill.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        dollPill.backgroundColor = UIColor(red: 0.18, green: 0.10, blue: 0.38, alpha: 0.9)
        dollPill.layer.cornerRadius = 15
        dollPill.layer.borderWidth = 1.4
        dollPill.layer.borderColor = UIColor(red: 0.48, green: 0.24, blue: 0.92, alpha: 1).cgColor
        dollPill.clipsToBounds = true
        dollTopRow.addArrangedSubview(dollPill)
        dollTopRow.addArrangedSubview(UIView())
        dollStack.addArrangedSubview(dollTopRow)

        let dollValidity = UILabel()
        dollValidity.text = "Valid for 48 hours"
        dollValidity.textColor = UIColor(red: 1, green: 0.54, blue: 0.58, alpha: 1)
        dollValidity.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .medium)
        dollStack.addArrangedSubview(dollValidity)
        return dollStack
    }

    private func makeDollPendantGrid() -> UIView {
        let dollGrid = UIStackView()
        dollGrid.axis = .vertical
        dollGrid.spacing = 16
        let dollRows = stride(from: 0, to: dollPendants.count, by: 2).map { dollIndex -> [DolluCheckinPendantArchive] in
            Array(dollPendants[dollIndex..<min(dollIndex + 2, dollPendants.count)])
        }
        dollRows.forEach { dollPair in
            let dollRow = UIStackView()
            dollRow.axis = .horizontal
            dollRow.spacing = 14
            dollRow.distribution = .fillEqually
            dollPair.forEach { dollPendant in
                let dollCard = DolluPendantRewardCard()
                dollCard.configure(dollPendant, dollArchive: DollulunarSetupDollzoraLedger.shared.currentDollArchive())
                dollCard.dollTapped = { [weak self] in
                    self?.redeemDollPendant(dollPendant)
                }
                dollRow.addArrangedSubview(dollCard)
            }
            if dollPair.count == 1 {
                dollRow.addArrangedSubview(UIView())
            }
            dollGrid.addArrangedSubview(dollRow)
        }
        return dollGrid
    }

    private func redeemDollPendant(_ dollPendant: DolluCheckinPendantArchive) {
        switch DollulunarSetupDollzoraLedger.shared.redeemDollPendant(dollPendant) {
        case .unlocked(let dollArchive):
            let dollController = DolluCheckinPendantUnlockedViewController(dollPendant: dollPendant, dollArchive: dollArchive)
            navigationController?.pushViewController(dollController, animated: true)
        case .alreadyOwned:
            showDollRewardToast("This pendant is already in your profile set.")
        case .notEnough:
            showDollRewardToast("Not enough Stars. Finish more check-ins to earn them.")
        case .locked:
            showDollRewardToast(dollPendant.dollRequiredCopy ?? "Keep growing your Dollu routine first.")
        }
    }

    private func showDollRewardToast(_ dollText: String) {
        floralHintDollvelo.configure(dollText)
        UIView.animate(withDuration: 0.18, animations: {
            self.floralHintDollvelo.alpha = 1
        }, completion: { _ in
            UIView.animate(withDuration: 0.22, delay: 1.6, options: [.curveEaseInOut]) {
                self.floralHintDollvelo.alpha = 0
            }
        })
    }

    @objc private func closeDollShop() {
        navigationController?.popViewController(animated: true)
    }
}

final class DolluCheckinPendantUnlockedViewController: UIViewController {
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()
    private let satinPinboardDollvani = UIStackView()
    private let dollPendant: DolluCheckinPendantArchive
    private let dollArchive: DolunarBootDollvexArchive

    init(dollPendant: DolluCheckinPendantArchive, dollArchive: DolunarBootDollvexArchive) {
        self.dollPendant = dollPendant
        self.dollArchive = dollArchive
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollUnlockedPage()
    }

    private func buildDollUnlockedPage() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollBackButton = DolluRewardBackButton()
        dollBackButton.addTarget(self, action: #selector(closeDollUnlocked), for: .touchUpInside)
        view.addSubview(dollBackButton)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.alignment = .center
        satinPinboardDollvani.spacing = 20
        view.addSubview(satinPinboardDollvani)

        let dollConfetti = DolluCheckinConfettiView()
        dollConfetti.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dollConfetti)

        let dollPreview = DolluUnlockedPendantPreview(dollPendant: dollPendant)
        satinPinboardDollvani.addArrangedSubview(dollPreview)

        let dollTitle = UILabel()
        dollTitle.text = "Pendant Unlocked!"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 29, dollFontWeight: .heavy)
        dollTitle.adjustsFontSizeToFitWidth = true
        dollTitle.minimumScaleFactor = 0.75
        dollTitle.textAlignment = .center
        satinPinboardDollvani.addArrangedSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.text = "\(dollPendant.dollPendantName) is now on your profile"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .medium)
        dollCopy.textAlignment = .center
        dollCopy.numberOfLines = 2
        satinPinboardDollvani.addArrangedSubview(dollCopy)

        let dollStats = DolluPendantUnlockStatsView()
        dollStats.configure(dollSpent: dollPendant.dollRequiredStars, dollLeft: dollArchive.dollStarCount)
        satinPinboardDollvani.addArrangedSubview(dollStats)

        let dollValidity = UILabel()
        dollValidity.text = "Valid for 48 hours"
        dollValidity.textColor = UIColor(red: 1, green: 0.54, blue: 0.58, alpha: 1)
        dollValidity.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .medium)
        dollValidity.textAlignment = .center
        satinPinboardDollvani.addArrangedSubview(dollValidity)

        let dollSpacer = UIView()
        satinPinboardDollvani.addArrangedSubview(dollSpacer)

        let dollShopButton = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Shop", dollUsesLightStyle: true)
        dollShopButton.addTarget(self, action: #selector(backToDollShop), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollShopButton)

        let dollCheckinButton = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Check-in", dollUsesLightStyle: false)
        dollCheckinButton.addTarget(self, action: #selector(backToDollCheckin), for: .touchUpInside)
        satinPinboardDollvani.addArrangedSubview(dollCheckinButton)

        let dollSideInset: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            dollBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dollSideInset),
            dollBackButton.widthAnchor.constraint(equalToConstant: 44),
            dollBackButton.heightAnchor.constraint(equalToConstant: 44),

            dollConfetti.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 18),
            dollConfetti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            dollConfetti.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            dollConfetti.heightAnchor.constraint(equalToConstant: 260),

            satinPinboardDollvani.topAnchor.constraint(equalTo: dollBackButton.bottomAnchor, constant: 120),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dollSideInset),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -dollSideInset),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -18),

            dollPreview.widthAnchor.constraint(equalToConstant: 190),
            dollPreview.heightAnchor.constraint(equalToConstant: 190),
            dollStats.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor, constant: -24),
            dollStats.heightAnchor.constraint(equalToConstant: 90),
            dollSpacer.heightAnchor.constraint(greaterThanOrEqualToConstant: 32),
            dollShopButton.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor),
            dollShopButton.heightAnchor.constraint(equalToConstant: 52),
            dollCheckinButton.widthAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor),
            dollCheckinButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }

    @objc private func closeDollUnlocked() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func backToDollShop() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func backToDollCheckin() {
        guard let dollControllers = navigationController?.viewControllers else { return }
        if let dollTarget = dollControllers.first(where: { $0 is DollucalmNoteDollsovoController }) {
            navigationController?.popToViewController(dollTarget, animated: true)
        }
    }
}

private struct DolluRewardWayArchive {
    let dollTitle: String
    let dollCopy: String
    let dollStars: Int
    let dollTint: UIColor
}

private final class DolluCheckinRewardSummaryCard: UIView {
    private let cottonFrameDollukp = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.10, blue: 0.18, alpha: 0.72)
        layer.cornerRadius = 24
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.88, green: 0.62, blue: 0.29, alpha: 0.58).cgColor

        let dollStar = UILabel()
        dollStar.translatesAutoresizingMaskIntoConstraints = false
        dollStar.text = "★"
        dollStar.textColor = UIColor(red: 1, green: 0.70, blue: 0.23, alpha: 1)
        dollStar.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 36, dollFontWeight: .heavy)
        addSubview(dollStar)

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 38, dollFontWeight: .heavy)
        addSubview(cottonFrameDollukp)

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = "Stars"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        addSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "✓  Earned from check-ins only"
        dollCopy.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        dollCopy.numberOfLines = 2
        addSubview(dollCopy)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 120),
            dollStar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26),
            dollStar.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollStar.widthAnchor.constraint(equalToConstant: 42),

            cottonFrameDollukp.leadingAnchor.constraint(equalTo: dollStar.trailingAnchor, constant: 10),
            cottonFrameDollukp.centerYAnchor.constraint(equalTo: centerYAnchor),
            cottonFrameDollukp.widthAnchor.constraint(greaterThanOrEqualToConstant: 92),

            dollTitle.leadingAnchor.constraint(equalTo: cottonFrameDollukp.trailingAnchor, constant: 14),
            dollTitle.topAnchor.constraint(equalTo: topAnchor, constant: 38),
            dollTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 8),
            dollCopy.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -22)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollStarCount: Int) {
        cottonFrameDollukp.text = "\(dollStarCount)"
    }
}

private final class DolluRewardWayRow: UIView {
    func configure(_ dollWay: DolluRewardWayArchive) {
        subviews.forEach { $0.removeFromSuperview() }
        let dollIcon = DolluRewardRoundIcon(dollTint: dollWay.dollTint)
        addSubview(dollIcon)

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = dollWay.dollTitle
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        dollTitle.adjustsFontSizeToFitWidth = true
        dollTitle.minimumScaleFactor = 0.78
        addSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = dollWay.dollCopy
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .medium)
        dollCopy.numberOfLines = 2
        addSubview(dollCopy)

        let dollStars = UILabel()
        dollStars.translatesAutoresizingMaskIntoConstraints = false
        dollStars.text = "★ +\(dollWay.dollStars)"
        dollStars.textColor = UIColor(red: 0.42, green: 0.93, blue: 0.78, alpha: 1)
        dollStars.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        dollStars.setContentCompressionResistancePriority(.required, for: .horizontal)
        addSubview(dollStars)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 72),
            dollIcon.leadingAnchor.constraint(equalTo: leadingAnchor),
            dollIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollIcon.widthAnchor.constraint(equalToConstant: 44),
            dollIcon.heightAnchor.constraint(equalToConstant: 44),

            dollTitle.leadingAnchor.constraint(equalTo: dollIcon.trailingAnchor, constant: 14),
            dollTitle.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            dollTitle.trailingAnchor.constraint(lessThanOrEqualTo: dollStars.leadingAnchor, constant: -10),

            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 4),
            dollCopy.trailingAnchor.constraint(lessThanOrEqualTo: dollStars.leadingAnchor, constant: -10),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),

            dollStars.trailingAnchor.constraint(equalTo: trailingAnchor),
            dollStars.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

private final class DolluRewardDivider: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(white: 1, alpha: 0.10)
        heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

    required init?(coder: NSCoder) {
        nil
    }
}

private final class DolluCheckinRewardShopEntryCard: UIControl {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.16, green: 0.12, blue: 0.25, alpha: 0.90)
        layer.cornerRadius = 22
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.88, green: 0.62, blue: 0.29, alpha: 0.48).cgColor

        let dollIcon = DolluRewardRoundIcon(dollTint: UIColor(red: 1, green: 0.50, blue: 0.40, alpha: 1))
        addSubview(dollIcon)

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = "Stars Shop"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        addSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "Redeem profile pendants"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .medium)
        addSubview(dollCopy)

        let dollArrow = UILabel()
        dollArrow.translatesAutoresizingMaskIntoConstraints = false
        dollArrow.text = "›"
        dollArrow.textColor = .white
        dollArrow.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 32, dollFontWeight: .medium)
        addSubview(dollArrow)

        addTarget(self, action: #selector(pressDollCard), for: .touchDown)
        addTarget(self, action: #selector(releaseDollCard), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 104),
            dollIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            dollIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollIcon.widthAnchor.constraint(equalToConstant: 56),
            dollIcon.heightAnchor.constraint(equalToConstant: 56),

            dollTitle.leadingAnchor.constraint(equalTo: dollIcon.trailingAnchor, constant: 18),
            dollTitle.topAnchor.constraint(equalTo: topAnchor, constant: 28),
            dollTitle.trailingAnchor.constraint(lessThanOrEqualTo: dollArrow.leadingAnchor, constant: -12),

            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 6),
            dollCopy.trailingAnchor.constraint(lessThanOrEqualTo: dollArrow.leadingAnchor, constant: -12),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -24),

            dollArrow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            dollArrow.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    @objc private func pressDollCard() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.985, y: 0.985)
            self.alpha = 0.86
        }
    }

    @objc private func releaseDollCard() {
        UIView.animate(withDuration: 0.14) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

private final class DolluCheckinRewardRedeemCard: UIView {
    var dollTapped: (() -> Void)?

    func configure(dollTitle: String, dollCopy: String, dollRequiredStars: Int) {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.94)
        layer.cornerRadius = 22
        subviews.forEach { $0.removeFromSuperview() }

        let dollIcon = DolluRewardRoundIcon(dollTint: UIColor(red: 0.91, green: 0.12, blue: 0.78, alpha: 1))
        addSubview(dollIcon)

        let dollTitleLabel = UILabel()
        dollTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollTitleLabel.text = dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        addSubview(dollTitleLabel)

        let dollCopyLabel = UILabel()
        dollCopyLabel.translatesAutoresizingMaskIntoConstraints = false
        dollCopyLabel.text = dollCopy
        dollCopyLabel.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopyLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .medium)
        dollCopyLabel.numberOfLines = 2
        addSubview(dollCopyLabel)

        let dollNeedLabel = UILabel()
        dollNeedLabel.translatesAutoresizingMaskIntoConstraints = false
        dollNeedLabel.text = "★ \(dollRequiredStars)"
        dollNeedLabel.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        dollNeedLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        addSubview(dollNeedLabel)

        let dollButton = DolluminiLayerDollmivoButton(dollButtonTitle: "Redeem", dollUsesLightStyle: true)
        dollButton.addTarget(self, action: #selector(tapDollRedeem), for: .touchUpInside)
        addSubview(dollButton)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 96),
            dollIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            dollIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollIcon.widthAnchor.constraint(equalToConstant: 50),
            dollIcon.heightAnchor.constraint(equalToConstant: 50),

            dollTitleLabel.leadingAnchor.constraint(equalTo: dollIcon.trailingAnchor, constant: 16),
            dollTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 22),
            dollTitleLabel.trailingAnchor.constraint(lessThanOrEqualTo: dollNeedLabel.leadingAnchor, constant: -10),

            dollCopyLabel.leadingAnchor.constraint(equalTo: dollTitleLabel.leadingAnchor),
            dollCopyLabel.topAnchor.constraint(equalTo: dollTitleLabel.bottomAnchor, constant: 6),
            dollCopyLabel.trailingAnchor.constraint(lessThanOrEqualTo: dollButton.leadingAnchor, constant: -10),
            dollCopyLabel.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -18),

            dollNeedLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollNeedLabel.trailingAnchor.constraint(equalTo: dollButton.leadingAnchor, constant: -12),

            dollButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            dollButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollButton.widthAnchor.constraint(equalToConstant: 108),
            dollButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }

    @objc private func tapDollRedeem() {
        dollTapped?()
    }
}

private final class DolluPendantShopHeaderCard: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.24, green: 0.14, blue: 0.52, alpha: 0.92)
        layer.cornerRadius = 24

        let dollRecord = DolluWardrobeArchiveStore.satinCollectionArchive.currentDollCollectorRecord()
        let dollName = dollRecord?.dollCollectorName ?? "Dollu"
        let dollAvatar = UIImageView(image: DolluPlaceholderImageFactory.makeDollPlaceholder(title: dollName))
        dollAvatar.translatesAutoresizingMaskIntoConstraints = false
        dollAvatar.layer.cornerRadius = 42
        dollAvatar.clipsToBounds = true
        dollAvatar.contentMode = .scaleAspectFill
        addSubview(dollAvatar)

        let dollTitle = UILabel()
        dollTitle.translatesAutoresizingMaskIntoConstraints = false
        dollTitle.text = "Profile Pendants"
        dollTitle.textColor = .white
        dollTitle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .heavy)
        addSubview(dollTitle)

        let dollCopy = UILabel()
        dollCopy.translatesAutoresizingMaskIntoConstraints = false
        dollCopy.text = "Check in to earn Stars, then dress up your profile with pendants"
        dollCopy.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopy.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .medium)
        dollCopy.numberOfLines = 3
        addSubview(dollCopy)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 136),
            dollAvatar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            dollAvatar.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollAvatar.widthAnchor.constraint(equalToConstant: 84),
            dollAvatar.heightAnchor.constraint(equalToConstant: 84),

            dollTitle.leadingAnchor.constraint(equalTo: dollAvatar.trailingAnchor, constant: 22),
            dollTitle.topAnchor.constraint(equalTo: topAnchor, constant: 34),
            dollTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),

            dollCopy.leadingAnchor.constraint(equalTo: dollTitle.leadingAnchor),
            dollCopy.topAnchor.constraint(equalTo: dollTitle.bottomAnchor, constant: 10),
            dollCopy.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            dollCopy.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -24)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }
}

private final class DolluPendantRewardCard: UIControl {
    var dollTapped: (() -> Void)?
    private let tinyCoverDollmexa = DolluPendantRingView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let satinMarkerDollpavo = PaddingLabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.96)
        layer.cornerRadius = 22
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.07).cgColor

        tinyCoverDollmexa.translatesAutoresizingMaskIntoConstraints = false
        addSubview(tinyCoverDollmexa)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        layeredCatalogDollquvo.textAlignment = .center
        layeredCatalogDollquvo.numberOfLines = 2
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.76
        addSubview(layeredCatalogDollquvo)

        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        cozyMemoDolllaro.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        cozyMemoDolllaro.textAlignment = .center
        cozyMemoDolllaro.numberOfLines = 2
        addSubview(cozyMemoDolllaro)

        satinMarkerDollpavo.textColor = UIColor(red: 0.84, green: 0.68, blue: 1, alpha: 1)
        satinMarkerDollpavo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        satinMarkerDollpavo.backgroundColor = UIColor(red: 0.28, green: 0.12, blue: 0.48, alpha: 0.92)
        satinMarkerDollpavo.layer.cornerRadius = 14
        satinMarkerDollpavo.layer.borderWidth = 1.2
        satinMarkerDollpavo.layer.borderColor = UIColor(red: 0.52, green: 0.25, blue: 0.94, alpha: 1).cgColor
        satinMarkerDollpavo.clipsToBounds = true
        satinMarkerDollpavo.isHidden = true
        addSubview(satinMarkerDollpavo)

        addTarget(self, action: #selector(tapDollCard), for: .touchUpInside)
        addTarget(self, action: #selector(pressDollCard), for: .touchDown)
        addTarget(self, action: #selector(releaseDollCard), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 172),
            tinyCoverDollmexa.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            tinyCoverDollmexa.centerXAnchor.constraint(equalTo: centerXAnchor),
            tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 92),
            tinyCoverDollmexa.heightAnchor.constraint(equalToConstant: 74),

            satinMarkerDollpavo.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 28),

            layeredCatalogDollquvo.topAnchor.constraint(equalTo: tinyCoverDollmexa.bottomAnchor, constant: 12),
            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),

            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 14),
            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cozyMemoDolllaro.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -16)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollPendant: DolluCheckinPendantArchive, dollArchive: DolunarBootDollvexArchive) {
        tinyCoverDollmexa.configure(dollTint: dollPendant.dollTint, dollAccent: dollPendant.dollAccent)
        layeredCatalogDollquvo.text = dollPendant.dollPendantName
        if let dollCopy = dollPendant.dollRequiredCopy {
            cozyMemoDolllaro.text = "▣  \(dollCopy)"
            satinMarkerDollpavo.text = "Reward"
            satinMarkerDollpavo.isHidden = false
        } else {
            cozyMemoDolllaro.text = "★  \(dollPendant.dollRequiredStars)"
            satinMarkerDollpavo.isHidden = !dollArchive.dollUnlockedPendantIds.contains(dollPendant.dollPendantId)
            satinMarkerDollpavo.text = "Owned"
        }
    }

    @objc private func tapDollCard() {
        dollTapped?()
    }

    @objc private func pressDollCard() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.98, y: 0.98)
            self.alpha = 0.88
        }
    }

    @objc private func releaseDollCard() {
        UIView.animate(withDuration: 0.14) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

private final class DolluUnlockedPendantPreview: UIView {
    private let dollPendant: DolluCheckinPendantArchive

    init(dollPendant: DolluCheckinPendantArchive) {
        self.dollPendant = dollPendant
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        let dollRecord = DolluWardrobeArchiveStore.satinCollectionArchive.currentDollCollectorRecord()
        let dollName = dollRecord?.dollCollectorName ?? "Dollu"
        let dollAvatar = UIImageView(image: DolluPlaceholderImageFactory.makeDollPlaceholder(title: dollName))
        dollAvatar.translatesAutoresizingMaskIntoConstraints = false
        dollAvatar.contentMode = .scaleAspectFill
        dollAvatar.layer.cornerRadius = 56
        dollAvatar.clipsToBounds = true
        addSubview(dollAvatar)

        let dollRing = DolluPendantRingView()
        dollRing.configure(dollTint: dollPendant.dollTint, dollAccent: dollPendant.dollAccent)
        dollRing.translatesAutoresizingMaskIntoConstraints = false
        addSubview(dollRing)

        NSLayoutConstraint.activate([
            dollAvatar.centerXAnchor.constraint(equalTo: centerXAnchor),
            dollAvatar.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollAvatar.widthAnchor.constraint(equalToConstant: 112),
            dollAvatar.heightAnchor.constraint(equalToConstant: 112),
            dollRing.centerXAnchor.constraint(equalTo: centerXAnchor),
            dollRing.centerYAnchor.constraint(equalTo: centerYAnchor),
            dollRing.widthAnchor.constraint(equalToConstant: 166),
            dollRing.heightAnchor.constraint(equalToConstant: 142)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }
}

private final class DolluPendantUnlockStatsView: UIView {
    private let satinCollectionDollvelo = UILabel()
    private let crispProgressDollsovo = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.96)
        layer.cornerRadius = 20

        let dollLeftStack = makeDollStatStack(dollTitleLabel: satinCollectionDollvelo, dollCopy: "Stars spent")
        let dollRightStack = makeDollStatStack(dollTitleLabel: crispProgressDollsovo, dollCopy: "Stars left")
        let dollDivider = UIView()
        dollDivider.translatesAutoresizingMaskIntoConstraints = false
        dollDivider.backgroundColor = UIColor(white: 1, alpha: 0.12)
        addSubview(dollLeftStack)
        addSubview(dollDivider)
        addSubview(dollRightStack)

        NSLayoutConstraint.activate([
            dollLeftStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            dollLeftStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            dollLeftStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            dollLeftStack.trailingAnchor.constraint(equalTo: dollDivider.leadingAnchor, constant: -16),

            dollDivider.centerXAnchor.constraint(equalTo: centerXAnchor),
            dollDivider.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            dollDivider.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18),
            dollDivider.widthAnchor.constraint(equalToConstant: 1),

            dollRightStack.leadingAnchor.constraint(equalTo: dollDivider.trailingAnchor, constant: 16),
            dollRightStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            dollRightStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            dollRightStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollSpent: Int, dollLeft: Int) {
        satinCollectionDollvelo.text = "★ \(dollSpent)"
        crispProgressDollsovo.text = "★ \(dollLeft)"
    }

    private func makeDollStatStack(dollTitleLabel: UILabel, dollCopy: String) -> UIStackView {
        let dollStack = UIStackView()
        dollStack.translatesAutoresizingMaskIntoConstraints = false
        dollStack.axis = .vertical
        dollStack.alignment = .center
        dollStack.spacing = 8

        dollTitleLabel.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .heavy)
        dollStack.addArrangedSubview(dollTitleLabel)

        let dollCopyLabel = UILabel()
        dollCopyLabel.text = dollCopy
        dollCopyLabel.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopyLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        dollStack.addArrangedSubview(dollCopyLabel)
        return dollStack
    }
}

private final class DolluPendantRingView: UIView {
    private var dollTint = UIColor(red: 1, green: 0.62, blue: 0.78, alpha: 1)
    private var dollAccent = UIColor(red: 0.90, green: 0.44, blue: 0.98, alpha: 1)

    func configure(dollTint: UIColor, dollAccent: UIColor) {
        self.dollTint = dollTint
        self.dollAccent = dollAccent
        setNeedsDisplay()
    }

    override func draw(_ rect: CGRect) {
        guard let dollContext = UIGraphicsGetCurrentContext() else { return }
        let dollInset = min(rect.width, rect.height) * 0.18
        let dollRingRect = rect.insetBy(dx: dollInset, dy: dollInset * 0.68)
        dollContext.setLineWidth(8)
        dollContext.setStrokeColor(dollTint.cgColor)
        dollContext.strokeEllipse(in: dollRingRect)
        dollContext.setLineWidth(2)
        dollContext.setStrokeColor(UIColor.white.withAlphaComponent(0.58).cgColor)
        dollContext.strokeEllipse(in: dollRingRect.insetBy(dx: 5, dy: 5))

        drawDollBow(at: CGPoint(x: dollRingRect.minX + 16, y: dollRingRect.minY + 4), dollScale: 1)
        drawDollBow(at: CGPoint(x: dollRingRect.maxX - 18, y: dollRingRect.maxY - 2), dollScale: 0.82)
        drawDollGem(at: CGPoint(x: dollRingRect.midX + 34, y: dollRingRect.minY + 2), dollSize: 11)
        drawDollGem(at: CGPoint(x: dollRingRect.minX + 18, y: dollRingRect.maxY - 6), dollSize: 9)
    }

    private func drawDollBow(at dollPoint: CGPoint, dollScale: CGFloat) {
        let dollPath = UIBezierPath()
        dollPath.move(to: dollPoint)
        dollPath.addQuadCurve(to: CGPoint(x: dollPoint.x - 22 * dollScale, y: dollPoint.y + 14 * dollScale), controlPoint: CGPoint(x: dollPoint.x - 14 * dollScale, y: dollPoint.y - 12 * dollScale))
        dollPath.addQuadCurve(to: dollPoint, controlPoint: CGPoint(x: dollPoint.x - 6 * dollScale, y: dollPoint.y + 20 * dollScale))
        dollPath.move(to: dollPoint)
        dollPath.addQuadCurve(to: CGPoint(x: dollPoint.x + 22 * dollScale, y: dollPoint.y + 14 * dollScale), controlPoint: CGPoint(x: dollPoint.x + 14 * dollScale, y: dollPoint.y - 12 * dollScale))
        dollPath.addQuadCurve(to: dollPoint, controlPoint: CGPoint(x: dollPoint.x + 6 * dollScale, y: dollPoint.y + 20 * dollScale))
        dollAccent.setFill()
        dollPath.fill()
        dollTint.setStroke()
        dollPath.lineWidth = 2
        dollPath.stroke()
    }

    private func drawDollGem(at dollPoint: CGPoint, dollSize: CGFloat) {
        let dollRect = CGRect(x: dollPoint.x - dollSize / 2, y: dollPoint.y - dollSize / 2, width: dollSize, height: dollSize)
        let dollGem = UIBezierPath(ovalIn: dollRect)
        UIColor.white.withAlphaComponent(0.84).setFill()
        dollGem.fill()
        dollAccent.setStroke()
        dollGem.lineWidth = 2
        dollGem.stroke()
    }
}

private final class DolluRewardRoundIcon: UIView {
    private let dollTint: UIColor

    init(dollTint: UIColor) {
        self.dollTint = dollTint
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = dollTint.withAlphaComponent(0.24)
        layer.cornerRadius = 22
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func draw(_ rect: CGRect) {
        let dollCenter = CGPoint(x: rect.midX, y: rect.midY)
        let dollPath = UIBezierPath()
        for dollIndex in 0..<10 {
            let dollRadius = dollIndex.isMultiple(of: 2) ? rect.width * 0.22 : rect.width * 0.10
            let dollAngle = CGFloat(dollIndex) * .pi / 5 - .pi / 2
            let dollPoint = CGPoint(x: dollCenter.x + cos(dollAngle) * dollRadius, y: dollCenter.y + sin(dollAngle) * dollRadius)
            dollIndex == 0 ? dollPath.move(to: dollPoint) : dollPath.addLine(to: dollPoint)
        }
        dollPath.close()
        UIColor(red: 1, green: 0.72, blue: 0.26, alpha: 1).setFill()
        dollPath.fill()
        dollTint.withAlphaComponent(0.38).setStroke()
        dollPath.lineWidth = 2
        dollPath.stroke()
    }
}

private final class DolluRewardBackButton: UIControl {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(white: 1, alpha: 0.12)
        layer.cornerRadius = 16
        let dollArrow = UILabel()
        dollArrow.translatesAutoresizingMaskIntoConstraints = false
        dollArrow.text = "‹"
        dollArrow.textColor = .white
        dollArrow.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 34, dollFontWeight: .medium)
        dollArrow.textAlignment = .center
        addSubview(dollArrow)
        NSLayoutConstraint.activate([
            dollArrow.centerXAnchor.constraint(equalTo: centerXAnchor),
            dollArrow.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -2)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }
}

private final class DolluRewardToastView: UIView {
    private let cottonFrameDollukp = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.12, blue: 0.28, alpha: 0.96)
        layer.cornerRadius = 16
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.12).cgColor

        cottonFrameDollukp.translatesAutoresizingMaskIntoConstraints = false
        cottonFrameDollukp.textColor = .white
        cottonFrameDollukp.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        cottonFrameDollukp.textAlignment = .center
        cottonFrameDollukp.numberOfLines = 2
        addSubview(cottonFrameDollukp)
        NSLayoutConstraint.activate([
            cottonFrameDollukp.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            cottonFrameDollukp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            cottonFrameDollukp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            cottonFrameDollukp.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(_ dollText: String) {
        cottonFrameDollukp.text = dollText
    }
}

private final class PaddingLabel: UILabel {
    var dollInsets = UIEdgeInsets(top: 7, left: 14, bottom: 7, right: 14)

    override var intrinsicContentSize: CGSize {
        let dollSize = super.intrinsicContentSize
        return CGSize(width: dollSize.width + dollInsets.left + dollInsets.right, height: dollSize.height + dollInsets.top + dollInsets.bottom)
    }

    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: dollInsets))
    }
}
