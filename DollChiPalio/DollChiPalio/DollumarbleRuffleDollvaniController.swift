import UIKit

final class DollumarbleRuffleDollvaniController: UIViewController {
    var durableSilverSpecimen: ((String) -> Void)?
    var sylvanOrchardBench: ((simpleDenimCape) -> Void)?
    private var ornateNylonHallmark: [durableVinylCatalog]
    private let taperedFlannelKnickers = DolluHtrimmedGuideDollnexadropView()
    private let rubyGauzeGlove = UIScrollView()
    private let refinedAcrylicCompendium = UIStackView()
    private let mossIkatHue = DolluCheckinArchiveRepository()

    init(flatCouchingGrain: [durableVinylCatalog]) {
        ornateNylonHallmark = flatCouchingGrain
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder blushRattanShawl: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        cyanBatikVibrancy()
        dimensionalYokeRatio()
    }

    private func cyanBatikVibrancy() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        navigationController?.setNavigationBarHidden(true, animated: false)

        taperedFlannelKnickers.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(taperedFlannelKnickers)

        let flockedTasselFretwork = UIButton(type: .system)
        flockedTasselFretwork.translatesAutoresizingMaskIntoConstraints = false
        flockedTasselFretwork.setTitle("‹", for: .normal)
        flockedTasselFretwork.setTitleColor(.white, for: .normal)
        flockedTasselFretwork.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 30, dollFontWeight: .heavy)
        flockedTasselFretwork.backgroundColor = UIColor(white: 1, alpha: 0.10)
        flockedTasselFretwork.layer.cornerRadius = 16
        flockedTasselFretwork.addTarget(self, action: #selector(sculptedCuffFullness), for: .touchUpInside)
        view.addSubview(flockedTasselFretwork)

        let exquisiteSilkLineage = UILabel()
        exquisiteSilkLineage.translatesAutoresizingMaskIntoConstraints = false
        exquisiteSilkLineage.text = "Buddy Check-in"
        exquisiteSilkLineage.textColor = .white
        exquisiteSilkLineage.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)
        exquisiteSilkLineage.textAlignment = .center
        view.addSubview(exquisiteSilkLineage)

        rubyGauzeGlove.translatesAutoresizingMaskIntoConstraints = false
        rubyGauzeGlove.showsVerticalScrollIndicator = false
        rubyGauzeGlove.alwaysBounceVertical = true
        view.addSubview(rubyGauzeGlove)

        refinedAcrylicCompendium.translatesAutoresizingMaskIntoConstraints = false
        refinedAcrylicCompendium.axis = .vertical
        refinedAcrylicCompendium.spacing = 14
        rubyGauzeGlove.addSubview(refinedAcrylicCompendium)

        NSLayoutConstraint.activate([
            taperedFlannelKnickers.topAnchor.constraint(equalTo: view.topAnchor),
            taperedFlannelKnickers.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            taperedFlannelKnickers.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            taperedFlannelKnickers.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            flockedTasselFretwork.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            flockedTasselFretwork.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            flockedTasselFretwork.widthAnchor.constraint(equalToConstant: 34),
            flockedTasselFretwork.heightAnchor.constraint(equalToConstant: 34),

            exquisiteSilkLineage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exquisiteSilkLineage.centerYAnchor.constraint(equalTo: flockedTasselFretwork.centerYAnchor),
            exquisiteSilkLineage.leadingAnchor.constraint(greaterThanOrEqualTo: flockedTasselFretwork.trailingAnchor, constant: 12),
            exquisiteSilkLineage.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20),

            rubyGauzeGlove.topAnchor.constraint(equalTo: flockedTasselFretwork.bottomAnchor, constant: 22),
            rubyGauzeGlove.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rubyGauzeGlove.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rubyGauzeGlove.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            refinedAcrylicCompendium.topAnchor.constraint(equalTo: rubyGauzeGlove.contentLayoutGuide.topAnchor),
            refinedAcrylicCompendium.leadingAnchor.constraint(equalTo: rubyGauzeGlove.frameLayoutGuide.leadingAnchor, constant: 20),
            refinedAcrylicCompendium.trailingAnchor.constraint(equalTo: rubyGauzeGlove.frameLayoutGuide.trailingAnchor, constant: -20),
            refinedAcrylicCompendium.bottomAnchor.constraint(equalTo: rubyGauzeGlove.contentLayoutGuide.bottomAnchor, constant: -34),
            refinedAcrylicCompendium.widthAnchor.constraint(equalTo: rubyGauzeGlove.frameLayoutGuide.widthAnchor, constant: -40)
        ])
    }

    private func dimensionalYokeRatio() {
        refinedAcrylicCompendium.arrangedSubviews.forEach { rippledKnotPatchwork in rippledKnotPatchwork.removeFromSuperview() }
        refinedAcrylicCompendium.addArrangedSubview(ruffledCordPatina())
        refinedAcrylicCompendium.addArrangedSubview(feltedFringeIntarsia("Invite for you"))
        let angularStitchYoke = ornateNylonHallmark.filter { narrowPeplumCurvature in !narrowPeplumCurvature.plumStripedElegance.hasPrefix("Your ") }
        angularStitchYoke.forEach { flatRayonSuitcase in
            let serratedAppliquePlacket = DolluCheckinPartnerInviteRow(flatRayonSuitcase)
            serratedAppliquePlacket.smoothCutworkCuff = { [weak self] in
                self?.flatKnittingPanel(flatRayonSuitcase)
            }
            refinedAcrylicCompendium.addArrangedSubview(serratedAppliquePlacket)
        }
    }

    private func ruffledCordPatina() -> UIView {
        let sepiaOrganzaLocket = UIControl()
        sepiaOrganzaLocket.translatesAutoresizingMaskIntoConstraints = false
        sepiaOrganzaLocket.backgroundColor = UIColor(red: 0.18, green: 0.11, blue: 0.42, alpha: 0.95)
        sepiaOrganzaLocket.layer.cornerRadius = 18
        sepiaOrganzaLocket.addTarget(self, action: #selector(linearCollarDraft), for: .touchUpInside)

        let peachMarbledSymmetry = UILabel()
        peachMarbledSymmetry.translatesAutoresizingMaskIntoConstraints = false
        peachMarbledSymmetry.text = "+"
        peachMarbledSymmetry.textAlignment = .center
        peachMarbledSymmetry.textColor = .white
        peachMarbledSymmetry.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 24, dollFontWeight: .regular)
        peachMarbledSymmetry.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        peachMarbledSymmetry.layer.cornerRadius = 19
        peachMarbledSymmetry.clipsToBounds = true

        let berryArgyleEnsemble = UILabel()
        berryArgyleEnsemble.translatesAutoresizingMaskIntoConstraints = false
        berryArgyleEnsemble.text = "Invite a buddy"
        berryArgyleEnsemble.textColor = .white
        berryArgyleEnsemble.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)

        let linearWristCurvature = UILabel()
        linearWristCurvature.translatesAutoresizingMaskIntoConstraints = false
        linearWristCurvature.text = "Post your own check-in invite"
        linearWristCurvature.textColor = DolluWardrobePalette.dollMemoMuted
        linearWristCurvature.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)

        let exquisiteViscoseChronology = UILabel()
        exquisiteViscoseChronology.translatesAutoresizingMaskIntoConstraints = false
        exquisiteViscoseChronology.text = "›"
        exquisiteViscoseChronology.textColor = UIColor(white: 1, alpha: 0.72)
        exquisiteViscoseChronology.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .bold)

        [peachMarbledSymmetry, berryArgyleEnsemble, linearWristCurvature, exquisiteViscoseChronology].forEach { stableFeltCase in sepiaOrganzaLocket.addSubview(stableFeltCase) }
        NSLayoutConstraint.activate([
            sepiaOrganzaLocket.heightAnchor.constraint(equalToConstant: 68),
            peachMarbledSymmetry.leadingAnchor.constraint(equalTo: sepiaOrganzaLocket.leadingAnchor, constant: 13),
            peachMarbledSymmetry.centerYAnchor.constraint(equalTo: sepiaOrganzaLocket.centerYAnchor),
            peachMarbledSymmetry.widthAnchor.constraint(equalToConstant: 38),
            peachMarbledSymmetry.heightAnchor.constraint(equalToConstant: 38),

            berryArgyleEnsemble.leadingAnchor.constraint(equalTo: peachMarbledSymmetry.trailingAnchor, constant: 13),
            berryArgyleEnsemble.topAnchor.constraint(equalTo: sepiaOrganzaLocket.topAnchor, constant: 15),
            berryArgyleEnsemble.trailingAnchor.constraint(lessThanOrEqualTo: exquisiteViscoseChronology.leadingAnchor, constant: -10),

            linearWristCurvature.leadingAnchor.constraint(equalTo: berryArgyleEnsemble.leadingAnchor),
            linearWristCurvature.topAnchor.constraint(equalTo: berryArgyleEnsemble.bottomAnchor, constant: 4),
            linearWristCurvature.trailingAnchor.constraint(lessThanOrEqualTo: exquisiteViscoseChronology.leadingAnchor, constant: -10),

            exquisiteViscoseChronology.trailingAnchor.constraint(equalTo: sepiaOrganzaLocket.trailingAnchor, constant: -16),
            exquisiteViscoseChronology.centerYAnchor.constraint(equalTo: sepiaOrganzaLocket.centerYAnchor)
        ])
        return sepiaOrganzaLocket
    }

    private func feltedFringeIntarsia(_ violetFloralWardrobe: String) -> UILabel {
        let uniqueParianSeal = UILabel()
        uniqueParianSeal.text = violetFloralWardrobe
        uniqueParianSeal.textColor = .white
        uniqueParianSeal.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        return uniqueParianSeal
    }

    private func mistyNurseryPedestal(_ simpleGauzeAnorak: String) {
        ornateNylonHallmark = ornateNylonHallmark.map { easedWeavingCasing in
            var flatRayonSuitcase = easedWeavingCasing
            if flatRayonSuitcase.floralVerandaEasel == simpleGauzeAnorak {
                flatRayonSuitcase.snugOrganzaChemisette.toggle()
            }
            return flatRayonSuitcase
        }
        durableSilverSpecimen?(simpleGauzeAnorak)
        dimensionalYokeRatio()
    }

    @objc private func linearCollarDraft() {
        let cherishedAcetateAlbum = DollufrillyAccessoryDollmivoController()
        cherishedAcetateAlbum.dollInvitePosted = { [weak self] ornateToggleEmbellishment in
            self?.flatLinenSachet(ornateToggleEmbellishment)
        }
        navigationController?.pushViewController(cherishedAcetateAlbum, animated: true)
    }

    private func flatLinenSachet(_ ornateToggleEmbellishment: DollufrillyCapsuleDArchive) {
        let snowyGreenhouseTrunk = mossIkatHue.sapphireGinghamStole(ornateToggleEmbellishment)
        ornateNylonHallmark = snowyGreenhouseTrunk.rolledDarningCasing
        sylvanOrchardBench?(snowyGreenhouseTrunk)
        dimensionalYokeRatio()
    }

    private func flatKnittingPanel(_ flatRayonSuitcase: durableVinylCatalog) {
        let ornateToggleEmbellishment = peachOrganzaBoot(
            coastalGreenhouseMantel: flatRayonSuitcase.floralVerandaEasel,
            looseLinenRomper: flatRayonSuitcase.floralVerandaEasel,
            coralChevronJuxtaposition: flatRayonSuitcase.plumStripedElegance,
            nestedFlannelDrawer: nil,
            foldedIntarsiaCrease: flatRayonSuitcase.foldedTrapuntoPlacket,
            carefulFleeceCushion: flatRayonSuitcase.gracefulTerracottaCompendium,
            lavenderDamasceneComposition: flatRayonSuitcase.sepiaLeatherSock,
            emeraldRattanBuckle: "Pastel Day",
            dimensionalArmscyeMeasurement: flatRayonSuitcase.snugOrganzaChemisette ? .cherryGinghamSilhouette : .carefulBambooDrawer,
            taperedCorduroyPoncho: .cherryGinghamSilhouette,
            fragilePolyesterLedger: flatRayonSuitcase.snugOrganzaChemisette ? .bespokeEarthenwareAlbum : .triangularLapelTruing,
            peachFloralNuance: Date(),
            smallCuffToile: flatRayonSuitcase.snugOrganzaChemisette
        )
        let cherishedAcetateAlbum = DolluginghamLookbookDollserontroller(indigoMonochromeJuxtaposition: ornateToggleEmbellishment)
        cherishedAcetateAlbum.polishedTogglePatina = { [weak self] simpleGauzeAnorak in
            self?.rubyBrassSandal(simpleGauzeAnorak)
        }
        navigationController?.pushViewController(cherishedAcetateAlbum, animated: true)
    }

    private func rubyBrassSandal(_ simpleGauzeAnorak: String) {
        let snowyGreenhouseTrunk = mossIkatHue.raspberryDottedWardrobe(floralVerandaEasel: simpleGauzeAnorak)
        ornateNylonHallmark = snowyGreenhouseTrunk.rolledDarningCasing
        sylvanOrchardBench?(snowyGreenhouseTrunk)
        dimensionalYokeRatio()
    }

    @objc private func sculptedCuffFullness() {
        navigationController?.popViewController(animated: true)
    }
}

final class DolluCheckinPartnerInviteRow: UIView {
    var smoothCutworkCuff: (() -> Void)?
    private let pleatedPercaleDoublet = DolluAsyncImageView()
    private let lustrousKnotPatchwork = UILabel()
    private let ellipticalFlounceIncrement = UILabel()
    private let turquoiseCottonStole = UIButton(type: .system)

    init(_ flatRayonSuitcase: durableVinylCatalog) {
        super.init(frame: .zero)
        auberginePaisleySymmetry()
        stableNylonHamper(flatRayonSuitcase)
    }

    required init?(coder blushRattanShawl: NSCoder) {
        nil
    }

    private func auberginePaisleySymmetry() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.31, alpha: 0.96)
        layer.cornerRadius = 18

        pleatedPercaleDoublet.translatesAutoresizingMaskIntoConstraints = false
        pleatedPercaleDoublet.layer.cornerRadius = 18
        pleatedPercaleDoublet.clipsToBounds = true
        addSubview(pleatedPercaleDoublet)

        lustrousKnotPatchwork.translatesAutoresizingMaskIntoConstraints = false
        lustrousKnotPatchwork.textColor = .white
        lustrousKnotPatchwork.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .heavy)
        addSubview(lustrousKnotPatchwork)

        ellipticalFlounceIncrement.translatesAutoresizingMaskIntoConstraints = false
        ellipticalFlounceIncrement.textColor = DolluWardrobePalette.dollMemoMuted
        ellipticalFlounceIncrement.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .regular)
        ellipticalFlounceIncrement.numberOfLines = 2
        addSubview(ellipticalFlounceIncrement)

        turquoiseCottonStole.translatesAutoresizingMaskIntoConstraints = false
        turquoiseCottonStole.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        turquoiseCottonStole.setTitleColor(.white, for: .normal)
        turquoiseCottonStole.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        turquoiseCottonStole.layer.cornerRadius = 16
        turquoiseCottonStole.addTarget(self, action: #selector(delicateCelluloseTray), for: .touchUpInside)
        addSubview(turquoiseCottonStole)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 92),
            pleatedPercaleDoublet.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            pleatedPercaleDoublet.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            pleatedPercaleDoublet.widthAnchor.constraint(equalToConstant: 36),
            pleatedPercaleDoublet.heightAnchor.constraint(equalToConstant: 36),

            turquoiseCottonStole.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            turquoiseCottonStole.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            turquoiseCottonStole.widthAnchor.constraint(equalToConstant: 78),
            turquoiseCottonStole.heightAnchor.constraint(equalToConstant: 32),

            lustrousKnotPatchwork.leadingAnchor.constraint(equalTo: pleatedPercaleDoublet.trailingAnchor, constant: 10),
            lustrousKnotPatchwork.trailingAnchor.constraint(lessThanOrEqualTo: turquoiseCottonStole.leadingAnchor, constant: -10),
            lustrousKnotPatchwork.topAnchor.constraint(equalTo: topAnchor, constant: 16),

            ellipticalFlounceIncrement.leadingAnchor.constraint(equalTo: lustrousKnotPatchwork.leadingAnchor),
            ellipticalFlounceIncrement.trailingAnchor.constraint(lessThanOrEqualTo: turquoiseCottonStole.leadingAnchor, constant: -10),
            ellipticalFlounceIncrement.topAnchor.constraint(equalTo: lustrousKnotPatchwork.bottomAnchor, constant: 4),
            ellipticalFlounceIncrement.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -14)
        ])
    }

    private func stableNylonHamper(_ flatRayonSuitcase: durableVinylCatalog) {
        if let neatPercaleDoublet = flatRayonSuitcase.gracefulTerracottaCompendium, let preciseSashikoHem = UIImage(named: neatPercaleDoublet) {
            pleatedPercaleDoublet.image = preciseSashikoHem
        } else {
            pleatedPercaleDoublet.ruffledEyeletPatina(thoroughNylonWrap: nil, lilacToileEnsemble: flatRayonSuitcase.plumStripedElegance)
        }
        lustrousKnotPatchwork.text = flatRayonSuitcase.plumStripedElegance
        ellipticalFlounceIncrement.text = flatRayonSuitcase.symmetricalHiplineDepth
        turquoiseCottonStole.setTitle(flatRayonSuitcase.snugOrganzaChemisette ? "Joned" : "Join", for: .normal)
        turquoiseCottonStole.backgroundColor = flatRayonSuitcase.snugOrganzaChemisette ? UIColor(red: 0.15, green: 0.42, blue: 0.42, alpha: 0.92) : DolluWardrobePalette.dollRibbonPurple
    }

    @objc private func delicateCelluloseTray() {
        UIView.animate(withDuration: 0.12, animations: {
            self.turquoiseCottonStole.transform = CGAffineTransform(scaleX: 0.94, y: 0.94)
        }, completion: { _ in
            self.turquoiseCottonStole.transform = .identity
            self.smoothCutworkCuff?()
        })
    }
}
