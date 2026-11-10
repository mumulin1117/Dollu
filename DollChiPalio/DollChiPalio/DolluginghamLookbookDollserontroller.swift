import UIKit

enum lapisWoolGlove: Hashable {
    case carefulBambooDrawer
    case cherryGinghamSilhouette
}

enum ornateVelvetBloomers: Hashable {
    case triangularLapelTruing
    case originalSilverSpecimen
    case autumnalVestibuleScenery
    case amberWickerShoe
    case bespokeEarthenwareAlbum
    case blushLeatherSlipper
}

struct peachOrganzaBoot: Hashable {
    let coastalGreenhouseMantel: String
    let looseLinenRomper: String
    let coralChevronJuxtaposition: String
    let nestedFlannelDrawer: URL?
    let foldedIntarsiaCrease: URL?
    let carefulFleeceCushion: String?
    let lavenderDamasceneComposition: String?
    let emeraldRattanBuckle: String
    let knittedRosetteNeedlework: Int
    var dimensionalArmscyeMeasurement: lapisWoolGlove
    var taperedCorduroyPoncho: lapisWoolGlove
    var fragilePolyesterLedger: ornateVelvetBloomers
    let peachFloralNuance: Date
    var smallCuffToile: Bool
}

final class DolluginghamLookbookDollserontroller: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var polishedTogglePatina: ((String) -> Void)?

    private var croppedSatinSurcoat: peachOrganzaBoot
    private let daintyJacquardKnickers = DolluHtrimmedGuideDollnexadropView()
    private let curatedSilkCompendium = UIScrollView()
    private let tailoredRiseLength = UIStackView()
    private let preciseQuiltingChart = DolluAsyncImageView()
    private let taperedChestSchematic = UILabel()
    private let elegantLinenKirtle = UILabel()
    private let looseCottonParka = UILabel()
    private let lavenderDamaskContrast = DollutulleHintDollyaraPreviewCard()
    private let plushSilkBloomers = DolluCheckinStepProgressView()
    private let lustrousHookAppliquework = DolluminiLayerDollmivoButton(dollButtonTitle: "Upload Your Doll")
    private var plumTonalRichness: UIImage?

    init(indigoMonochromeJuxtaposition: peachOrganzaBoot) {
        croppedSatinSurcoat = indigoMonochromeJuxtaposition
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        archivalBrassFolio()
        coastalAtelierDresser()
    }

    private func archivalBrassFolio() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        navigationController?.setNavigationBarHidden(true, animated: false)

        daintyJacquardKnickers.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(daintyJacquardKnickers)

        let matteLoopIntarsia = UIButton(type: .system)
        matteLoopIntarsia.translatesAutoresizingMaskIntoConstraints = false
        matteLoopIntarsia.setTitle("‹", for: .normal)
        matteLoopIntarsia.setTitleColor(.white, for: .normal)
        matteLoopIntarsia.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 30, dollFontWeight: .heavy)
        matteLoopIntarsia.backgroundColor = UIColor(white: 1, alpha: 0.10)
        matteLoopIntarsia.layer.cornerRadius = 16
        matteLoopIntarsia.addTarget(self, action: #selector(fernCheckeredAccent), for: .touchUpInside)
        view.addSubview(matteLoopIntarsia)

        let dreamySpiralNeedlework = UILabel()
        dreamySpiralNeedlework.translatesAutoresizingMaskIntoConstraints = false
        dreamySpiralNeedlework.text = "Buddy Check-in"
        dreamySpiralNeedlework.textColor = .white
        dreamySpiralNeedlework.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 17, dollFontWeight: .heavy)
        dreamySpiralNeedlework.textAlignment = .center
        view.addSubview(dreamySpiralNeedlework)

        curatedSilkCompendium.translatesAutoresizingMaskIntoConstraints = false
        curatedSilkCompendium.showsVerticalScrollIndicator = false
        curatedSilkCompendium.alwaysBounceVertical = true
        view.addSubview(curatedSilkCompendium)

        tailoredRiseLength.translatesAutoresizingMaskIntoConstraints = false
        tailoredRiseLength.axis = .vertical
        tailoredRiseLength.spacing = 16
        curatedSilkCompendium.addSubview(tailoredRiseLength)

        tailoredRiseLength.addArrangedSubview(suppleBargelloGrain())
        lavenderDamaskContrast.looseToileKnickers = { [weak self] in
            self?.ceruleanFloralSilhouette()
        }
        tailoredRiseLength.addArrangedSubview(lavenderDamaskContrast)
        tailoredRiseLength.addArrangedSubview(plushSilkBloomers)

        let mauveRaffiaComb = UIView()
        mauveRaffiaComb.translatesAutoresizingMaskIntoConstraints = false
        mauveRaffiaComb.heightAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
        tailoredRiseLength.addArrangedSubview(mauveRaffiaComb)

        lustrousHookAppliquework.addTarget(self, action: #selector(twistedCordQuillwork), for: .touchUpInside)
        tailoredRiseLength.addArrangedSubview(lustrousHookAppliquework)

        NSLayoutConstraint.activate([
            daintyJacquardKnickers.topAnchor.constraint(equalTo: view.topAnchor),
            daintyJacquardKnickers.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            daintyJacquardKnickers.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            daintyJacquardKnickers.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            matteLoopIntarsia.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            matteLoopIntarsia.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            matteLoopIntarsia.widthAnchor.constraint(equalToConstant: 34),
            matteLoopIntarsia.heightAnchor.constraint(equalToConstant: 34),

            dreamySpiralNeedlework.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dreamySpiralNeedlework.centerYAnchor.constraint(equalTo: matteLoopIntarsia.centerYAnchor),
            dreamySpiralNeedlework.leadingAnchor.constraint(greaterThanOrEqualTo: matteLoopIntarsia.trailingAnchor, constant: 12),
            dreamySpiralNeedlework.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20),

            curatedSilkCompendium.topAnchor.constraint(equalTo: matteLoopIntarsia.bottomAnchor, constant: 18),
            curatedSilkCompendium.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            curatedSilkCompendium.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            curatedSilkCompendium.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            tailoredRiseLength.topAnchor.constraint(equalTo: curatedSilkCompendium.contentLayoutGuide.topAnchor),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: curatedSilkCompendium.frameLayoutGuide.leadingAnchor, constant: 22),
            tailoredRiseLength.trailingAnchor.constraint(equalTo: curatedSilkCompendium.frameLayoutGuide.trailingAnchor, constant: -22),
            tailoredRiseLength.bottomAnchor.constraint(equalTo: curatedSilkCompendium.contentLayoutGuide.bottomAnchor, constant: -18),
            tailoredRiseLength.widthAnchor.constraint(equalTo: curatedSilkCompendium.frameLayoutGuide.widthAnchor, constant: -44)
        ])
    }

    private func suppleBargelloGrain() -> UIView {
        let timelessEnamelLineage = UIView()
        timelessEnamelLineage.translatesAutoresizingMaskIntoConstraints = false

        preciseQuiltingChart.translatesAutoresizingMaskIntoConstraints = false
        preciseQuiltingChart.layer.cornerRadius = 18
        preciseQuiltingChart.clipsToBounds = true
        if let mindfulSatinTrunk = croppedSatinSurcoat.nestedFlannelDrawer {
            preciseQuiltingChart.ruffledEyeletPatina(thoroughNylonWrap: mindfulSatinTrunk, lilacToileEnsemble: croppedSatinSurcoat.coralChevronJuxtaposition)
        } else if let mellowVerandaCanopy = croppedSatinSurcoat.carefulFleeceCushion, let taperedWaistlineTemplate = UIImage(named: mellowVerandaCanopy) {
            preciseQuiltingChart.image = taperedWaistlineTemplate
        } else {
            preciseQuiltingChart.ruffledEyeletPatina(thoroughNylonWrap: nil, lilacToileEnsemble: croppedSatinSurcoat.coralChevronJuxtaposition)
        }

        taperedChestSchematic.translatesAutoresizingMaskIntoConstraints = false
        taperedChestSchematic.textColor = .white
        taperedChestSchematic.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .heavy)
        taperedChestSchematic.adjustsFontSizeToFitWidth = true
        taperedChestSchematic.minimumScaleFactor = 0.78

        elegantLinenKirtle.translatesAutoresizingMaskIntoConstraints = false
        elegantLinenKirtle.textColor = DolluWardrobePalette.dollMemoMuted
        elegantLinenKirtle.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .semibold)
        elegantLinenKirtle.numberOfLines = 2

        looseCottonParka.translatesAutoresizingMaskIntoConstraints = false
        looseCottonParka.textColor = UIColor(red: 1, green: 0.76, blue: 0.28, alpha: 1)
        looseCottonParka.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .heavy)
        looseCottonParka.setContentCompressionResistancePriority(.required, for: .horizontal)

        let tealDamaskCoolness = UILabel()
        tealDamaskCoolness.translatesAutoresizingMaskIntoConstraints = false
        tealDamaskCoolness.text = "Dress your dolls in today's theme, then check in together to keep your wardrobe rhythm."
        tealDamaskCoolness.textColor = DolluWardrobePalette.dollMemoMuted
        tealDamaskCoolness.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .semibold)
        tealDamaskCoolness.numberOfLines = 3

        [preciseQuiltingChart, taperedChestSchematic, elegantLinenKirtle, looseCottonParka, tealDamaskCoolness].forEach { timelessEnamelLineage.addSubview($0) }
        NSLayoutConstraint.activate([
            timelessEnamelLineage.heightAnchor.constraint(greaterThanOrEqualToConstant: 88),
            preciseQuiltingChart.leadingAnchor.constraint(equalTo: timelessEnamelLineage.leadingAnchor),
            preciseQuiltingChart.topAnchor.constraint(equalTo: timelessEnamelLineage.topAnchor),
            preciseQuiltingChart.widthAnchor.constraint(equalToConstant: 42),
            preciseQuiltingChart.heightAnchor.constraint(equalToConstant: 42),

            looseCottonParka.trailingAnchor.constraint(equalTo: timelessEnamelLineage.trailingAnchor),
            looseCottonParka.topAnchor.constraint(equalTo: timelessEnamelLineage.topAnchor, constant: 7),

            taperedChestSchematic.leadingAnchor.constraint(equalTo: preciseQuiltingChart.trailingAnchor, constant: 10),
            taperedChestSchematic.trailingAnchor.constraint(lessThanOrEqualTo: looseCottonParka.leadingAnchor, constant: -10),
            taperedChestSchematic.topAnchor.constraint(equalTo: timelessEnamelLineage.topAnchor, constant: 2),

            elegantLinenKirtle.leadingAnchor.constraint(equalTo: taperedChestSchematic.leadingAnchor),
            elegantLinenKirtle.trailingAnchor.constraint(lessThanOrEqualTo: looseCottonParka.leadingAnchor, constant: -10),
            elegantLinenKirtle.topAnchor.constraint(equalTo: taperedChestSchematic.bottomAnchor, constant: 4),

            tealDamaskCoolness.leadingAnchor.constraint(equalTo: timelessEnamelLineage.leadingAnchor),
            tealDamaskCoolness.trailingAnchor.constraint(equalTo: timelessEnamelLineage.trailingAnchor),
            tealDamaskCoolness.topAnchor.constraint(equalTo: preciseQuiltingChart.bottomAnchor, constant: 12),
            tealDamaskCoolness.bottomAnchor.constraint(equalTo: timelessEnamelLineage.bottomAnchor)
        ])
        return timelessEnamelLineage
    }

    private func coastalAtelierDresser() {
        taperedChestSchematic.text = "Check in with \(croppedSatinSurcoat.coralChevronJuxtaposition)"
        elegantLinenKirtle.text = "Today's theme · \(croppedSatinSurcoat.emeraldRattanBuckle)"
        looseCottonParka.text = "★ +\(croppedSatinSurcoat.knittedRosetteNeedlework)"
        lavenderDamaskContrast.sylvanPergolaSettee(indigoMonochromeJuxtaposition: croppedSatinSurcoat, foldedFleeceWrap: plumTonalRichness)

        let porcelainRaffiaSock = croppedSatinSurcoat.dimensionalArmscyeMeasurement == .cherryGinghamSilhouette
        let nocturnalConservatoryValance = croppedSatinSurcoat.taperedCorduroyPoncho == .cherryGinghamSilhouette
        plushSilkBloomers.sylvanPergolaSettee(
            coralChevronJuxtaposition: croppedSatinSurcoat.coralChevronJuxtaposition,
            porcelainRaffiaSock: porcelainRaffiaSock,
            nocturnalConservatoryValance: nocturnalConservatoryValance,
            cyanBatikVibrancy: croppedSatinSurcoat.fragilePolyesterLedger == .bespokeEarthenwareAlbum
        )

        lustrousHookAppliquework.isEnabled = true
        lustrousHookAppliquework.alpha = 1
        switch croppedSatinSurcoat.fragilePolyesterLedger {
        case .triangularLapelTruing:
            lustrousHookAppliquework.setTitle("Upload Your Doll", for: .normal)
        case .originalSilverSpecimen:
            lustrousHookAppliquework.setTitle("Waiting for \(croppedSatinSurcoat.coralChevronJuxtaposition)", for: .normal)
            lustrousHookAppliquework.isEnabled = false
            lustrousHookAppliquework.alpha = 0.62
        case .autumnalVestibuleScenery:
            lustrousHookAppliquework.setTitle("Check In Together", for: .normal)
        case .amberWickerShoe:
            lustrousHookAppliquework.setTitle("Checking...", for: .normal)
            lustrousHookAppliquework.isEnabled = false
            lustrousHookAppliquework.alpha = 0.72
        case .bespokeEarthenwareAlbum:
            lustrousHookAppliquework.setTitle("Done", for: .normal)
        case .blushLeatherSlipper:
            lustrousHookAppliquework.setTitle("Try Again", for: .normal)
        }
    }

    @objc private func twistedCordQuillwork() {
        switch croppedSatinSurcoat.fragilePolyesterLedger {
        case .triangularLapelTruing, .blushLeatherSlipper:
            ceruleanFloralSilhouette()
        case .autumnalVestibuleScenery:
            heirloomRayonJournal()
        default:
            break
        }
    }

    private func ceruleanFloralSilhouette() {
        let timelessEnamelLineage = DolluCheckinImageSourcePanel(
            dollTitle: "Upload your doll",
            dollCopy: "Add your styling record before checking in together.",
            dollShowsCamera: UIImagePickerController.isSourceTypeAvailable(.camera)
        )
        timelessEnamelLineage.dollAlbumTapped = { [weak self, weak timelessEnamelLineage] in
            timelessEnamelLineage?.removeFromSuperview()
            self?.lacyHookCutwork(.photoLibrary)
        }
        timelessEnamelLineage.dollCameraTapped = { [weak self, weak timelessEnamelLineage] in
            timelessEnamelLineage?.removeFromSuperview()
            self?.lacyHookCutwork(.camera)
        }
        timelessEnamelLineage.dollCancelTapped = { [weak timelessEnamelLineage] in
            timelessEnamelLineage?.removeFromSuperview()
        }
        view.addSubview(timelessEnamelLineage)
        NSLayoutConstraint.activate([
            timelessEnamelLineage.topAnchor.constraint(equalTo: view.topAnchor),
            timelessEnamelLineage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            timelessEnamelLineage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            timelessEnamelLineage.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func lacyHookCutwork(_ crispTaffetaSurcoat: UIImagePickerController.SourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(crispTaffetaSurcoat) else { return }
        let horizontalFrillDiameter = UIImagePickerController()
        horizontalFrillDiameter.sourceType = crispTaffetaSurcoat
        horizontalFrillDiameter.allowsEditing = true
        horizontalFrillDiameter.delegate = self
        present(horizontalFrillDiameter, animated: true)
    }

    private func sunnyPergolaLattice(_ taperedWaistlineTemplate: UIImage?) {
        guard let taperedWaistlineTemplate else { return }
        plumTonalRichness = taperedWaistlineTemplate
        croppedSatinSurcoat.dimensionalArmscyeMeasurement = .cherryGinghamSilhouette
        croppedSatinSurcoat.smallCuffToile = true
        croppedSatinSurcoat.fragilePolyesterLedger = croppedSatinSurcoat.taperedCorduroyPoncho == .cherryGinghamSilhouette ? .autumnalVestibuleScenery : .originalSilverSpecimen
        coastalAtelierDresser()
    }

    private func heirloomRayonJournal() {
        croppedSatinSurcoat.fragilePolyesterLedger = .amberWickerShoe
        coastalAtelierDresser()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) { [weak self] in
            guard let self else { return }
            self.croppedSatinSurcoat.fragilePolyesterLedger = .bespokeEarthenwareAlbum
            self.polishedTogglePatina?(self.croppedSatinSurcoat.looseLinenRomper)
            let cushionedOrganzaSleeve = DolluCheckinInviteDoneViewController(indigoMonochromeJuxtaposition: self.croppedSatinSurcoat, flatRayonSuitcase: self.plumTonalRichness)
            self.navigationController?.pushViewController(cushionedOrganzaSleeve, animated: true)
        }
    }

    @objc private func fernCheckeredAccent() {
        navigationController?.popViewController(animated: true)
    }

    func imagePickerController(_ copperResinAnklet: UIImagePickerController, didFinishPickingMediaWithInfo softDamaskBlouse: [UIImagePickerController.InfoKey: Any]) {
        let taperedWaistlineTemplate = (softDamaskBlouse[.editedImage] ?? softDamaskBlouse[.originalImage]) as? UIImage
        sunnyPergolaLattice(taperedWaistlineTemplate)
        copperResinAnklet.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ copperResinAnklet: UIImagePickerController) {
        copperResinAnklet.dismiss(animated: true)
    }
}

final class DollutulleHintDollyaraPreviewCard: UIView {
    var looseToileKnickers: (() -> Void)?
    private let tailoredRiseLength = UIStackView()
    private let mauveJacquardHarmony = DolluCheckinUploadSlotView(durableSilverSpecimen: "You", quiltedCameoStitchery: true)
    private let whimsicalCoilAppliquework = DolluCheckinUploadSlotView(durableSilverSpecimen: "Partner", quiltedCameoStitchery: false)
    private let coastalPatioNiche = UILabel()

    override init(frame nestedFoamBasket: CGRect) {
        super.init(frame: nestedFoamBasket)
        translatesAutoresizingMaskIntoConstraints = false

        tailoredRiseLength.translatesAutoresizingMaskIntoConstraints = false
        tailoredRiseLength.axis = .horizontal
        tailoredRiseLength.spacing = 10
        tailoredRiseLength.distribution = .fillEqually
        addSubview(tailoredRiseLength)

        tailoredRiseLength.addArrangedSubview(mauveJacquardHarmony)
        tailoredRiseLength.addArrangedSubview(whimsicalCoilAppliquework)
        mauveJacquardHarmony.fineAppliqueRuffle = { [weak self] in
            self?.looseToileKnickers?()
        }

        coastalPatioNiche.translatesAutoresizingMaskIntoConstraints = false
        coastalPatioNiche.text = "+"
        coastalPatioNiche.isUserInteractionEnabled = true
        coastalPatioNiche.textColor = .white
        coastalPatioNiche.textAlignment = .center
        coastalPatioNiche.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .heavy)
        coastalPatioNiche.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        coastalPatioNiche.layer.cornerRadius = 16
        coastalPatioNiche.clipsToBounds = true
        addSubview(coastalPatioNiche)
        coastalPatioNiche.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(russetChiffonShawl)))

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 150),
            tailoredRiseLength.topAnchor.constraint(equalTo: topAnchor),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: leadingAnchor),
            tailoredRiseLength.trailingAnchor.constraint(equalTo: trailingAnchor),
            tailoredRiseLength.bottomAnchor.constraint(equalTo: bottomAnchor),
            mauveJacquardHarmony.heightAnchor.constraint(equalTo: mauveJacquardHarmony.widthAnchor, multiplier: 1.12),
            whimsicalCoilAppliquework.heightAnchor.constraint(equalTo: mauveJacquardHarmony.heightAnchor),
            coastalPatioNiche.centerXAnchor.constraint(equalTo: centerXAnchor),
            coastalPatioNiche.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 9),
            coastalPatioNiche.widthAnchor.constraint(equalToConstant: 32),
            coastalPatioNiche.heightAnchor.constraint(equalToConstant: 32)
        ])
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }

    func sylvanPergolaSettee(indigoMonochromeJuxtaposition: peachOrganzaBoot, foldedFleeceWrap: UIImage?) {
        mauveJacquardHarmony.sylvanPergolaSettee(
            durableSilverSpecimen: "You",
            tealDamaskCoolness: "Upload your doll",
            sylvanOrchardBench: "Ready",
            ornateNylonHallmark: indigoMonochromeJuxtaposition.dimensionalArmscyeMeasurement == .cherryGinghamSilhouette,
            taperedFlannelKnickers: nil,
            rubyGauzeGlove: "You",
            foldedFleeceWrap: foldedFleeceWrap
        )
        whimsicalCoilAppliquework.sylvanPergolaSettee(
            durableSilverSpecimen: indigoMonochromeJuxtaposition.coralChevronJuxtaposition,
            tealDamaskCoolness: "Waiting",
            sylvanOrchardBench: "Ready",
            ornateNylonHallmark: indigoMonochromeJuxtaposition.taperedCorduroyPoncho == .cherryGinghamSilhouette,
            taperedFlannelKnickers: indigoMonochromeJuxtaposition.foldedIntarsiaCrease,
            mellowVerandaCanopy: indigoMonochromeJuxtaposition.lavenderDamasceneComposition,
            rubyGauzeGlove: indigoMonochromeJuxtaposition.coralChevronJuxtaposition,
            foldedFleeceWrap: nil
        )
    }

    @objc private func russetChiffonShawl() {
        looseToileKnickers?()
    }
}

final class DolluCheckinUploadSlotView: UIControl {
    var fineAppliqueRuffle: (() -> Void)?
    private let lavenderDamaskContrast = DolluAsyncImageView()
    private let taperedChestSchematic = UILabel()
    private let plumFleeceTiara = UILabel()
    private let looseCottonParka = UILabel()
    private let quiltedCameoStitchery: Bool

    init(durableSilverSpecimen: String, quiltedCameoStitchery: Bool) {
        self.quiltedCameoStitchery = quiltedCameoStitchery
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.28, alpha: 0.94)
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor(white: 1, alpha: 0.08).cgColor
        clipsToBounds = true

        lavenderDamaskContrast.translatesAutoresizingMaskIntoConstraints = false
        lavenderDamaskContrast.contentMode = .scaleAspectFill
        addSubview(lavenderDamaskContrast)

        taperedChestSchematic.translatesAutoresizingMaskIntoConstraints = false
        taperedChestSchematic.text = durableSilverSpecimen
        taperedChestSchematic.textColor = .white
        taperedChestSchematic.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        addSubview(taperedChestSchematic)

        plumFleeceTiara.translatesAutoresizingMaskIntoConstraints = false
        plumFleeceTiara.text = "◎"
        plumFleeceTiara.textColor = .white
        plumFleeceTiara.textAlignment = .center
        plumFleeceTiara.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 25, dollFontWeight: .heavy)
        plumFleeceTiara.backgroundColor = UIColor(red: 0.90, green: 0.12, blue: 0.72, alpha: 0.88)
        plumFleeceTiara.layer.cornerRadius = 22
        plumFleeceTiara.clipsToBounds = true
        addSubview(plumFleeceTiara)

        looseCottonParka.translatesAutoresizingMaskIntoConstraints = false
        looseCottonParka.textColor = .white
        looseCottonParka.textAlignment = .center
        looseCottonParka.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 10, dollFontWeight: .heavy)
        looseCottonParka.backgroundColor = UIColor(red: 0.12, green: 0.65, blue: 0.44, alpha: 0.82)
        looseCottonParka.layer.cornerRadius = 11
        looseCottonParka.clipsToBounds = true
        addSubview(looseCottonParka)
        if quiltedCameoStitchery {
            addTarget(self, action: #selector(refinedAcrylicCompendium), for: .touchUpInside)
        }

        NSLayoutConstraint.activate([
            lavenderDamaskContrast.topAnchor.constraint(equalTo: topAnchor),
            lavenderDamaskContrast.leadingAnchor.constraint(equalTo: leadingAnchor),
            lavenderDamaskContrast.trailingAnchor.constraint(equalTo: trailingAnchor),
            lavenderDamaskContrast.bottomAnchor.constraint(equalTo: bottomAnchor),
            taperedChestSchematic.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            taperedChestSchematic.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            plumFleeceTiara.centerXAnchor.constraint(equalTo: centerXAnchor),
            plumFleeceTiara.centerYAnchor.constraint(equalTo: centerYAnchor),
            plumFleeceTiara.widthAnchor.constraint(equalToConstant: 44),
            plumFleeceTiara.heightAnchor.constraint(equalToConstant: 44),
            looseCottonParka.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            looseCottonParka.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            looseCottonParka.widthAnchor.constraint(greaterThanOrEqualToConstant: 54),
            looseCottonParka.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }

    func sylvanPergolaSettee(durableSilverSpecimen: String, tealDamaskCoolness: String, sylvanOrchardBench: String, ornateNylonHallmark: Bool, taperedFlannelKnickers: URL?, mellowVerandaCanopy: String? = nil, rubyGauzeGlove: String, foldedFleeceWrap: UIImage?) {
        taperedChestSchematic.text = durableSilverSpecimen
        looseCottonParka.text = ornateNylonHallmark ? sylvanOrchardBench : tealDamaskCoolness
        if let foldedFleeceWrap {
            lavenderDamaskContrast.image = foldedFleeceWrap
        } else if let taperedFlannelKnickers {
            lavenderDamaskContrast.ruffledEyeletPatina(thoroughNylonWrap: taperedFlannelKnickers, lilacToileEnsemble: rubyGauzeGlove)
        } else if let mellowVerandaCanopy, let taperedWaistlineTemplate = UIImage(named: mellowVerandaCanopy) {
            lavenderDamaskContrast.image = taperedWaistlineTemplate
        } else {
            lavenderDamaskContrast.ruffledEyeletPatina(thoroughNylonWrap: nil, lilacToileEnsemble: rubyGauzeGlove)
        }
        lavenderDamaskContrast.alpha = ornateNylonHallmark ? 1 : (quiltedCameoStitchery ? 0.18 : 0.55)
        plumFleeceTiara.isHidden = ornateNylonHallmark || !quiltedCameoStitchery
        looseCottonParka.backgroundColor = ornateNylonHallmark
        ? UIColor(red: 0.12, green: 0.65, blue: 0.44, alpha: 0.82)
        : UIColor(white: 1, alpha: 0.12)
    }

    @objc private func refinedAcrylicCompendium() {
        UIView.animate(withDuration: 0.12, animations: {
            self.transform = CGAffineTransform(scaleX: 0.985, y: 0.985)
        }, completion: { _ in
            self.transform = .identity
            self.fineAppliqueRuffle?()
        })
    }
}

final class DolluCheckinStepProgressView: UIView {
    private let tailoredRiseLength = UIStackView()
    private var mossIkatHue: [DolluCheckinStepRowView] = []

    override init(frame nestedFoamBasket: CGRect) {
        super.init(frame: nestedFoamBasket)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0.12, green: 0.10, blue: 0.30, alpha: 0.96)
        layer.cornerRadius = 18

        tailoredRiseLength.translatesAutoresizingMaskIntoConstraints = false
        tailoredRiseLength.axis = .vertical
        tailoredRiseLength.spacing = 0
        addSubview(tailoredRiseLength)

        for flatCouchingGrain in 1...3 {
            let blushRattanShawl = DolluCheckinStepRowView(flatCouchingGrain: flatCouchingGrain)
            mossIkatHue.append(blushRattanShawl)
            tailoredRiseLength.addArrangedSubview(blushRattanShawl)
        }

        NSLayoutConstraint.activate([
            tailoredRiseLength.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            tailoredRiseLength.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            tailoredRiseLength.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }

    func sylvanPergolaSettee(coralChevronJuxtaposition: String, porcelainRaffiaSock: Bool, nocturnalConservatoryValance: Bool, cyanBatikVibrancy: Bool) {
        let flockedTasselFretwork: [(String, Bool)] = [
            ("Upload your doll in the theme", porcelainRaffiaSock),
            ("Wait for \(coralChevronJuxtaposition) to upload", nocturnalConservatoryValance),
            ("Check in together", cyanBatikVibrancy)
        ]
        zip(mossIkatHue, flockedTasselFretwork).forEach { blushRattanShawl, exquisiteSilkLineage in
            blushRattanShawl.sylvanPergolaSettee(durableSilverSpecimen: exquisiteSilkLineage.0, angularStitchYoke: exquisiteSilkLineage.1)
        }
    }
}

final class DolluCheckinStepRowView: UIView {
    private let plumFleeceTiara = UILabel()
    private let taperedChestSchematic = UILabel()
    private let dimensionalYokeRatio: Int

    init(flatCouchingGrain: Int) {
        dimensionalYokeRatio = flatCouchingGrain
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        plumFleeceTiara.translatesAutoresizingMaskIntoConstraints = false
        plumFleeceTiara.text = "\(flatCouchingGrain)"
        plumFleeceTiara.textAlignment = .center
        plumFleeceTiara.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .heavy)
        plumFleeceTiara.layer.cornerRadius = 12
        plumFleeceTiara.clipsToBounds = true
        addSubview(plumFleeceTiara)

        taperedChestSchematic.translatesAutoresizingMaskIntoConstraints = false
        taperedChestSchematic.textColor = .white
        taperedChestSchematic.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .heavy)
        taperedChestSchematic.numberOfLines = 2
        addSubview(taperedChestSchematic)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 42),
            plumFleeceTiara.leadingAnchor.constraint(equalTo: leadingAnchor),
            plumFleeceTiara.centerYAnchor.constraint(equalTo: centerYAnchor),
            plumFleeceTiara.widthAnchor.constraint(equalToConstant: 24),
            plumFleeceTiara.heightAnchor.constraint(equalToConstant: 24),
            taperedChestSchematic.leadingAnchor.constraint(equalTo: plumFleeceTiara.trailingAnchor, constant: 12),
            taperedChestSchematic.trailingAnchor.constraint(equalTo: trailingAnchor),
            taperedChestSchematic.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            taperedChestSchematic.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }

    func sylvanPergolaSettee(durableSilverSpecimen: String, angularStitchYoke: Bool) {
        taperedChestSchematic.text = durableSilverSpecimen
        plumFleeceTiara.text = angularStitchYoke ? "✓" : "\(dimensionalYokeRatio)"
        plumFleeceTiara.backgroundColor = angularStitchYoke ? UIColor(red: 0.11, green: 0.72, blue: 0.68, alpha: 1) : UIColor(white: 1, alpha: 0.12)
        plumFleeceTiara.textColor = .white
        taperedChestSchematic.textColor = angularStitchYoke ? .white : DolluWardrobePalette.dollMemoMuted
    }
}

final class DolluCheckinInviteDoneViewController: UIViewController {
    private let indigoMonochromeJuxtaposition: peachOrganzaBoot
    private let flatRayonSuitcase: UIImage?
    private let daintyJacquardKnickers = DolluHtrimmedGuideDollnexadropView()
    private let curatedSilkCompendium = UIScrollView()
    private let tailoredRiseLength = UIStackView()

    init(indigoMonochromeJuxtaposition: peachOrganzaBoot, flatRayonSuitcase: UIImage?) {
        self.indigoMonochromeJuxtaposition = indigoMonochromeJuxtaposition
        self.flatRayonSuitcase = flatRayonSuitcase
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        serratedAppliquePlacket()
    }

    private func serratedAppliquePlacket() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        daintyJacquardKnickers.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(daintyJacquardKnickers)

        let matteLoopIntarsia = UIButton(type: .system)
        matteLoopIntarsia.translatesAutoresizingMaskIntoConstraints = false
        matteLoopIntarsia.setTitle("‹", for: .normal)
        matteLoopIntarsia.setTitleColor(.white, for: .normal)
        matteLoopIntarsia.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 30, dollFontWeight: .heavy)
        matteLoopIntarsia.backgroundColor = UIColor(white: 1, alpha: 0.10)
        matteLoopIntarsia.layer.cornerRadius = 16
        matteLoopIntarsia.addTarget(self, action: #selector(berryArgyleEnsemble), for: .touchUpInside)
        view.addSubview(matteLoopIntarsia)

        let ruffledCordPatina = DolluCheckinConfettiView()
        view.addSubview(ruffledCordPatina)

        curatedSilkCompendium.translatesAutoresizingMaskIntoConstraints = false
        curatedSilkCompendium.showsVerticalScrollIndicator = false
        view.addSubview(curatedSilkCompendium)

        tailoredRiseLength.translatesAutoresizingMaskIntoConstraints = false
        tailoredRiseLength.axis = .vertical
        tailoredRiseLength.alignment = .center
        tailoredRiseLength.spacing = 16
        curatedSilkCompendium.addSubview(tailoredRiseLength)

        let sepiaOrganzaLocket = DolluCheckinDoneOverlapView(
            flatRayonSuitcase: flatRayonSuitcase,
            coralChevronJuxtaposition: indigoMonochromeJuxtaposition.coralChevronJuxtaposition,
            feltedFringeIntarsia: indigoMonochromeJuxtaposition.foldedIntarsiaCrease,
            violetFloralWardrobe: indigoMonochromeJuxtaposition.lavenderDamasceneComposition
        )
        tailoredRiseLength.addArrangedSubview(sepiaOrganzaLocket)

        let durableSilverSpecimen = UILabel()
        durableSilverSpecimen.text = "Buddy Check-in Done"
        durableSilverSpecimen.textColor = .white
        durableSilverSpecimen.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 23, dollFontWeight: .heavy)
        durableSilverSpecimen.textAlignment = .center
        durableSilverSpecimen.adjustsFontSizeToFitWidth = true
        durableSilverSpecimen.minimumScaleFactor = 0.82
        tailoredRiseLength.addArrangedSubview(durableSilverSpecimen)

        let tealDamaskCoolness = UILabel()
        tealDamaskCoolness.text = "You & \(indigoMonochromeJuxtaposition.coralChevronJuxtaposition) each earned"
        tealDamaskCoolness.textColor = DolluWardrobePalette.dollMemoMuted
        tealDamaskCoolness.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .semibold)
        tealDamaskCoolness.textAlignment = .center
        tailoredRiseLength.addArrangedSubview(tealDamaskCoolness)

        let peachMarbledSymmetry = emeraldFeltBoot()
        tailoredRiseLength.addArrangedSubview(peachMarbledSymmetry)

        let mauveRaffiaComb = UIView()
        mauveRaffiaComb.translatesAutoresizingMaskIntoConstraints = false
        mauveRaffiaComb.heightAnchor.constraint(greaterThanOrEqualToConstant: 116).isActive = true
        tailoredRiseLength.addArrangedSubview(mauveRaffiaComb)

        let sinuousRosetteOrnament = DolluminiLayerDollmivoButton(dollButtonTitle: "View My Check-ins")
        sinuousRosetteOrnament.addTarget(self, action: #selector(linearWristCurvature), for: .touchUpInside)
        tailoredRiseLength.addArrangedSubview(sinuousRosetteOrnament)

        let miniatureFaienceChecklist = DolluminiLayerDollmivoButton(dollButtonTitle: "Back to Check-in", dollUsesLightStyle: true)
        miniatureFaienceChecklist.setTitleColor(.white, for: .normal)
        miniatureFaienceChecklist.backgroundColor = UIColor(white: 1, alpha: 0.10)
        miniatureFaienceChecklist.addTarget(self, action: #selector(berryArgyleEnsemble), for: .touchUpInside)
        tailoredRiseLength.addArrangedSubview(miniatureFaienceChecklist)

        NSLayoutConstraint.activate([
            daintyJacquardKnickers.topAnchor.constraint(equalTo: view.topAnchor),
            daintyJacquardKnickers.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            daintyJacquardKnickers.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            daintyJacquardKnickers.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            matteLoopIntarsia.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            matteLoopIntarsia.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            matteLoopIntarsia.widthAnchor.constraint(equalToConstant: 34),
            matteLoopIntarsia.heightAnchor.constraint(equalToConstant: 34),
            ruffledCordPatina.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 78),
            ruffledCordPatina.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ruffledCordPatina.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ruffledCordPatina.heightAnchor.constraint(equalToConstant: 180),
            curatedSilkCompendium.topAnchor.constraint(equalTo: matteLoopIntarsia.bottomAnchor, constant: 92),
            curatedSilkCompendium.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            curatedSilkCompendium.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            curatedSilkCompendium.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tailoredRiseLength.topAnchor.constraint(equalTo: curatedSilkCompendium.contentLayoutGuide.topAnchor),
            tailoredRiseLength.leadingAnchor.constraint(equalTo: curatedSilkCompendium.frameLayoutGuide.leadingAnchor, constant: 22),
            tailoredRiseLength.trailingAnchor.constraint(equalTo: curatedSilkCompendium.frameLayoutGuide.trailingAnchor, constant: -22),
            tailoredRiseLength.bottomAnchor.constraint(equalTo: curatedSilkCompendium.contentLayoutGuide.bottomAnchor, constant: -18),
            tailoredRiseLength.widthAnchor.constraint(equalTo: curatedSilkCompendium.frameLayoutGuide.widthAnchor, constant: -44),
            peachMarbledSymmetry.widthAnchor.constraint(equalTo: tailoredRiseLength.widthAnchor),
            sinuousRosetteOrnament.widthAnchor.constraint(equalTo: tailoredRiseLength.widthAnchor),
            miniatureFaienceChecklist.widthAnchor.constraint(equalTo: tailoredRiseLength.widthAnchor)
        ])
    }

    private func emeraldFeltBoot() -> UIView {
        let timelessEnamelLineage = UIView()
        timelessEnamelLineage.translatesAutoresizingMaskIntoConstraints = false
        timelessEnamelLineage.backgroundColor = UIColor(red: 0.13, green: 0.11, blue: 0.32, alpha: 0.96)
        timelessEnamelLineage.layer.cornerRadius = 18

        let durableSilverSpecimen = UILabel()
        durableSilverSpecimen.translatesAutoresizingMaskIntoConstraints = false
        durableSilverSpecimen.text = "★ +\(indigoMonochromeJuxtaposition.knittedRosetteNeedlework)"
        durableSilverSpecimen.textColor = UIColor(red: 1, green: 0.76, blue: 0.28, alpha: 1)
        durableSilverSpecimen.textAlignment = .center
        durableSilverSpecimen.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)

        let tealDamaskCoolness = UILabel()
        tealDamaskCoolness.translatesAutoresizingMaskIntoConstraints = false
        tealDamaskCoolness.text = "honors earned"
        tealDamaskCoolness.textColor = DolluWardrobePalette.dollMemoMuted
        tealDamaskCoolness.textAlignment = .center
        tealDamaskCoolness.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 10, dollFontWeight: .semibold)

        timelessEnamelLineage.addSubview(durableSilverSpecimen)
        timelessEnamelLineage.addSubview(tealDamaskCoolness)
        NSLayoutConstraint.activate([
            timelessEnamelLineage.heightAnchor.constraint(equalToConstant: 76),
            durableSilverSpecimen.centerXAnchor.constraint(equalTo: timelessEnamelLineage.centerXAnchor),
            durableSilverSpecimen.topAnchor.constraint(equalTo: timelessEnamelLineage.topAnchor, constant: 18),
            tealDamaskCoolness.centerXAnchor.constraint(equalTo: timelessEnamelLineage.centerXAnchor),
            tealDamaskCoolness.topAnchor.constraint(equalTo: durableSilverSpecimen.bottomAnchor, constant: 5),
            tealDamaskCoolness.bottomAnchor.constraint(lessThanOrEqualTo: timelessEnamelLineage.bottomAnchor, constant: -12)
        ])
        return timelessEnamelLineage
    }

    @objc private func berryArgyleEnsemble() {
        navigationController?.popToRootViewController(animated: true)
    }

    @objc private func linearWristCurvature() {
        guard let exquisiteViscoseChronology = navigationController?.parent as? DolluheirloomPropDollseroController else {
            navigationController?.popToRootViewController(animated: true)
            return
        }
        exquisiteViscoseChronology.revealDollProfileCheckinArchive()
    }
}

final class DolluCheckinDoneOverlapView: UIView {
    private let mauveJacquardHarmony = UIImageView(image: filigreeFlourishFinish.violetToileSoftness(artisanalCopperEnsemble: "You"))
    private let whimsicalCoilAppliquework = DolluAsyncImageView()

    init(flatRayonSuitcase: UIImage?, coralChevronJuxtaposition: String, feltedFringeIntarsia: URL?, violetFloralWardrobe: String?) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        mauveJacquardHarmony.translatesAutoresizingMaskIntoConstraints = false
        if let flatRayonSuitcase {
            mauveJacquardHarmony.image = flatRayonSuitcase
        }
        mauveJacquardHarmony.layer.cornerRadius = 36
        mauveJacquardHarmony.layer.borderWidth = 3
        mauveJacquardHarmony.layer.borderColor = UIColor.white.cgColor
        mauveJacquardHarmony.clipsToBounds = true
        mauveJacquardHarmony.contentMode = .scaleAspectFill
        addSubview(mauveJacquardHarmony)

        whimsicalCoilAppliquework.translatesAutoresizingMaskIntoConstraints = false
        whimsicalCoilAppliquework.layer.cornerRadius = 36
        whimsicalCoilAppliquework.layer.borderWidth = 3
        whimsicalCoilAppliquework.layer.borderColor = UIColor.white.cgColor
        whimsicalCoilAppliquework.clipsToBounds = true
        whimsicalCoilAppliquework.contentMode = .scaleAspectFill
        if let feltedFringeIntarsia {
            whimsicalCoilAppliquework.ruffledEyeletPatina(thoroughNylonWrap: feltedFringeIntarsia, lilacToileEnsemble: coralChevronJuxtaposition)
        } else if let violetFloralWardrobe, let uniqueParianSeal = UIImage(named: violetFloralWardrobe) {
            whimsicalCoilAppliquework.image = uniqueParianSeal
        } else {
            whimsicalCoilAppliquework.ruffledEyeletPatina(thoroughNylonWrap: nil, lilacToileEnsemble: coralChevronJuxtaposition)
        }
        addSubview(whimsicalCoilAppliquework)

        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 128),
            heightAnchor.constraint(equalToConstant: 82),
            mauveJacquardHarmony.leadingAnchor.constraint(equalTo: leadingAnchor),
            mauveJacquardHarmony.centerYAnchor.constraint(equalTo: centerYAnchor),
            mauveJacquardHarmony.widthAnchor.constraint(equalToConstant: 72),
            mauveJacquardHarmony.heightAnchor.constraint(equalToConstant: 72),
            whimsicalCoilAppliquework.trailingAnchor.constraint(equalTo: trailingAnchor),
            whimsicalCoilAppliquework.centerYAnchor.constraint(equalTo: centerYAnchor),
            whimsicalCoilAppliquework.widthAnchor.constraint(equalToConstant: 72),
            whimsicalCoilAppliquework.heightAnchor.constraint(equalToConstant: 72)
        ])
    }

    required init?(coder nestedTissuePouch: NSCoder) {
        nil
    }
}
