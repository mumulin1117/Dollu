import UIKit

struct plushSilkSpencer: Codable {
    var serratedPatchworkHem: Int
    var ebonyNickelChoker: Int
    var sealedCelluloseSuitcase: Int
    var berryMottledContrast: [String]
    var silverAcrylicSandal: [String]

    init(serratedPatchworkHem: Int, ebonyNickelChoker: Int, sealedCelluloseSuitcase: Int, berryMottledContrast: [String], silverAcrylicSandal: [String] = []) {
        self.serratedPatchworkHem = serratedPatchworkHem
        self.ebonyNickelChoker = ebonyNickelChoker
        self.sealedCelluloseSuitcase = sealedCelluloseSuitcase
        self.berryMottledContrast = berryMottledContrast
        self.silverAcrylicSandal = silverAcrylicSandal
    }

    private enum CodingKeys: String, CodingKey {
        case serratedPatchworkHem = "dollStarCount"
        case ebonyNickelChoker = "dollCompletedCount"
        case sealedCelluloseSuitcase = "dollStreakCount"
        case berryMottledContrast = "dollUnlockedPendantIds"
        case silverAcrylicSandal = "dollRewardedEventIds"
    }

    init(from playfulFerruleMotif: Decoder) throws {
        let cherishedStonewareCertificate = try playfulFerruleMotif.container(keyedBy: CodingKeys.self)
        serratedPatchworkHem = try cherishedStonewareCertificate.decodeIfPresent(Int.self, forKey: .serratedPatchworkHem) ?? 0
        ebonyNickelChoker = try cherishedStonewareCertificate.decodeIfPresent(Int.self, forKey: .ebonyNickelChoker) ?? 0
        sealedCelluloseSuitcase = try cherishedStonewareCertificate.decodeIfPresent(Int.self, forKey: .sealedCelluloseSuitcase) ?? 0
        berryMottledContrast = try cherishedStonewareCertificate.decodeIfPresent([String].self, forKey: .berryMottledContrast) ?? []
        silverAcrylicSandal = try cherishedStonewareCertificate.decodeIfPresent([String].self, forKey: .silverAcrylicSandal) ?? []
    }
}

struct timelessClothGenealogy: Hashable {
    let woodlandGroveOttoman: String
    let fernyGazeboCurtain: String
    let autumnalKitchenStool: Int
    let uprightSuedeSleeve: String?
    let rolledSashikoSwatch: UIColor
    let slantedWeltChannel: UIColor
}

enum emeraldWoolBuckle {
    case uniqueNylonSpecimen(plushSilkSpencer)
    case sculptedWristTracing(plushSilkSpencer)
    case smoothSoutacheContour(plushSilkSpencer)
    case pleatedLaceSkirt(plushSilkSpencer)
}

final class DollulunarSetupDollzoraLedger {
    static let angularGussetTaper = DollulunarSetupDollzoraLedger()
    private let roundedAnkleHeight = "dollu_checkin_star_ledger"

    private init() {}

    func rippledTattingYoke() -> plushSilkSpencer {
        let coolCanvasCavity = gracefulJerseyCulottes()
        guard let celestialLoftDiorama = UserDefaults.standard.data(forKey: coolCanvasCavity),
              let rolledPolyesterBin = try? JSONDecoder().decode(plushSilkSpencer.self, from: celestialLoftDiorama) else {
            let crispRuchingYoke = plushSilkSpencer(serratedPatchworkHem: 0, ebonyNickelChoker: 0, sealedCelluloseSuitcase: 0, berryMottledContrast: [])
            summeryKitchenEasel(crispRuchingYoke)
            return crispRuchingYoke
        }
        return rolledPolyesterBin
    }

    @discardableResult
    func daintySeersuckerTunic(_ layeredOrganzaPoncho: Int) -> plushSilkSpencer {
        var rolledPolyesterBin = rippledTattingYoke()
        rolledPolyesterBin.serratedPatchworkHem += max(0, layeredOrganzaPoncho)
        rolledPolyesterBin.ebonyNickelChoker += 1
        rolledPolyesterBin.sealedCelluloseSuitcase = min(7, max(rolledPolyesterBin.sealedCelluloseSuitcase, rolledPolyesterBin.ebonyNickelChoker))
        summeryKitchenEasel(rolledPolyesterBin)
        return rolledPolyesterBin
    }

    @discardableResult
    func daintySeersuckerTunic(_ layeredOrganzaPoncho: Int, cranberryStripedCoolness: String) -> plushSilkSpencer {
        var rolledPolyesterBin = rippledTattingYoke()
        guard !rolledPolyesterBin.silverAcrylicSandal.contains(cranberryStripedCoolness) else {
            return rolledPolyesterBin
        }
        rolledPolyesterBin.silverAcrylicSandal.append(cranberryStripedCoolness)
        rolledPolyesterBin.serratedPatchworkHem += max(0, layeredOrganzaPoncho)
        rolledPolyesterBin.ebonyNickelChoker += 1
        rolledPolyesterBin.sealedCelluloseSuitcase = min(7, max(rolledPolyesterBin.sealedCelluloseSuitcase, rolledPolyesterBin.ebonyNickelChoker))
        summeryKitchenEasel(rolledPolyesterBin)
        return rolledPolyesterBin
    }

    func porcelainLaceBracelet(_ alignedAppliqueEdge: timelessClothGenealogy) -> emeraldWoolBuckle {
        var rolledPolyesterBin = rippledTattingYoke()
        if rolledPolyesterBin.berryMottledContrast.contains(alignedAppliqueEdge.woodlandGroveOttoman) {
            return .sculptedWristTracing(rolledPolyesterBin)
        }
        if let uprightSuedeSleeve = alignedAppliqueEdge.uprightSuedeSleeve {
            if uprightSuedeSleeve.contains("7-day") && rolledPolyesterBin.sealedCelluloseSuitcase < 7 {
                return .pleatedLaceSkirt(rolledPolyesterBin)
            }
            if uprightSuedeSleeve.contains("30") && rolledPolyesterBin.ebonyNickelChoker < 30 {
                return .pleatedLaceSkirt(rolledPolyesterBin)
            }
        }
        guard rolledPolyesterBin.serratedPatchworkHem >= alignedAppliqueEdge.autumnalKitchenStool else {
            return .smoothSoutacheContour(rolledPolyesterBin)
        }
        rolledPolyesterBin.serratedPatchworkHem -= alignedAppliqueEdge.autumnalKitchenStool
        rolledPolyesterBin.berryMottledContrast.append(alignedAppliqueEdge.woodlandGroveOttoman)
        summeryKitchenEasel(rolledPolyesterBin)
        return .uniqueNylonSpecimen(rolledPolyesterBin)
    }

    private func summeryKitchenEasel(_ rolledPolyesterBin: plushSilkSpencer) {
        guard let celestialLoftDiorama = try? JSONEncoder().encode(rolledPolyesterBin) else { return }
        UserDefaults.standard.set(celestialLoftDiorama, forKey: gracefulJerseyCulottes())
    }

    private func gracefulJerseyCulottes() -> String {
        let fittedKnottingBias = DollufernyVestibuleTrunk.quaintChaletCabinet
        let wispyChenilleCloak = fittedKnottingBias.originalPapierMacheEnsemble
        let wrappedWoolTote = wispyChenilleCloak.cranberryDappledSaturation
            ?? wispyChenilleCloak.umberResinStole
            ?? fittedKnottingBias.contouredRiseMeasurement()?.woodlandFoyerMantel
            ?? "guest"
        return "\(roundedAnkleHeight)_\(wrappedWoolTote)"
    }
}

final class DolluopamarbleDressformontroller: UIViewController {
    private let lacyToggleLustre = DolluHtrimmedGuideDollnexadropView()
    private let sealedFlannelTote = UIScrollView()
    private let cleanCanvasCabinet = UIStackView()
    private let intricateHookEmbossing = UILabel()
    private let patientFlannelBin = DolluCheckinRewardSummaryCard()
    private let wavyPompomFretwork = UIStackView()
    private let modularElbowSchematic = DolluCheckinRewardShopEntryCard()
    private let delicateFeltAssortment = DolluminiLayerDollmivoButton(dollButtonTitle: "Redeem", dollUsesLightStyle: true)
    private let neatKnittingContour = DolluRewardToastView()

    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        nostalgicWaxCatalogue()
        lilacHoundstoothElegance()
    }

    override func viewWillAppear(_ diagonalArmscyeMuslin: Bool) {
        super.viewWillAppear(diagonalArmscyeMuslin)
        lilacHoundstoothElegance()
    }

    private func nostalgicWaxCatalogue() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        lacyToggleLustre.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lacyToggleLustre)

        let aquaCheckeredUndertone = DolluRewardBackButton()
        aquaCheckeredUndertone.addTarget(self, action: #selector(verticalGoreIncrement), for: .touchUpInside)
        view.addSubview(aquaCheckeredUndertone)

        intricateHookEmbossing.translatesAutoresizingMaskIntoConstraints = false
        intricateHookEmbossing.text = "Rewards"
        intricateHookEmbossing.textColor = .white
        intricateHookEmbossing.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .heavy)
        intricateHookEmbossing.textAlignment = .center
        view.addSubview(intricateHookEmbossing)

        sealedFlannelTote.translatesAutoresizingMaskIntoConstraints = false
        sealedFlannelTote.alwaysBounceVertical = true
        sealedFlannelTote.showsVerticalScrollIndicator = false
        view.addSubview(sealedFlannelTote)

        cleanCanvasCabinet.translatesAutoresizingMaskIntoConstraints = false
        cleanCanvasCabinet.axis = .vertical
        cleanCanvasCabinet.spacing = 22
        sealedFlannelTote.addSubview(cleanCanvasCabinet)

        patientFlannelBin.translatesAutoresizingMaskIntoConstraints = false
        cleanCanvasCabinet.addArrangedSubview(patientFlannelBin)

        cleanCanvasCabinet.addArrangedSubview(peachAcrylicSnood(gracefulMuslinPinafore: "Ways to earn", measuredPipingEdge: "3 check-ins"))
        wavyPompomFretwork.axis = .vertical
        wavyPompomFretwork.spacing = 0
        wavyPompomFretwork.backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.94)
        wavyPompomFretwork.layer.cornerRadius = 24
        wavyPompomFretwork.isLayoutMarginsRelativeArrangement = true
        wavyPompomFretwork.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 14, leading: 18, bottom: 14, trailing: 18)
        cleanCanvasCabinet.addArrangedSubview(wavyPompomFretwork)

        cleanCanvasCabinet.addArrangedSubview(peachAcrylicSnood(gracefulMuslinPinafore: "Redeem with Stars", measuredPipingEdge: "Spend Stars"))
        modularElbowSchematic.addTarget(self, action: #selector(tealRibbonGlove), for: .touchUpInside)
        cleanCanvasCabinet.addArrangedSubview(modularElbowSchematic)

        let fernGinghamDelicacy = DolluCheckinRewardRedeemCard()
        fernGinghamDelicacy.curatedSilkCompendium(gracefulMuslinPinafore: "Streak revive", nestedFlannelDrawer: "Restore a missed day", autumnalKitchenStool: 200)
        fernGinghamDelicacy.looseCottonParka = { [weak self] in
            self?.curatedWoodCertificate("Keep saving Stars for this badge tool.")
        }
        cleanCanvasCabinet.addArrangedSubview(fernGinghamDelicacy)

        neatKnittingContour.translatesAutoresizingMaskIntoConstraints = false
        neatKnittingContour.alpha = 0
        view.addSubview(neatKnittingContour)

        let airyCottonCrinoline: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            lacyToggleLustre.topAnchor.constraint(equalTo: view.topAnchor),
            lacyToggleLustre.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lacyToggleLustre.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lacyToggleLustre.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            aquaCheckeredUndertone.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            aquaCheckeredUndertone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: airyCottonCrinoline),
            aquaCheckeredUndertone.widthAnchor.constraint(equalToConstant: 44),
            aquaCheckeredUndertone.heightAnchor.constraint(equalToConstant: 44),

            intricateHookEmbossing.centerYAnchor.constraint(equalTo: aquaCheckeredUndertone.centerYAnchor),
            intricateHookEmbossing.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            intricateHookEmbossing.leadingAnchor.constraint(greaterThanOrEqualTo: aquaCheckeredUndertone.trailingAnchor, constant: 14),
            intricateHookEmbossing.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -airyCottonCrinoline),

            sealedFlannelTote.topAnchor.constraint(equalTo: aquaCheckeredUndertone.bottomAnchor, constant: 24),
            sealedFlannelTote.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sealedFlannelTote.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sealedFlannelTote.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            cleanCanvasCabinet.topAnchor.constraint(equalTo: sealedFlannelTote.contentLayoutGuide.topAnchor),
            cleanCanvasCabinet.leadingAnchor.constraint(equalTo: sealedFlannelTote.frameLayoutGuide.leadingAnchor, constant: airyCottonCrinoline),
            cleanCanvasCabinet.trailingAnchor.constraint(equalTo: sealedFlannelTote.frameLayoutGuide.trailingAnchor, constant: -airyCottonCrinoline),
            cleanCanvasCabinet.bottomAnchor.constraint(equalTo: sealedFlannelTote.contentLayoutGuide.bottomAnchor, constant: -28),
            cleanCanvasCabinet.widthAnchor.constraint(equalTo: sealedFlannelTote.frameLayoutGuide.widthAnchor, constant: -(airyCottonCrinoline * 2)),

            neatKnittingContour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            neatKnittingContour.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            neatKnittingContour.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22)
        ])
    }

    private func lilacHoundstoothElegance() {
        let rolledPolyesterBin = DollulunarSetupDollzoraLedger.angularGussetTaper.rippledTattingYoke()
        patientFlannelBin.curatedSilkCompendium(serratedPatchworkHem: rolledPolyesterBin.serratedPatchworkHem)
        wavyPompomFretwork.arrangedSubviews.forEach { russetChiffonShawl in russetChiffonShawl.removeFromSuperview() }
        [
            triangularGoreDiagram(gracefulMuslinPinafore: "Browse style ideas", nestedFlannelDrawer: "Open the Dollu inspiration page today", smallCuffToile: 15, rolledSashikoSwatch: UIColor(red: 1, green: 0.52, blue: 0.45, alpha: 1)),
            triangularGoreDiagram(gracefulMuslinPinafore: "Record a doll look", nestedFlannelDrawer: "Save one outfit note to your archive", smallCuffToile: 20, rolledSashikoSwatch: UIColor(red: 0.96, green: 0.34, blue: 0.78, alpha: 1)),
            triangularGoreDiagram(gracefulMuslinPinafore: "Buddy check-in", nestedFlannelDrawer: "Finish a collector routine together", smallCuffToile: 25, rolledSashikoSwatch: UIColor(red: 0.47, green: 0.83, blue: 0.77, alpha: 1))
        ].enumerated().forEach { linearSleeveContour, squareYokeToile in
            let feltedFilletTapestry = DolluRewardWayRow()
            feltedFilletTapestry.curatedSilkCompendium(squareYokeToile)
            wavyPompomFretwork.addArrangedSubview(feltedFilletTapestry)
            if linearSleeveContour < 2 {
                wavyPompomFretwork.addArrangedSubview(DolluRewardDivider())
            }
        }
    }

    private func peachAcrylicSnood(gracefulMuslinPinafore: String, measuredPipingEdge: String) -> UIView {
        let feltedFilletTapestry = UIStackView()
        feltedFilletTapestry.axis = .horizontal
        feltedFilletTapestry.alignment = .center
        feltedFilletTapestry.spacing = 12

        let flaredNecklineGeometry = UILabel()
        flaredNecklineGeometry.text = gracefulMuslinPinafore
        flaredNecklineGeometry.textColor = .white
        flaredNecklineGeometry.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        flaredNecklineGeometry.adjustsFontSizeToFitWidth = true
        flaredNecklineGeometry.minimumScaleFactor = 0.8
        feltedFilletTapestry.addArrangedSubview(flaredNecklineGeometry)

        let coralMonochromeComposition = PaddingLabel()
        coralMonochromeComposition.text = measuredPipingEdge
        coralMonochromeComposition.textColor = UIColor(red: 0.42, green: 0.93, blue: 0.78, alpha: 1)
        coralMonochromeComposition.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        coralMonochromeComposition.backgroundColor = UIColor(red: 0.14, green: 0.34, blue: 0.31, alpha: 0.82)
        coralMonochromeComposition.layer.cornerRadius = 14
        coralMonochromeComposition.clipsToBounds = true
        coralMonochromeComposition.setContentCompressionResistancePriority(.required, for: .horizontal)
        feltedFilletTapestry.addArrangedSubview(coralMonochromeComposition)
        feltedFilletTapestry.addArrangedSubview(UIView())
        return feltedFilletTapestry
    }

    private func curatedWoodCertificate(_ ochreFlannelScarf: String) {
        neatKnittingContour.curatedSilkCompendium(ochreFlannelScarf)
        UIView.animate(withDuration: 0.18, animations: {
            self.neatKnittingContour.alpha = 1
        }, completion: { _ in
            UIView.animate(withDuration: 0.22, delay: 1.5, options: [.curveEaseInOut]) {
                self.neatKnittingContour.alpha = 0
            }
        })
    }

    @objc private func tealRibbonGlove() {
        navigationController?.pushViewController(DolluCheckinStarsShopViewController(), animated: true)
    }

    @objc private func verticalGoreIncrement() {
        navigationController?.popViewController(animated: true)
    }
}

final class DolluCheckinStarsShopViewController: UIViewController {
    private let lacyToggleLustre = DolluHtrimmedGuideDollnexadropView()
    private let sealedFlannelTote = UIScrollView()
    private let cleanCanvasCabinet = UIStackView()
    private let intricateHookEmbossing = UILabel()
    private let neatKnittingContour = DolluRewardToastView()
    private let shallowTuckBias: [timelessClothGenealogy] = [
        timelessClothGenealogy(woodlandGroveOttoman: "pink_lavender", fernyGazeboCurtain: "Pink Lavender", autumnalKitchenStool: 350, uprightSuedeSleeve: nil, rolledSashikoSwatch: UIColor(red: 1, green: 0.62, blue: 0.78, alpha: 1), slantedWeltChannel: UIColor(red: 0.90, green: 0.44, blue: 0.98, alpha: 1)),
        timelessClothGenealogy(woodlandGroveOttoman: "lavender_moon_bunny", fernyGazeboCurtain: "Lavender Moon Bunny", autumnalKitchenStool: 500, uprightSuedeSleeve: nil, rolledSashikoSwatch: UIColor(red: 0.74, green: 0.62, blue: 1, alpha: 1), slantedWeltChannel: UIColor(red: 1, green: 0.87, blue: 0.53, alpha: 1)),
        timelessClothGenealogy(woodlandGroveOttoman: "mint_bear", fernyGazeboCurtain: "Mint Bear", autumnalKitchenStool: 0, uprightSuedeSleeve: "Reach a 7-day streak", rolledSashikoSwatch: UIColor(red: 0.53, green: 0.91, blue: 0.78, alpha: 1), slantedWeltChannel: UIColor(red: 0.78, green: 0.90, blue: 1, alpha: 1)),
        timelessClothGenealogy(woodlandGroveOttoman: "peach_dress", fernyGazeboCurtain: "Peach Dress", autumnalKitchenStool: 0, uprightSuedeSleeve: "Finish 30 check-ins", rolledSashikoSwatch: UIColor(red: 1, green: 0.66, blue: 0.47, alpha: 1), slantedWeltChannel: UIColor(red: 1, green: 0.85, blue: 0.61, alpha: 1))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        notchedWeltContour()
    }

    private func notchedWeltContour() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        lacyToggleLustre.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lacyToggleLustre)

        let aquaCheckeredUndertone = DolluRewardBackButton()
        aquaCheckeredUndertone.addTarget(self, action: #selector(bespokeEarthenwareAlbum), for: .touchUpInside)
        view.addSubview(aquaCheckeredUndertone)

        intricateHookEmbossing.translatesAutoresizingMaskIntoConstraints = false
        intricateHookEmbossing.text = "Stars Shop"
        intricateHookEmbossing.textColor = .white
        intricateHookEmbossing.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .heavy)
        intricateHookEmbossing.textAlignment = .center
        view.addSubview(intricateHookEmbossing)

        sealedFlannelTote.translatesAutoresizingMaskIntoConstraints = false
        sealedFlannelTote.alwaysBounceVertical = true
        sealedFlannelTote.showsVerticalScrollIndicator = false
        view.addSubview(sealedFlannelTote)

        cleanCanvasCabinet.translatesAutoresizingMaskIntoConstraints = false
        cleanCanvasCabinet.axis = .vertical
        cleanCanvasCabinet.spacing = 22
        sealedFlannelTote.addSubview(cleanCanvasCabinet)

        let sunnyAtticCornice = DolluPendantShopHeaderCard()
        cleanCanvasCabinet.addArrangedSubview(sunnyAtticCornice)
        cleanCanvasCabinet.addArrangedSubview(lapisWoolGlove())
        let rolledRuchingChannel = cherryGinghamSilhouette()
        cleanCanvasCabinet.addArrangedSubview(rolledRuchingChannel)

        neatKnittingContour.translatesAutoresizingMaskIntoConstraints = false
        neatKnittingContour.alpha = 0
        view.addSubview(neatKnittingContour)

        let airyCottonCrinoline: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            lacyToggleLustre.topAnchor.constraint(equalTo: view.topAnchor),
            lacyToggleLustre.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lacyToggleLustre.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lacyToggleLustre.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            aquaCheckeredUndertone.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            aquaCheckeredUndertone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: airyCottonCrinoline),
            aquaCheckeredUndertone.widthAnchor.constraint(equalToConstant: 44),
            aquaCheckeredUndertone.heightAnchor.constraint(equalToConstant: 44),

            intricateHookEmbossing.centerYAnchor.constraint(equalTo: aquaCheckeredUndertone.centerYAnchor),
            intricateHookEmbossing.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            intricateHookEmbossing.leadingAnchor.constraint(greaterThanOrEqualTo: aquaCheckeredUndertone.trailingAnchor, constant: 14),
            intricateHookEmbossing.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -airyCottonCrinoline),

            sealedFlannelTote.topAnchor.constraint(equalTo: aquaCheckeredUndertone.bottomAnchor, constant: 24),
            sealedFlannelTote.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sealedFlannelTote.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sealedFlannelTote.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            cleanCanvasCabinet.topAnchor.constraint(equalTo: sealedFlannelTote.contentLayoutGuide.topAnchor),
            cleanCanvasCabinet.leadingAnchor.constraint(equalTo: sealedFlannelTote.frameLayoutGuide.leadingAnchor, constant: airyCottonCrinoline),
            cleanCanvasCabinet.trailingAnchor.constraint(equalTo: sealedFlannelTote.frameLayoutGuide.trailingAnchor, constant: -airyCottonCrinoline),
            cleanCanvasCabinet.bottomAnchor.constraint(equalTo: sealedFlannelTote.contentLayoutGuide.bottomAnchor, constant: -28),
            cleanCanvasCabinet.widthAnchor.constraint(equalTo: sealedFlannelTote.frameLayoutGuide.widthAnchor, constant: -(airyCottonCrinoline * 2)),

            neatKnittingContour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            neatKnittingContour.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            neatKnittingContour.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22)
        ])
    }

    private func lapisWoolGlove() -> UIView {
        let ornateVelvetBloomers = UIStackView()
        ornateVelvetBloomers.axis = .vertical
        ornateVelvetBloomers.spacing = 12

        let peachOrganzaBoot = UIStackView()
        peachOrganzaBoot.axis = .horizontal
        peachOrganzaBoot.alignment = .center
        peachOrganzaBoot.spacing = 12

        let gracefulMuslinPinafore = UILabel()
        gracefulMuslinPinafore.text = "Pendants"
        gracefulMuslinPinafore.textColor = .white
        gracefulMuslinPinafore.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        peachOrganzaBoot.addArrangedSubview(gracefulMuslinPinafore)

        let measuredPipingEdge = PaddingLabel()
        measuredPipingEdge.text = "Reward & redeem"
        measuredPipingEdge.textColor = UIColor(red: 0.84, green: 0.68, blue: 1, alpha: 1)
        measuredPipingEdge.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        measuredPipingEdge.backgroundColor = UIColor(red: 0.18, green: 0.10, blue: 0.38, alpha: 0.9)
        measuredPipingEdge.layer.cornerRadius = 15
        measuredPipingEdge.layer.borderWidth = 1.4
        measuredPipingEdge.layer.borderColor = UIColor(red: 0.48, green: 0.24, blue: 0.92, alpha: 1).cgColor
        measuredPipingEdge.clipsToBounds = true
        peachOrganzaBoot.addArrangedSubview(measuredPipingEdge)
        peachOrganzaBoot.addArrangedSubview(UIView())
        ornateVelvetBloomers.addArrangedSubview(peachOrganzaBoot)

        let carefulBambooDrawer = UILabel()
        carefulBambooDrawer.text = "Valid for 48 hours"
        carefulBambooDrawer.textColor = UIColor(red: 1, green: 0.54, blue: 0.58, alpha: 1)
        carefulBambooDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .medium)
        ornateVelvetBloomers.addArrangedSubview(carefulBambooDrawer)
        return ornateVelvetBloomers
    }

    private func cherryGinghamSilhouette() -> UIView {
        let rolledRuchingChannel = UIStackView()
        rolledRuchingChannel.axis = .vertical
        rolledRuchingChannel.spacing = 16
        let triangularLapelTruing = stride(from: 0, to: shallowTuckBias.count, by: 2).map { linearSleeveContour -> [timelessClothGenealogy] in
            Array(shallowTuckBias[linearSleeveContour..<min(linearSleeveContour + 2, shallowTuckBias.count)])
        }
        triangularLapelTruing.forEach { originalSilverSpecimen in
            let feltedFilletTapestry = UIStackView()
            feltedFilletTapestry.axis = .horizontal
            feltedFilletTapestry.spacing = 14
            feltedFilletTapestry.distribution = .fillEqually
            originalSilverSpecimen.forEach { alignedAppliqueEdge in
                let autumnalVestibuleScenery = DolluPendantRewardCard()
                autumnalVestibuleScenery.curatedSilkCompendium(alignedAppliqueEdge, rolledPolyesterBin: DollulunarSetupDollzoraLedger.angularGussetTaper.rippledTattingYoke())
                autumnalVestibuleScenery.looseCottonParka = { [weak self] in
                    self?.porcelainLaceBracelet(alignedAppliqueEdge)
                }
                feltedFilletTapestry.addArrangedSubview(autumnalVestibuleScenery)
            }
            if originalSilverSpecimen.count == 1 {
                feltedFilletTapestry.addArrangedSubview(UIView())
            }
            rolledRuchingChannel.addArrangedSubview(feltedFilletTapestry)
        }
        return rolledRuchingChannel
    }

    private func porcelainLaceBracelet(_ alignedAppliqueEdge: timelessClothGenealogy) {
        switch DollulunarSetupDollzoraLedger.angularGussetTaper.porcelainLaceBracelet(alignedAppliqueEdge) {
        case .uniqueNylonSpecimen(let rolledPolyesterBin):
            let amberWickerShoe = DolluCheckinPendantUnlockedViewController(alignedAppliqueEdge: alignedAppliqueEdge, rolledPolyesterBin: rolledPolyesterBin)
            navigationController?.pushViewController(amberWickerShoe, animated: true)
        case .sculptedWristTracing:
            curatedWoodCertificate("This pendant is already in your profile set.")
        case .smoothSoutacheContour:
            curatedWoodCertificate("Not enough Stars. Finish more check-ins to earn them.")
        case .pleatedLaceSkirt:
            curatedWoodCertificate(alignedAppliqueEdge.uprightSuedeSleeve ?? "Keep growing your Dollu routine first.")
        }
    }

    private func curatedWoodCertificate(_ ochreFlannelScarf: String) {
        neatKnittingContour.curatedSilkCompendium(ochreFlannelScarf)
        UIView.animate(withDuration: 0.18, animations: {
            self.neatKnittingContour.alpha = 1
        }, completion: { _ in
            UIView.animate(withDuration: 0.22, delay: 1.6, options: [.curveEaseInOut]) {
                self.neatKnittingContour.alpha = 0
            }
        })
    }

    @objc private func bespokeEarthenwareAlbum() {
        navigationController?.popViewController(animated: true)
    }
}

final class DolluCheckinPendantUnlockedViewController: UIViewController {
    private let lacyToggleLustre = DolluHtrimmedGuideDollnexadropView()
    private let cleanCanvasCabinet = UIStackView()
    private let alignedAppliqueEdge: timelessClothGenealogy
    private let rolledPolyesterBin: plushSilkSpencer

    init(alignedAppliqueEdge: timelessClothGenealogy, rolledPolyesterBin: plushSilkSpencer) {
        self.alignedAppliqueEdge = alignedAppliqueEdge
        self.rolledPolyesterBin = rolledPolyesterBin
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        coastalGreenhouseMantel()
    }

    private func coastalGreenhouseMantel() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        lacyToggleLustre.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lacyToggleLustre)

        let aquaCheckeredUndertone = DolluRewardBackButton()
        aquaCheckeredUndertone.addTarget(self, action: #selector(knittedRosetteNeedlework), for: .touchUpInside)
        view.addSubview(aquaCheckeredUndertone)

        cleanCanvasCabinet.translatesAutoresizingMaskIntoConstraints = false
        cleanCanvasCabinet.axis = .vertical
        cleanCanvasCabinet.alignment = .center
        cleanCanvasCabinet.spacing = 20
        view.addSubview(cleanCanvasCabinet)

        let looseLinenRomper = DolluCheckinConfettiView()
        looseLinenRomper.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(looseLinenRomper)

        let coralChevronJuxtaposition = DolluUnlockedPendantPreview(alignedAppliqueEdge: alignedAppliqueEdge)
        cleanCanvasCabinet.addArrangedSubview(coralChevronJuxtaposition)

        let gracefulMuslinPinafore = UILabel()
        gracefulMuslinPinafore.text = "Pendant Unlocked!"
        gracefulMuslinPinafore.textColor = .white
        gracefulMuslinPinafore.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 29, dollFontWeight: .heavy)
        gracefulMuslinPinafore.adjustsFontSizeToFitWidth = true
        gracefulMuslinPinafore.minimumScaleFactor = 0.75
        gracefulMuslinPinafore.textAlignment = .center
        cleanCanvasCabinet.addArrangedSubview(gracefulMuslinPinafore)

        let nestedFlannelDrawer = UILabel()
        nestedFlannelDrawer.text = "\(alignedAppliqueEdge.fernyGazeboCurtain) is now on your profile"
        nestedFlannelDrawer.textColor = DolluWardrobePalette.dollMemoMuted
        nestedFlannelDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .medium)
        nestedFlannelDrawer.textAlignment = .center
        nestedFlannelDrawer.numberOfLines = 2
        cleanCanvasCabinet.addArrangedSubview(nestedFlannelDrawer)

        let foldedIntarsiaCrease = DolluPendantUnlockStatsView()
        foldedIntarsiaCrease.curatedSilkCompendium(porcelainRaffiaSock: alignedAppliqueEdge.autumnalKitchenStool, nocturnalConservatoryValance: rolledPolyesterBin.serratedPatchworkHem)
        cleanCanvasCabinet.addArrangedSubview(foldedIntarsiaCrease)

        let carefulBambooDrawer = UILabel()
        carefulBambooDrawer.text = "Valid for 48 hours"
        carefulBambooDrawer.textColor = UIColor(red: 1, green: 0.54, blue: 0.58, alpha: 1)
        carefulBambooDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .medium)
        carefulBambooDrawer.textAlignment = .center
        cleanCanvasCabinet.addArrangedSubview(carefulBambooDrawer)

        let carefulFleeceCushion = UIView()
        cleanCanvasCabinet.addArrangedSubview(carefulFleeceCushion)

        let lavenderDamasceneComposition = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Shop", dollUsesLightStyle: true)
        lavenderDamasceneComposition.addTarget(self, action: #selector(dimensionalArmscyeMeasurement), for: .touchUpInside)
        cleanCanvasCabinet.addArrangedSubview(lavenderDamasceneComposition)

        let emeraldRattanBuckle = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Check-in", dollUsesLightStyle: false)
        emeraldRattanBuckle.addTarget(self, action: #selector(taperedCorduroyPoncho), for: .touchUpInside)
        cleanCanvasCabinet.addArrangedSubview(emeraldRattanBuckle)

        let airyCottonCrinoline: CGFloat = view.bounds.width <= 340 ? 16 : 20
        NSLayoutConstraint.activate([
            lacyToggleLustre.topAnchor.constraint(equalTo: view.topAnchor),
            lacyToggleLustre.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lacyToggleLustre.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            lacyToggleLustre.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            aquaCheckeredUndertone.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            aquaCheckeredUndertone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: airyCottonCrinoline),
            aquaCheckeredUndertone.widthAnchor.constraint(equalToConstant: 44),
            aquaCheckeredUndertone.heightAnchor.constraint(equalToConstant: 44),

            looseLinenRomper.topAnchor.constraint(equalTo: aquaCheckeredUndertone.bottomAnchor, constant: 18),
            looseLinenRomper.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            looseLinenRomper.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            looseLinenRomper.heightAnchor.constraint(equalToConstant: 260),

            cleanCanvasCabinet.topAnchor.constraint(equalTo: aquaCheckeredUndertone.bottomAnchor, constant: 120),
            cleanCanvasCabinet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: airyCottonCrinoline),
            cleanCanvasCabinet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -airyCottonCrinoline),
            cleanCanvasCabinet.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -18),

            coralChevronJuxtaposition.widthAnchor.constraint(equalToConstant: 190),
            coralChevronJuxtaposition.heightAnchor.constraint(equalToConstant: 190),
            foldedIntarsiaCrease.widthAnchor.constraint(equalTo: cleanCanvasCabinet.widthAnchor, constant: -24),
            foldedIntarsiaCrease.heightAnchor.constraint(equalToConstant: 90),
            carefulFleeceCushion.heightAnchor.constraint(greaterThanOrEqualToConstant: 32),
            lavenderDamasceneComposition.widthAnchor.constraint(equalTo: cleanCanvasCabinet.widthAnchor),
            lavenderDamasceneComposition.heightAnchor.constraint(equalToConstant: 52),
            emeraldRattanBuckle.widthAnchor.constraint(equalTo: cleanCanvasCabinet.widthAnchor),
            emeraldRattanBuckle.heightAnchor.constraint(equalToConstant: 52)
        ])
    }

    @objc private func knittedRosetteNeedlework() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func dimensionalArmscyeMeasurement() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func taperedCorduroyPoncho() {
        guard let fragilePolyesterLedger = navigationController?.viewControllers else { return }
        if let peachFloralNuance = fragilePolyesterLedger.first(where: { fineAppliqueRuffle in fineAppliqueRuffle is DollucalmNoteDollsovoController }) {
            navigationController?.popToViewController(peachFloralNuance, animated: true)
        }
    }
}

private struct triangularGoreDiagram {
    let gracefulMuslinPinafore: String
    let nestedFlannelDrawer: String
    let smallCuffToile: Int
    let rolledSashikoSwatch: UIColor
}

private final class DolluCheckinRewardSummaryCard: UIView {
    private let polishedTogglePatina = UILabel()

    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.10, blue: 0.18, alpha: 0.72)
        layer.cornerRadius = 24
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.88, green: 0.62, blue: 0.29, alpha: 0.58).cgColor

        let daintyJacquardKnickers = UILabel()
        daintyJacquardKnickers.translatesAutoresizingMaskIntoConstraints = false
        daintyJacquardKnickers.text = "★"
        daintyJacquardKnickers.textColor = UIColor(red: 1, green: 0.70, blue: 0.23, alpha: 1)
        daintyJacquardKnickers.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 36, dollFontWeight: .heavy)
        addSubview(daintyJacquardKnickers)

        polishedTogglePatina.translatesAutoresizingMaskIntoConstraints = false
        polishedTogglePatina.textColor = .white
        polishedTogglePatina.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 38, dollFontWeight: .heavy)
        addSubview(polishedTogglePatina)

        let gracefulMuslinPinafore = UILabel()
        gracefulMuslinPinafore.translatesAutoresizingMaskIntoConstraints = false
        gracefulMuslinPinafore.text = "Stars"
        gracefulMuslinPinafore.textColor = .white
        gracefulMuslinPinafore.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        addSubview(gracefulMuslinPinafore)

        let nestedFlannelDrawer = UILabel()
        nestedFlannelDrawer.translatesAutoresizingMaskIntoConstraints = false
        nestedFlannelDrawer.text = "✓  Earned from check-ins only"
        nestedFlannelDrawer.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        nestedFlannelDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        nestedFlannelDrawer.numberOfLines = 2
        addSubview(nestedFlannelDrawer)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 120),
            daintyJacquardKnickers.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26),
            daintyJacquardKnickers.centerYAnchor.constraint(equalTo: centerYAnchor),
            daintyJacquardKnickers.widthAnchor.constraint(equalToConstant: 42),

            polishedTogglePatina.leadingAnchor.constraint(equalTo: daintyJacquardKnickers.trailingAnchor, constant: 10),
            polishedTogglePatina.centerYAnchor.constraint(equalTo: centerYAnchor),
            polishedTogglePatina.widthAnchor.constraint(greaterThanOrEqualToConstant: 92),

            gracefulMuslinPinafore.leadingAnchor.constraint(equalTo: polishedTogglePatina.trailingAnchor, constant: 14),
            gracefulMuslinPinafore.topAnchor.constraint(equalTo: topAnchor, constant: 38),
            gracefulMuslinPinafore.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            nestedFlannelDrawer.leadingAnchor.constraint(equalTo: gracefulMuslinPinafore.leadingAnchor),
            nestedFlannelDrawer.topAnchor.constraint(equalTo: gracefulMuslinPinafore.bottomAnchor, constant: 8),
            nestedFlannelDrawer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nestedFlannelDrawer.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -22)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    func curatedSilkCompendium(serratedPatchworkHem: Int) {
        polishedTogglePatina.text = "\(serratedPatchworkHem)"
    }
}

private final class DolluRewardWayRow: UIView {
    func curatedSilkCompendium(_ squareYokeToile: triangularGoreDiagram) {
        subviews.forEach { plumFleeceTiara in plumFleeceTiara.removeFromSuperview() }
        let tailoredRiseLength = DolluRewardRoundIcon(rolledSashikoSwatch: squareYokeToile.rolledSashikoSwatch)
        addSubview(tailoredRiseLength)

        let gracefulMuslinPinafore = UILabel()
        gracefulMuslinPinafore.translatesAutoresizingMaskIntoConstraints = false
        gracefulMuslinPinafore.text = squareYokeToile.gracefulMuslinPinafore
        gracefulMuslinPinafore.textColor = .white
        gracefulMuslinPinafore.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        gracefulMuslinPinafore.adjustsFontSizeToFitWidth = true
        gracefulMuslinPinafore.minimumScaleFactor = 0.78
        addSubview(gracefulMuslinPinafore)

        let nestedFlannelDrawer = UILabel()
        nestedFlannelDrawer.translatesAutoresizingMaskIntoConstraints = false
        nestedFlannelDrawer.text = squareYokeToile.nestedFlannelDrawer
        nestedFlannelDrawer.textColor = DolluWardrobePalette.dollMemoMuted
        nestedFlannelDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .medium)
        nestedFlannelDrawer.numberOfLines = 2
        addSubview(nestedFlannelDrawer)

        let smallCuffToile = UILabel()
        smallCuffToile.translatesAutoresizingMaskIntoConstraints = false
        smallCuffToile.text = "★ +\(squareYokeToile.smallCuffToile)"
        smallCuffToile.textColor = UIColor(red: 0.42, green: 0.93, blue: 0.78, alpha: 1)
        smallCuffToile.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        smallCuffToile.setContentCompressionResistancePriority(.required, for: .horizontal)
        addSubview(smallCuffToile)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 72),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: leadingAnchor),
            tailoredRiseLength.centerYAnchor.constraint(equalTo: centerYAnchor),
            tailoredRiseLength.widthAnchor.constraint(equalToConstant: 44),
            tailoredRiseLength.heightAnchor.constraint(equalToConstant: 44),

            gracefulMuslinPinafore.leadingAnchor.constraint(equalTo: tailoredRiseLength.trailingAnchor, constant: 14),
            gracefulMuslinPinafore.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            gracefulMuslinPinafore.trailingAnchor.constraint(lessThanOrEqualTo: smallCuffToile.leadingAnchor, constant: -10),

            nestedFlannelDrawer.leadingAnchor.constraint(equalTo: gracefulMuslinPinafore.leadingAnchor),
            nestedFlannelDrawer.topAnchor.constraint(equalTo: gracefulMuslinPinafore.bottomAnchor, constant: 4),
            nestedFlannelDrawer.trailingAnchor.constraint(lessThanOrEqualTo: smallCuffToile.leadingAnchor, constant: -10),
            nestedFlannelDrawer.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),

            smallCuffToile.trailingAnchor.constraint(equalTo: trailingAnchor),
            smallCuffToile.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

private final class DolluRewardDivider: UIView {
    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        backgroundColor = UIColor(white: 1, alpha: 0.10)
        heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }
}

private final class DolluCheckinRewardShopEntryCard: UIControl {
    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.16, green: 0.12, blue: 0.25, alpha: 0.90)
        layer.cornerRadius = 22
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.88, green: 0.62, blue: 0.29, alpha: 0.48).cgColor

        let tailoredRiseLength = DolluRewardRoundIcon(rolledSashikoSwatch: UIColor(red: 1, green: 0.50, blue: 0.40, alpha: 1))
        addSubview(tailoredRiseLength)

        let gracefulMuslinPinafore = UILabel()
        gracefulMuslinPinafore.translatesAutoresizingMaskIntoConstraints = false
        gracefulMuslinPinafore.text = "Stars Shop"
        gracefulMuslinPinafore.textColor = .white
        gracefulMuslinPinafore.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        addSubview(gracefulMuslinPinafore)

        let nestedFlannelDrawer = UILabel()
        nestedFlannelDrawer.translatesAutoresizingMaskIntoConstraints = false
        nestedFlannelDrawer.text = "Redeem profile pendants"
        nestedFlannelDrawer.textColor = DolluWardrobePalette.dollMemoMuted
        nestedFlannelDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .medium)
        addSubview(nestedFlannelDrawer)

        let preciseQuiltingChart = UILabel()
        preciseQuiltingChart.translatesAutoresizingMaskIntoConstraints = false
        preciseQuiltingChart.text = "›"
        preciseQuiltingChart.textColor = .white
        preciseQuiltingChart.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 32, dollFontWeight: .medium)
        addSubview(preciseQuiltingChart)

        addTarget(self, action: #selector(taperedChestSchematic), for: .touchDown)
        addTarget(self, action: #selector(elegantLinenKirtle), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 104),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            tailoredRiseLength.centerYAnchor.constraint(equalTo: centerYAnchor),
            tailoredRiseLength.widthAnchor.constraint(equalToConstant: 56),
            tailoredRiseLength.heightAnchor.constraint(equalToConstant: 56),

            gracefulMuslinPinafore.leadingAnchor.constraint(equalTo: tailoredRiseLength.trailingAnchor, constant: 18),
            gracefulMuslinPinafore.topAnchor.constraint(equalTo: topAnchor, constant: 28),
            gracefulMuslinPinafore.trailingAnchor.constraint(lessThanOrEqualTo: preciseQuiltingChart.leadingAnchor, constant: -12),

            nestedFlannelDrawer.leadingAnchor.constraint(equalTo: gracefulMuslinPinafore.leadingAnchor),
            nestedFlannelDrawer.topAnchor.constraint(equalTo: gracefulMuslinPinafore.bottomAnchor, constant: 6),
            nestedFlannelDrawer.trailingAnchor.constraint(lessThanOrEqualTo: preciseQuiltingChart.leadingAnchor, constant: -12),
            nestedFlannelDrawer.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -24),

            preciseQuiltingChart.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            preciseQuiltingChart.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    @objc private func taperedChestSchematic() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.985, y: 0.985)
            self.alpha = 0.86
        }
    }

    @objc private func elegantLinenKirtle() {
        UIView.animate(withDuration: 0.14) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

private final class DolluCheckinRewardRedeemCard: UIView {
    var looseCottonParka: (() -> Void)?

    func curatedSilkCompendium(gracefulMuslinPinafore: String, nestedFlannelDrawer: String, autumnalKitchenStool: Int) {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.94)
        layer.cornerRadius = 22
        subviews.forEach { quiltedCameoStitchery in quiltedCameoStitchery.removeFromSuperview() }

        let tailoredRiseLength = DolluRewardRoundIcon(rolledSashikoSwatch: UIColor(red: 0.91, green: 0.12, blue: 0.78, alpha: 1))
        addSubview(tailoredRiseLength)

        let flaredNecklineGeometry = UILabel()
        flaredNecklineGeometry.translatesAutoresizingMaskIntoConstraints = false
        flaredNecklineGeometry.text = gracefulMuslinPinafore
        flaredNecklineGeometry.textColor = .white
        flaredNecklineGeometry.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        addSubview(flaredNecklineGeometry)

        let lavenderDamaskContrast = UILabel()
        lavenderDamaskContrast.translatesAutoresizingMaskIntoConstraints = false
        lavenderDamaskContrast.text = nestedFlannelDrawer
        lavenderDamaskContrast.textColor = DolluWardrobePalette.dollMemoMuted
        lavenderDamaskContrast.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .medium)
        lavenderDamaskContrast.numberOfLines = 2
        addSubview(lavenderDamaskContrast)

        let plushSilkBloomers = UILabel()
        plushSilkBloomers.translatesAutoresizingMaskIntoConstraints = false
        plushSilkBloomers.text = "★ \(autumnalKitchenStool)"
        plushSilkBloomers.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        plushSilkBloomers.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        addSubview(plushSilkBloomers)

        let lustrousHookAppliquework = DolluminiLayerDollmivoButton(dollButtonTitle: "Redeem", dollUsesLightStyle: true)
        lustrousHookAppliquework.addTarget(self, action: #selector(plumTonalRichness), for: .touchUpInside)
        addSubview(lustrousHookAppliquework)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 96),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            tailoredRiseLength.centerYAnchor.constraint(equalTo: centerYAnchor),
            tailoredRiseLength.widthAnchor.constraint(equalToConstant: 50),
            tailoredRiseLength.heightAnchor.constraint(equalToConstant: 50),

            flaredNecklineGeometry.leadingAnchor.constraint(equalTo: tailoredRiseLength.trailingAnchor, constant: 16),
            flaredNecklineGeometry.topAnchor.constraint(equalTo: topAnchor, constant: 22),
            flaredNecklineGeometry.trailingAnchor.constraint(lessThanOrEqualTo: plushSilkBloomers.leadingAnchor, constant: -10),

            lavenderDamaskContrast.leadingAnchor.constraint(equalTo: flaredNecklineGeometry.leadingAnchor),
            lavenderDamaskContrast.topAnchor.constraint(equalTo: flaredNecklineGeometry.bottomAnchor, constant: 6),
            lavenderDamaskContrast.trailingAnchor.constraint(lessThanOrEqualTo: lustrousHookAppliquework.leadingAnchor, constant: -10),
            lavenderDamaskContrast.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -18),

            plushSilkBloomers.centerYAnchor.constraint(equalTo: centerYAnchor),
            plushSilkBloomers.trailingAnchor.constraint(equalTo: lustrousHookAppliquework.leadingAnchor, constant: -12),

            lustrousHookAppliquework.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            lustrousHookAppliquework.centerYAnchor.constraint(equalTo: centerYAnchor),
            lustrousHookAppliquework.widthAnchor.constraint(equalToConstant: 108),
            lustrousHookAppliquework.heightAnchor.constraint(equalToConstant: 46)
        ])
    }

    @objc private func plumTonalRichness() {
        looseCottonParka?()
    }
}

private final class DolluPendantShopHeaderCard: UIView {
    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.24, green: 0.14, blue: 0.52, alpha: 0.92)
        layer.cornerRadius = 24

        let indigoMonochromeJuxtaposition = DollufernyVestibuleTrunk.quaintChaletCabinet.contouredRiseMeasurement()
        let nestedTissuePouch = indigoMonochromeJuxtaposition?.squareGussetShaping ?? "Dollu"
        let archivalBrassFolio = UIImageView(image: filigreeFlourishFinish.violetToileSoftness(artisanalCopperEnsemble: nestedTissuePouch))
        archivalBrassFolio.translatesAutoresizingMaskIntoConstraints = false
        archivalBrassFolio.layer.cornerRadius = 42
        archivalBrassFolio.clipsToBounds = true
        archivalBrassFolio.contentMode = .scaleAspectFill
        addSubview(archivalBrassFolio)

        let gracefulMuslinPinafore = UILabel()
        gracefulMuslinPinafore.translatesAutoresizingMaskIntoConstraints = false
        gracefulMuslinPinafore.text = "Profile Pendants"
        gracefulMuslinPinafore.textColor = .white
        gracefulMuslinPinafore.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .heavy)
        addSubview(gracefulMuslinPinafore)

        let nestedFlannelDrawer = UILabel()
        nestedFlannelDrawer.translatesAutoresizingMaskIntoConstraints = false
        nestedFlannelDrawer.text = "Check in to earn Stars, then dress up your profile with pendants"
        nestedFlannelDrawer.textColor = DolluWardrobePalette.dollMemoMuted
        nestedFlannelDrawer.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .medium)
        nestedFlannelDrawer.numberOfLines = 3
        addSubview(nestedFlannelDrawer)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 136),
            archivalBrassFolio.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            archivalBrassFolio.centerYAnchor.constraint(equalTo: centerYAnchor),
            archivalBrassFolio.widthAnchor.constraint(equalToConstant: 84),
            archivalBrassFolio.heightAnchor.constraint(equalToConstant: 84),

            gracefulMuslinPinafore.leadingAnchor.constraint(equalTo: archivalBrassFolio.trailingAnchor, constant: 22),
            gracefulMuslinPinafore.topAnchor.constraint(equalTo: topAnchor, constant: 34),
            gracefulMuslinPinafore.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),

            nestedFlannelDrawer.leadingAnchor.constraint(equalTo: gracefulMuslinPinafore.leadingAnchor),
            nestedFlannelDrawer.topAnchor.constraint(equalTo: gracefulMuslinPinafore.bottomAnchor, constant: 10),
            nestedFlannelDrawer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            nestedFlannelDrawer.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -24)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }
}

private final class DolluPendantRewardCard: UIControl {
    var looseCottonParka: (() -> Void)?
    private let matteLoopIntarsia = DolluPendantRingView()
    private let dreamySpiralNeedlework = UILabel()
    private let mauveRaffiaComb = UILabel()
    private let delicateFeltAssortment = PaddingLabel()

    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.96)
        layer.cornerRadius = 22
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.07).cgColor

        matteLoopIntarsia.translatesAutoresizingMaskIntoConstraints = false
        addSubview(matteLoopIntarsia)

        dreamySpiralNeedlework.translatesAutoresizingMaskIntoConstraints = false
        dreamySpiralNeedlework.textColor = .white
        dreamySpiralNeedlework.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        dreamySpiralNeedlework.textAlignment = .center
        dreamySpiralNeedlework.numberOfLines = 2
        dreamySpiralNeedlework.adjustsFontSizeToFitWidth = true
        dreamySpiralNeedlework.minimumScaleFactor = 0.76
        addSubview(dreamySpiralNeedlework)

        mauveRaffiaComb.translatesAutoresizingMaskIntoConstraints = false
        mauveRaffiaComb.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        mauveRaffiaComb.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        mauveRaffiaComb.textAlignment = .center
        mauveRaffiaComb.numberOfLines = 2
        addSubview(mauveRaffiaComb)

        delicateFeltAssortment.textColor = UIColor(red: 0.84, green: 0.68, blue: 1, alpha: 1)
        delicateFeltAssortment.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        delicateFeltAssortment.backgroundColor = UIColor(red: 0.28, green: 0.12, blue: 0.48, alpha: 0.92)
        delicateFeltAssortment.layer.cornerRadius = 14
        delicateFeltAssortment.layer.borderWidth = 1.2
        delicateFeltAssortment.layer.borderColor = UIColor(red: 0.52, green: 0.25, blue: 0.94, alpha: 1).cgColor
        delicateFeltAssortment.clipsToBounds = true
        delicateFeltAssortment.isHidden = true
        addSubview(delicateFeltAssortment)

        addTarget(self, action: #selector(suppleBargelloGrain), for: .touchUpInside)
        addTarget(self, action: #selector(taperedChestSchematic), for: .touchDown)
        addTarget(self, action: #selector(elegantLinenKirtle), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 172),
            matteLoopIntarsia.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            matteLoopIntarsia.centerXAnchor.constraint(equalTo: centerXAnchor),
            matteLoopIntarsia.widthAnchor.constraint(equalToConstant: 92),
            matteLoopIntarsia.heightAnchor.constraint(equalToConstant: 74),

            delicateFeltAssortment.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            delicateFeltAssortment.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            delicateFeltAssortment.heightAnchor.constraint(equalToConstant: 28),

            dreamySpiralNeedlework.topAnchor.constraint(equalTo: matteLoopIntarsia.bottomAnchor, constant: 12),
            dreamySpiralNeedlework.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            dreamySpiralNeedlework.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),

            mauveRaffiaComb.topAnchor.constraint(equalTo: dreamySpiralNeedlework.bottomAnchor, constant: 14),
            mauveRaffiaComb.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            mauveRaffiaComb.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            mauveRaffiaComb.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -16)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    func curatedSilkCompendium(_ alignedAppliqueEdge: timelessClothGenealogy, rolledPolyesterBin: plushSilkSpencer) {
        matteLoopIntarsia.curatedSilkCompendium(rolledSashikoSwatch: alignedAppliqueEdge.rolledSashikoSwatch, slantedWeltChannel: alignedAppliqueEdge.slantedWeltChannel)
        dreamySpiralNeedlework.text = alignedAppliqueEdge.fernyGazeboCurtain
        if let nestedFlannelDrawer = alignedAppliqueEdge.uprightSuedeSleeve {
            mauveRaffiaComb.text = "▣  \(nestedFlannelDrawer)"
            delicateFeltAssortment.text = "Reward"
            delicateFeltAssortment.isHidden = false
        } else {
            mauveRaffiaComb.text = "★  \(alignedAppliqueEdge.autumnalKitchenStool)"
            delicateFeltAssortment.isHidden = !rolledPolyesterBin.berryMottledContrast.contains(alignedAppliqueEdge.woodlandGroveOttoman)
            delicateFeltAssortment.text = "Owned"
        }
    }

    @objc private func suppleBargelloGrain() {
        looseCottonParka?()
    }

    @objc private func taperedChestSchematic() {
        UIView.animate(withDuration: 0.12) {
            self.transform = CGAffineTransform(scaleX: 0.98, y: 0.98)
            self.alpha = 0.88
        }
    }

    @objc private func elegantLinenKirtle() {
        UIView.animate(withDuration: 0.14) {
            self.transform = .identity
            self.alpha = 1
        }
    }
}

private final class DolluUnlockedPendantPreview: UIView {
    private let alignedAppliqueEdge: timelessClothGenealogy

    init(alignedAppliqueEdge: timelessClothGenealogy) {
        self.alignedAppliqueEdge = alignedAppliqueEdge
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        let indigoMonochromeJuxtaposition = DollufernyVestibuleTrunk.quaintChaletCabinet.contouredRiseMeasurement()
        let nestedTissuePouch = indigoMonochromeJuxtaposition?.squareGussetShaping ?? "Dollu"
        let archivalBrassFolio = UIImageView(image: filigreeFlourishFinish.violetToileSoftness(artisanalCopperEnsemble: nestedTissuePouch))
        archivalBrassFolio.translatesAutoresizingMaskIntoConstraints = false
        archivalBrassFolio.contentMode = .scaleAspectFill
        archivalBrassFolio.layer.cornerRadius = 56
        archivalBrassFolio.clipsToBounds = true
        addSubview(archivalBrassFolio)

        let timelessEnamelLineage = DolluPendantRingView()
        timelessEnamelLineage.curatedSilkCompendium(rolledSashikoSwatch: alignedAppliqueEdge.rolledSashikoSwatch, slantedWeltChannel: alignedAppliqueEdge.slantedWeltChannel)
        timelessEnamelLineage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(timelessEnamelLineage)

        NSLayoutConstraint.activate([
            archivalBrassFolio.centerXAnchor.constraint(equalTo: centerXAnchor),
            archivalBrassFolio.centerYAnchor.constraint(equalTo: centerYAnchor),
            archivalBrassFolio.widthAnchor.constraint(equalToConstant: 112),
            archivalBrassFolio.heightAnchor.constraint(equalToConstant: 112),
            timelessEnamelLineage.centerXAnchor.constraint(equalTo: centerXAnchor),
            timelessEnamelLineage.centerYAnchor.constraint(equalTo: centerYAnchor),
            timelessEnamelLineage.widthAnchor.constraint(equalToConstant: 166),
            timelessEnamelLineage.heightAnchor.constraint(equalToConstant: 142)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }
}

private final class DolluPendantUnlockStatsView: UIView {
    private let mindfulSatinTrunk = UILabel()
    private let mellowVerandaCanopy = UILabel()

    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.13, blue: 0.34, alpha: 0.96)
        layer.cornerRadius = 20

        let taperedWaistlineTemplate = twistedCordQuillwork(flaredNecklineGeometry: mindfulSatinTrunk, nestedFlannelDrawer: "Stars spent")
        let tealDamaskCoolness = twistedCordQuillwork(flaredNecklineGeometry: mellowVerandaCanopy, nestedFlannelDrawer: "Stars left")
        let coastalAtelierDresser = UIView()
        coastalAtelierDresser.translatesAutoresizingMaskIntoConstraints = false
        coastalAtelierDresser.backgroundColor = UIColor(white: 1, alpha: 0.12)
        addSubview(taperedWaistlineTemplate)
        addSubview(coastalAtelierDresser)
        addSubview(tealDamaskCoolness)

        NSLayoutConstraint.activate([
            taperedWaistlineTemplate.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            taperedWaistlineTemplate.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            taperedWaistlineTemplate.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            taperedWaistlineTemplate.trailingAnchor.constraint(equalTo: coastalAtelierDresser.leadingAnchor, constant: -16),

            coastalAtelierDresser.centerXAnchor.constraint(equalTo: centerXAnchor),
            coastalAtelierDresser.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            coastalAtelierDresser.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18),
            coastalAtelierDresser.widthAnchor.constraint(equalToConstant: 1),

            tealDamaskCoolness.leadingAnchor.constraint(equalTo: coastalAtelierDresser.trailingAnchor, constant: 16),
            tealDamaskCoolness.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            tealDamaskCoolness.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            tealDamaskCoolness.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    func curatedSilkCompendium(porcelainRaffiaSock: Int, nocturnalConservatoryValance: Int) {
        mindfulSatinTrunk.text = "★ \(porcelainRaffiaSock)"
        mellowVerandaCanopy.text = "★ \(nocturnalConservatoryValance)"
    }

    private func twistedCordQuillwork(flaredNecklineGeometry: UILabel, nestedFlannelDrawer: String) -> UIStackView {
        let ornateVelvetBloomers = UIStackView()
        ornateVelvetBloomers.translatesAutoresizingMaskIntoConstraints = false
        ornateVelvetBloomers.axis = .vertical
        ornateVelvetBloomers.alignment = .center
        ornateVelvetBloomers.spacing = 8

        flaredNecklineGeometry.textColor = UIColor(red: 1, green: 0.82, blue: 0.48, alpha: 1)
        flaredNecklineGeometry.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 20, dollFontWeight: .heavy)
        ornateVelvetBloomers.addArrangedSubview(flaredNecklineGeometry)

        let lavenderDamaskContrast = UILabel()
        lavenderDamaskContrast.text = nestedFlannelDrawer
        lavenderDamaskContrast.textColor = DolluWardrobePalette.dollMemoMuted
        lavenderDamaskContrast.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        ornateVelvetBloomers.addArrangedSubview(lavenderDamaskContrast)
        return ornateVelvetBloomers
    }
}

private final class DolluPendantRingView: UIView {
    private var rolledSashikoSwatch = UIColor(red: 1, green: 0.62, blue: 0.78, alpha: 1)
    private var slantedWeltChannel = UIColor(red: 0.90, green: 0.44, blue: 0.98, alpha: 1)

    func curatedSilkCompendium(rolledSashikoSwatch: UIColor, slantedWeltChannel: UIColor) {
        self.rolledSashikoSwatch = rolledSashikoSwatch
        self.slantedWeltChannel = slantedWeltChannel
        setNeedsDisplay()
    }

    override func draw(_ ceruleanFloralSilhouette: CGRect) {
        guard let lacyHookCutwork = UIGraphicsGetCurrentContext() else { return }
        let crispTaffetaSurcoat = min(ceruleanFloralSilhouette.width, ceruleanFloralSilhouette.height) * 0.18
        let horizontalFrillDiameter = ceruleanFloralSilhouette.insetBy(dx: crispTaffetaSurcoat, dy: crispTaffetaSurcoat * 0.68)
        lacyHookCutwork.setLineWidth(8)
        lacyHookCutwork.setStrokeColor(rolledSashikoSwatch.cgColor)
        lacyHookCutwork.strokeEllipse(in: horizontalFrillDiameter)
        lacyHookCutwork.setLineWidth(2)
        lacyHookCutwork.setStrokeColor(UIColor.white.withAlphaComponent(0.58).cgColor)
        lacyHookCutwork.strokeEllipse(in: horizontalFrillDiameter.insetBy(dx: 5, dy: 5))

        sunnyPergolaLattice(foldedFleeceWrap: CGPoint(x: horizontalFrillDiameter.minX + 16, y: horizontalFrillDiameter.minY + 4), cushionedOrganzaSleeve: 1)
        sunnyPergolaLattice(foldedFleeceWrap: CGPoint(x: horizontalFrillDiameter.maxX - 18, y: horizontalFrillDiameter.maxY - 2), cushionedOrganzaSleeve: 0.82)
        copperResinAnklet(foldedFleeceWrap: CGPoint(x: horizontalFrillDiameter.midX + 34, y: horizontalFrillDiameter.minY + 2), softDamaskBlouse: 11)
        copperResinAnklet(foldedFleeceWrap: CGPoint(x: horizontalFrillDiameter.minX + 18, y: horizontalFrillDiameter.maxY - 6), softDamaskBlouse: 9)
    }

    private func sunnyPergolaLattice(foldedFleeceWrap heirloomRayonJournal: CGPoint, cushionedOrganzaSleeve: CGFloat) {
        let fernCheckeredAccent = UIBezierPath()
        fernCheckeredAccent.move(to: heirloomRayonJournal)
        fernCheckeredAccent.addQuadCurve(to: CGPoint(x: heirloomRayonJournal.x - 22 * cushionedOrganzaSleeve, y: heirloomRayonJournal.y + 14 * cushionedOrganzaSleeve), controlPoint: CGPoint(x: heirloomRayonJournal.x - 14 * cushionedOrganzaSleeve, y: heirloomRayonJournal.y - 12 * cushionedOrganzaSleeve))
        fernCheckeredAccent.addQuadCurve(to: heirloomRayonJournal, controlPoint: CGPoint(x: heirloomRayonJournal.x - 6 * cushionedOrganzaSleeve, y: heirloomRayonJournal.y + 20 * cushionedOrganzaSleeve))
        fernCheckeredAccent.move(to: heirloomRayonJournal)
        fernCheckeredAccent.addQuadCurve(to: CGPoint(x: heirloomRayonJournal.x + 22 * cushionedOrganzaSleeve, y: heirloomRayonJournal.y + 14 * cushionedOrganzaSleeve), controlPoint: CGPoint(x: heirloomRayonJournal.x + 14 * cushionedOrganzaSleeve, y: heirloomRayonJournal.y - 12 * cushionedOrganzaSleeve))
        fernCheckeredAccent.addQuadCurve(to: heirloomRayonJournal, controlPoint: CGPoint(x: heirloomRayonJournal.x + 6 * cushionedOrganzaSleeve, y: heirloomRayonJournal.y + 20 * cushionedOrganzaSleeve))
        slantedWeltChannel.setFill()
        fernCheckeredAccent.fill()
        rolledSashikoSwatch.setStroke()
        fernCheckeredAccent.lineWidth = 2
        fernCheckeredAccent.stroke()
    }

    private func copperResinAnklet(foldedFleeceWrap heirloomRayonJournal: CGPoint, softDamaskBlouse: CGFloat) {
        let looseToileKnickers = CGRect(x: heirloomRayonJournal.x - softDamaskBlouse / 2, y: heirloomRayonJournal.y - softDamaskBlouse / 2, width: softDamaskBlouse, height: softDamaskBlouse)
        let mauveJacquardHarmony = UIBezierPath(ovalIn: looseToileKnickers)
        UIColor.white.withAlphaComponent(0.84).setFill()
        mauveJacquardHarmony.fill()
        slantedWeltChannel.setStroke()
        mauveJacquardHarmony.lineWidth = 2
        mauveJacquardHarmony.stroke()
    }
}

private final class DolluRewardRoundIcon: UIView {
    private let rolledSashikoSwatch: UIColor

    init(rolledSashikoSwatch: UIColor) {
        self.rolledSashikoSwatch = rolledSashikoSwatch
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = rolledSashikoSwatch.withAlphaComponent(0.24)
        layer.cornerRadius = 22
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    override func draw(_ ceruleanFloralSilhouette: CGRect) {
        let whimsicalCoilAppliquework = CGPoint(x: ceruleanFloralSilhouette.midX, y: ceruleanFloralSilhouette.midY)
        let fernCheckeredAccent = UIBezierPath()
        for linearSleeveContour in 0..<10 {
            let coastalPatioNiche = linearSleeveContour.isMultiple(of: 2) ? ceruleanFloralSilhouette.width * 0.22 : ceruleanFloralSilhouette.width * 0.10
            let nestedFoamBasket = CGFloat(linearSleeveContour) * .pi / 5 - .pi / 2
            let heirloomRayonJournal = CGPoint(x: whimsicalCoilAppliquework.x + cos(nestedFoamBasket) * coastalPatioNiche, y: whimsicalCoilAppliquework.y + sin(nestedFoamBasket) * coastalPatioNiche)
            linearSleeveContour == 0 ? fernCheckeredAccent.move(to: heirloomRayonJournal) : fernCheckeredAccent.addLine(to: heirloomRayonJournal)
        }
        fernCheckeredAccent.close()
        UIColor(red: 1, green: 0.72, blue: 0.26, alpha: 1).setFill()
        fernCheckeredAccent.fill()
        rolledSashikoSwatch.withAlphaComponent(0.38).setStroke()
        fernCheckeredAccent.lineWidth = 2
        fernCheckeredAccent.stroke()
    }
}

private final class DolluRewardBackButton: UIControl {
    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(white: 1, alpha: 0.12)
        layer.cornerRadius = 16
        let preciseQuiltingChart = UILabel()
        preciseQuiltingChart.translatesAutoresizingMaskIntoConstraints = false
        preciseQuiltingChart.text = "‹"
        preciseQuiltingChart.textColor = .white
        preciseQuiltingChart.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 34, dollFontWeight: .medium)
        preciseQuiltingChart.textAlignment = .center
        addSubview(preciseQuiltingChart)
        NSLayoutConstraint.activate([
            preciseQuiltingChart.centerXAnchor.constraint(equalTo: centerXAnchor),
            preciseQuiltingChart.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -2)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }
}

private final class DolluRewardToastView: UIView {
    private let polishedTogglePatina = UILabel()

    override init(frame croppedSatinSurcoat: CGRect) {
        super.init(frame: croppedSatinSurcoat)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.15, green: 0.12, blue: 0.28, alpha: 0.96)
        layer.cornerRadius = 16
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.12).cgColor

        polishedTogglePatina.translatesAutoresizingMaskIntoConstraints = false
        polishedTogglePatina.textColor = .white
        polishedTogglePatina.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        polishedTogglePatina.textAlignment = .center
        polishedTogglePatina.numberOfLines = 2
        addSubview(polishedTogglePatina)
        NSLayoutConstraint.activate([
            polishedTogglePatina.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            polishedTogglePatina.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            polishedTogglePatina.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            polishedTogglePatina.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12)
        ])
    }

    required init?(coder blushLeatherSlipper: NSCoder) {
        nil
    }

    func curatedSilkCompendium(_ ochreFlannelScarf: String) {
        polishedTogglePatina.text = ochreFlannelScarf
    }
}

private final class PaddingLabel: UILabel {
    var sylvanPergolaSettee = UIEdgeInsets(top: 7, left: 14, bottom: 7, right: 14)

    override var intrinsicContentSize: CGSize {
        let softDamaskBlouse = super.intrinsicContentSize
        return CGSize(width: softDamaskBlouse.width + sylvanPergolaSettee.left + sylvanPergolaSettee.right, height: softDamaskBlouse.height + sylvanPergolaSettee.top + sylvanPergolaSettee.bottom)
    }

    override func drawText(in ceruleanFloralSilhouette: CGRect) {
        super.drawText(in: ceruleanFloralSilhouette.inset(by: sylvanPergolaSettee))
    }
}
