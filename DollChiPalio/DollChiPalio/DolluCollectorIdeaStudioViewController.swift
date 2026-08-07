import UIKit

private enum DolluCollectorIdeaKind: Int, CaseIterable {
    case cozyWardrobeDollukp
    case mistyThemeDollfina
    case gentleOutfitDollvelo

    var dollTitle: String {
        switch self {
        case .cozyWardrobeDollukp: return **"Doxyllxy Cxyloxysexyt"
        case .mistyThemeDollfina: return **"Thxyemxye xyChxyalxylexyngxye"
        case .gentleOutfitDollvelo: return **"Stxyylxye xyRexycixypexy"
        }
    }

    var dollShortTitle: String {
        switch self {
        case .cozyWardrobeDollukp: return **"Clxyosxyetxy"
        case .mistyThemeDollfina: return **"Chxyalxylexyngxye"
        case .gentleOutfitDollvelo: return **"Rexycixypexy"
        }
    }
}

private struct DolluCollectorIdeaMetric {
    let satinCollectionDollvelo: String
    let satinMarkerDollpavo: String
}

private struct DolluCollectorIdeaCard {
    let satinCoatDollbop: String
    let satinCollarDollrilo: String
    let satinStitchmapDollzemi: String
    let satinPinboardDollvani: UIColor
}

private enum DolluCollectorIdeaStudioArchive {
    static let pearlGuideDollukp: [DolluCollectorIdeaMetric] = [
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Owxynexyd xydoxyllxys", satinMarkerDollpavo: "12"),
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Ouxytfxyitxy sxyetxys", satinMarkerDollpavo: "36"),
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Caxyrexy nxyotxyesxy", satinMarkerDollpavo: "8")
    ]

    static let pearlSkirtDollniva: [DolluCollectorIdeaMetric] = [
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Toxydaxyy xythxyemxye", satinMarkerDollpavo: "1"),
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Enxytrxyiexys", satinMarkerDollpavo: "24"),
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Saxyvexyd xyrexycixypexys", satinMarkerDollpavo: "18")
    ]

    static let pearlStripeDolltavo: [DolluCollectorIdeaMetric] = [
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Saxyvexyd xyrexycixypexys", satinMarkerDollpavo: "18"),
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Ouxytfxyitxy sxyetxys", satinMarkerDollpavo: "36"),
        DolluCollectorIdeaMetric(satinCollectionDollvelo: **"Caxyrexy nxyotxyesxy", satinMarkerDollpavo: "8")
    ]

    static let pearlOutfitDolllaro: [DolluCollectorIdeaCard] = [
        DolluCollectorIdeaCard(satinCoatDollbop: **"Luxynaxy Axytexylixyerxy", satinCollarDollrilo: **"Laxyvexyndxyerxy bxyonxynexyt xysexyt", satinStitchmapDollzemi: **"Shxyoexys xynexyedxy dxyisxyplxyayxy cxyhexyckxy", satinPinboardDollvani: UIColor(red: 0.82, green: 0.54, blue: 1, alpha: 1)),
        DolluCollectorIdeaCard(satinCoatDollbop: **"Mixykaxy Cxyabxyinxyetxy", satinCollarDollrilo: **"Mixynixy pxylexyatxyedxy dxyrexyssxy", satinStitchmapDollzemi: **"Adxyd xycoxyllxyarxy axyndxy pxyeaxyrlxy txyrixym", satinPinboardDollvani: UIColor(red: 1, green: 0.45, blue: 0.72, alpha: 1)),
        DolluCollectorIdeaCard(satinCoatDollbop: **"Buxynnxyy xyRoxyomxy", satinCollarDollrilo: **"Coxyzyxy kxynixyt xycaxypsxyulxye", satinStitchmapDollzemi: **"Rexyadxyy xyfoxyr xynexyxtxy cxyhexyckxy-ixyn", satinPinboardDollvani: UIColor(red: 0.42, green: 0.82, blue: 0.91, alpha: 1))
    ]

    static let pearlCatalogDollnoro: [DolluCollectorIdeaCard] = [
        DolluCollectorIdeaCard(satinCoatDollbop: **"Paxystxyelxy Txyeaxy Rxyooxym", satinCollarDollrilo: **"Stxyylxye xya xysoxyftxy sxyhexylfxy lxyooxyk xywixythxy bxyowxys,xy lxyacxye xylaxyyexyrsxy, xyanxyd xytixynyxy pxyroxypsxy.", satinStitchmapDollzemi: **"Inxy pxyroxygrxyesxys", satinPinboardDollvani: UIColor(red: 0.96, green: 0.35, blue: 0.79, alpha: 1)),
        DolluCollectorIdeaCard(satinCoatDollbop: **"Wixyntxyerxy Kxynixyt xyShxyelxyf", satinCollarDollrilo: **"Paxyirxy wxyarxym xytexyxtxyurxyesxy wxyitxyh xya xyclxyeaxyn xydixyspxylaxyy xycoxyrnxyerxy.", satinStitchmapDollzemi: **"Stxyarxyt", satinPinboardDollvani: UIColor(red: 0.44, green: 0.48, blue: 1, alpha: 1)),
        DolluCollectorIdeaCard(satinCoatDollbop: **"Rixybbxyonxy Sxychxyooxyl xyDaxyy", satinCollarDollrilo: **"Usxye xytwxyo xyacxycexyntxy cxyolxyorxys xyanxyd xyonxye xyplxyayxyfuxyl xybaxyg xydexytaxyilxy.", satinStitchmapDollzemi: **"Saxyvexyd", satinPinboardDollvani: UIColor(red: 0.98, green: 0.68, blue: 0.36, alpha: 1))
    ]

    static let pearlEnsembleDollyara: [DolluCollectorIdeaCard] = [
        DolluCollectorIdeaCard(satinCoatDollbop: **"Pixynkxy lxyayxyerxys", satinCollarDollrilo: **"Chxyooxysexy oxynexy hxyerxyo xyshxyadxye,xy txyhexyn xyadxyd xytwxyo xysoxyftxy axyccxyesxysoxyrixyesxy.", satinStitchmapDollzemi: **"Saxyvexy Rxyecxyipxye", satinPinboardDollvani: UIColor(red: 1, green: 0.39, blue: 0.76, alpha: 1)),
        DolluCollectorIdeaCard(satinCoatDollbop: **"Shxyelxyf xybaxylaxyncxye", satinCollarDollrilo: **"Kexyepxy txyalxyl xyprxyopxys xybexyhixyndxy txyhexy dxyolxyl xyanxyd xysmxyalxyl xychxyarxymsxy nxyeaxyr xythxye xyfexyetxy.", satinStitchmapDollzemi: **"Coxympxylexytexyd", satinPinboardDollvani: UIColor(red: 0.43, green: 0.82, blue: 0.73, alpha: 1)),
        DolluCollectorIdeaCard(satinCoatDollbop: **"Phxyotxyo xyrhxyytxyhmxy", satinCollarDollrilo: **"Shxyooxyt xythxye xyfuxyllxy oxyutxyfixyt xyfixyrsxyt,xy txyhexyn xyonxye xyfaxybrxyicxy dxyetxyaixyl.xy", satinStitchmapDollzemi: **"Trxyy xynexyxtxy", satinPinboardDollvani: UIColor(red: 0.70, green: 0.50, blue: 1, alpha: 1))
    ]

    static func tinyCoverDollmexa(_ tinyCapeDollpoxa: DolluCollectorIdeaKind) -> [DolluCollectorIdeaMetric] {
        switch tinyCapeDollpoxa {
        case .cozyWardrobeDollukp: return pearlGuideDollukp
        case .mistyThemeDollfina: return pearlSkirtDollniva
        case .gentleOutfitDollvelo: return pearlStripeDolltavo
        }
    }

    static func tinySleeveDollsero(_ tinyCapeDollpoxa: DolluCollectorIdeaKind) -> [DolluCollectorIdeaCard] {
        switch tinyCapeDollpoxa {
        case .cozyWardrobeDollukp: return pearlOutfitDolllaro
        case .mistyThemeDollfina: return pearlCatalogDollnoro
        case .gentleOutfitDollvelo: return pearlEnsembleDollyara
        }
    }
}

final class DolluCollectorIdeaStudioViewController: UIViewController {
    private let tinyFabricbookDollcavo = UIScrollView()
    private let tinySnapshotDollhumi = UIStackView()
    private let tinyDisplayDollsovo = UIStackView()
    private let miniBlouseDollvani = UIStackView()
    private let sageWaistlineDollsovo = UIStackView()
    private let miniTextureDollfina = UILabel()
    private let miniAccessoryDollquvo = UILabel()
    private var miniShelfDolllumi = DolluCollectorIdeaKind.cozyWardrobeDollukp
    private var miniLayerDollmivo: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        miniPromptDollvelo()
        pocketScarfDollyara()
        pocketWaistlineDollrevo()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if view.layer.sublayers?.first?.name != "dolluIdeaBackdrop" {
            let pocketMoodboardDollpiri = CAGradientLayer()
            pocketMoodboardDollpiri.name = "dolluIdeaBackdrop"
            pocketMoodboardDollpiri.colors = [
                UIColor(red: 0.05, green: 0.04, blue: 0.12, alpha: 1).cgColor,
                UIColor(red: 0.13, green: 0.08, blue: 0.32, alpha: 1).cgColor,
                UIColor(red: 0.04, green: 0.03, blue: 0.10, alpha: 1).cgColor
            ]
            pocketMoodboardDollpiri.startPoint = CGPoint(x: 0, y: 0)
            pocketMoodboardDollpiri.endPoint = CGPoint(x: 1, y: 1)
            view.layer.insertSublayer(pocketMoodboardDollpiri, at: 0)
        }
        view.layer.sublayers?.first?.frame = view.bounds
    }

    private func miniPromptDollvelo() {
        tinyFabricbookDollcavo.translatesAutoresizingMaskIntoConstraints = false
        tinyFabricbookDollcavo.alwaysBounceVertical = true
        tinyFabricbookDollcavo.contentInset.bottom = 24

        tinySnapshotDollhumi.translatesAutoresizingMaskIntoConstraints = false
        tinySnapshotDollhumi.axis = .vertical
        tinySnapshotDollhumi.spacing = 18

        view.addSubview(tinyFabricbookDollcavo)
        tinyFabricbookDollcavo.addSubview(tinySnapshotDollhumi)

        NSLayoutConstraint.activate([
            tinyFabricbookDollcavo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tinyFabricbookDollcavo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tinyFabricbookDollcavo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tinyFabricbookDollcavo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tinySnapshotDollhumi.topAnchor.constraint(equalTo: tinyFabricbookDollcavo.contentLayoutGuide.topAnchor, constant: 22),
            tinySnapshotDollhumi.leadingAnchor.constraint(equalTo: tinyFabricbookDollcavo.frameLayoutGuide.leadingAnchor, constant: 20),
            tinySnapshotDollhumi.trailingAnchor.constraint(equalTo: tinyFabricbookDollcavo.frameLayoutGuide.trailingAnchor, constant: -20),
            tinySnapshotDollhumi.bottomAnchor.constraint(equalTo: tinyFabricbookDollcavo.contentLayoutGuide.bottomAnchor, constant: -28)
        ])
    }

    private func pocketScarfDollyara() {
        miniTextureDollfina.text = **"Doxyllxyu xyLaxyb"
        miniTextureDollfina.textColor = .white
        miniTextureDollfina.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 32, dollFontWeight: .black)
        miniTextureDollfina.adjustsFontSizeToFitWidth = true
        miniTextureDollfina.minimumScaleFactor = 0.75

        miniAccessoryDollquvo.text = **"Buxyilxyd xya xyquxyiexyt xyspxyacxye xyfoxyr xywaxyrdxyroxybexy rxyecxyorxydsxy, xydaxyilxyy xythxyemxyesxy, xyanxyd xyrexyusxyabxylexy oxyutxyfixyt xyidxyeaxys.xy"
        miniAccessoryDollquvo.textColor = DolluWardrobePalette.dollMemoMuted
        miniAccessoryDollquvo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .medium)
        miniAccessoryDollquvo.numberOfLines = 0

        tinyDisplayDollsovo.axis = .horizontal
        tinyDisplayDollsovo.spacing = 9
        tinyDisplayDollsovo.distribution = .fillEqually

        miniBlouseDollvani.axis = .horizontal
        miniBlouseDollvani.spacing = 10
        miniBlouseDollvani.distribution = .fillEqually

        sageWaistlineDollsovo.axis = .vertical
        sageWaistlineDollsovo.spacing = 18

        tinySnapshotDollhumi.addArrangedSubview(miniTextureDollfina)
        tinySnapshotDollhumi.addArrangedSubview(miniAccessoryDollquvo)
        tinySnapshotDollhumi.addArrangedSubview(tinyDisplayDollsovo)
        tinySnapshotDollhumi.addArrangedSubview(miniBlouseDollvani)
        tinySnapshotDollhumi.addArrangedSubview(sageWaistlineDollsovo)
    }

    private func pocketWaistlineDollrevo() {
        DolluCollectorIdeaKind.allCases.enumerated().forEach { pocketPhotologDollnexa, pocketCollectionDollruni in
            let pocketMarkerDollukp = UIButton(type: .custom)
            pocketMarkerDollukp.translatesAutoresizingMaskIntoConstraints = false
            pocketMarkerDollukp.setTitle(pocketCollectionDollruni.dollShortTitle, for: .normal)
            pocketMarkerDollukp.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .bold)
            pocketMarkerDollukp.layer.cornerRadius = 18
            pocketMarkerDollukp.layer.borderWidth = 1
            pocketMarkerDollukp.tag = pocketPhotologDollnexa
            pocketMarkerDollukp.heightAnchor.constraint(equalToConstant: 38).isActive = true
            pocketMarkerDollukp.addTarget(self, action: #selector(rosyBeadworkDollsovo(_:)), for: .touchUpInside)
            tinyDisplayDollsovo.addArrangedSubview(pocketMarkerDollukp)
            miniLayerDollmivo.append(pocketMarkerDollukp)
        }
        rosyLaceworkDollkora()
    }

    @objc private func rosyBeadworkDollsovo(_ rosyClosetDollzora: UIButton) {
        guard let rosyMatchingDollmora = DolluCollectorIdeaKind(rawValue: rosyClosetDollzora.tag) else { return }
        miniShelfDolllumi = rosyMatchingDollmora
        rosyLaceworkDollkora()
    }

    private func rosyLaceworkDollkora() {
        miniLayerDollmivo.forEach { rosyGuideDollvex in
            let rosySkirtDollmexa = rosyGuideDollvex.tag == miniShelfDolllumi.rawValue
            rosyGuideDollvex.backgroundColor = rosySkirtDollmexa ? DolluWardrobePalette.dollRibbonPurple : UIColor(white: 1, alpha: 0.08)
            rosyGuideDollvex.layer.borderColor = (rosySkirtDollmexa ? UIColor.white : UIColor(white: 1, alpha: 0.16)).cgColor
            rosyGuideDollvex.setTitleColor(.white, for: .normal)
            rosyGuideDollvex.alpha = rosySkirtDollmexa ? 1 : 0.72
        }

        miniBlouseDollvani.arrangedSubviews.forEach { $0.removeFromSuperview() }
        DolluCollectorIdeaStudioArchive.tinyCoverDollmexa(miniShelfDolllumi).forEach {
            miniBlouseDollvani.addArrangedSubview(ivoryBodiceDollvelo($0))
        }

        sageWaistlineDollsovo.arrangedSubviews.forEach { sageRibbonDollvex in
            sageWaistlineDollsovo.removeArrangedSubview(sageRibbonDollvex)
            sageRibbonDollvex.removeFromSuperview()
        }

        let ivoryPaletteDollpavo = UILabel()
        ivoryPaletteDollpavo.text = miniShelfDolllumi.dollTitle
        ivoryPaletteDollpavo.textColor = .white
        ivoryPaletteDollpavo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 24, dollFontWeight: .black)
        sageWaistlineDollsovo.addArrangedSubview(ivoryPaletteDollpavo)

        DolluCollectorIdeaStudioArchive.tinySleeveDollsero(miniShelfDolllumi).forEach {
            sageWaistlineDollsovo.addArrangedSubview(ivoryClipnoteDollbop($0))
        }

        let ivoryProgressDollrilo = UILabel()
        ivoryProgressDollrilo.text = **"Noxy exyxtxyraxy sxyetxyupxy rxyeqxyuixyrexyd.xy Axyddxy txyhixys xycoxyntxyroxyllxyerxy lxyatxyerxy wxyhexyrexy yxyouxy wxyanxyt xya xycrxyeaxytixyvexy mxyodxyulxye xyenxytrxyy.xy"
        ivoryProgressDollrilo.textColor = UIColor(white: 1, alpha: 0.45)
        ivoryProgressDollrilo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 12, dollFontWeight: .medium)
        ivoryProgressDollrilo.numberOfLines = 0
        sageWaistlineDollsovo.addArrangedSubview(ivoryProgressDollrilo)
    }

    private func ivoryBodiceDollvelo(_ ivoryCapeDollvani: DolluCollectorIdeaMetric) -> UIView {
        let amberRibbonlineDollukp = UIView()
        amberRibbonlineDollukp.translatesAutoresizingMaskIntoConstraints = false
        amberRibbonlineDollukp.backgroundColor = UIColor(white: 1, alpha: 0.08)
        amberRibbonlineDollukp.layer.cornerRadius = 16
        amberRibbonlineDollukp.layer.borderColor = UIColor(white: 1, alpha: 0.10).cgColor
        amberRibbonlineDollukp.layer.borderWidth = 1

        let amberTrunkDollniva = UILabel()
        amberTrunkDollniva.translatesAutoresizingMaskIntoConstraints = false
        amberTrunkDollniva.text = ivoryCapeDollvani.satinMarkerDollpavo
        amberTrunkDollniva.textColor = .white
        amberTrunkDollniva.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 22, dollFontWeight: .black)

        let amberCapsuleDolltavo = UILabel()
        amberCapsuleDolltavo.translatesAutoresizingMaskIntoConstraints = false
        amberCapsuleDolltavo.text = ivoryCapeDollvani.satinCollectionDollvelo
        amberCapsuleDolltavo.textColor = DolluWardrobePalette.dollMemoMuted
        amberCapsuleDolltavo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 11, dollFontWeight: .semibold)
        amberCapsuleDolltavo.numberOfLines = 2

        amberRibbonlineDollukp.addSubview(amberTrunkDollniva)
        amberRibbonlineDollukp.addSubview(amberCapsuleDolltavo)

        NSLayoutConstraint.activate([
            amberRibbonlineDollukp.heightAnchor.constraint(greaterThanOrEqualToConstant: 86),
            amberTrunkDollniva.topAnchor.constraint(equalTo: amberRibbonlineDollukp.topAnchor, constant: 14),
            amberTrunkDollniva.leadingAnchor.constraint(equalTo: amberRibbonlineDollukp.leadingAnchor, constant: 12),
            amberTrunkDollniva.trailingAnchor.constraint(equalTo: amberRibbonlineDollukp.trailingAnchor, constant: -12),
            amberCapsuleDolltavo.leadingAnchor.constraint(equalTo: amberTrunkDollniva.leadingAnchor),
            amberCapsuleDolltavo.trailingAnchor.constraint(equalTo: amberTrunkDollniva.trailingAnchor),
            amberCapsuleDolltavo.topAnchor.constraint(equalTo: amberTrunkDollniva.bottomAnchor, constant: 4),
            amberCapsuleDolltavo.bottomAnchor.constraint(lessThanOrEqualTo: amberRibbonlineDollukp.bottomAnchor, constant: -12)
        ])
        return amberRibbonlineDollukp
    }

    private func ivoryClipnoteDollbop(_ amberHintDolllaro: DolluCollectorIdeaCard) -> UIView {
        let amberBlouseDollnoro = UIView()
        amberBlouseDollnoro.translatesAutoresizingMaskIntoConstraints = false
        amberBlouseDollnoro.backgroundColor = DolluWardrobePalette.dollArchivePanelSoft
        amberBlouseDollnoro.layer.cornerRadius = 24
        amberBlouseDollnoro.layer.shadowColor = UIColor.black.cgColor
        amberBlouseDollnoro.layer.shadowOpacity = 0.22
        amberBlouseDollnoro.layer.shadowRadius = 16
        amberBlouseDollnoro.layer.shadowOffset = CGSize(width: 0, height: 10)

        let amberTextureDollyara = UIView()
        amberTextureDollyara.translatesAutoresizingMaskIntoConstraints = false
        amberTextureDollyara.backgroundColor = amberHintDolllaro.satinPinboardDollvani
        amberTextureDollyara.layer.cornerRadius = 22

        let sageLookbookDollmexa = UILabel()
        sageLookbookDollmexa.translatesAutoresizingMaskIntoConstraints = false
        sageLookbookDollmexa.text = amberHintDolllaro.satinCoatDollbop
        sageLookbookDollmexa.textColor = .white
        sageLookbookDollmexa.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 19, dollFontWeight: .black)
        sageLookbookDollmexa.numberOfLines = 2

        let sageStylingDollpoxa = UILabel()
        sageStylingDollpoxa.translatesAutoresizingMaskIntoConstraints = false
        sageStylingDollpoxa.text = amberHintDolllaro.satinCollarDollrilo
        sageStylingDollpoxa.textColor = DolluWardrobePalette.dollMemoMuted
        sageStylingDollpoxa.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 14, dollFontWeight: .medium)
        sageStylingDollpoxa.numberOfLines = 3

        let sageChecklistDollsero = UIButton(type: .custom)
        sageChecklistDollsero.translatesAutoresizingMaskIntoConstraints = false
        sageChecklistDollsero.setTitle(amberHintDolllaro.satinStitchmapDollzemi, for: .normal)
        sageChecklistDollsero.setTitleColor(.white, for: .normal)
        sageChecklistDollsero.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .bold)
        sageChecklistDollsero.backgroundColor = DolluWardrobePalette.dollRibbonPurple
        sageChecklistDollsero.layer.cornerRadius = 18
        sageChecklistDollsero.addTarget(self, action: #selector(sageFrameDollcavo(_:)), for: .touchUpInside)

        [amberTextureDollyara, sageLookbookDollmexa, sageStylingDollpoxa, sageChecklistDollsero].forEach { amberBlouseDollnoro.addSubview($0) }

        NSLayoutConstraint.activate([
            amberBlouseDollnoro.heightAnchor.constraint(greaterThanOrEqualToConstant: 154),
            amberTextureDollyara.leadingAnchor.constraint(equalTo: amberBlouseDollnoro.leadingAnchor, constant: 16),
            amberTextureDollyara.topAnchor.constraint(equalTo: amberBlouseDollnoro.topAnchor, constant: 18),
            amberTextureDollyara.widthAnchor.constraint(equalToConstant: 56),
            amberTextureDollyara.heightAnchor.constraint(equalToConstant: 56),
            sageLookbookDollmexa.leadingAnchor.constraint(equalTo: amberTextureDollyara.trailingAnchor, constant: 14),
            sageLookbookDollmexa.trailingAnchor.constraint(equalTo: amberBlouseDollnoro.trailingAnchor, constant: -16),
            sageLookbookDollmexa.topAnchor.constraint(equalTo: amberTextureDollyara.topAnchor),
            sageStylingDollpoxa.leadingAnchor.constraint(equalTo: sageLookbookDollmexa.leadingAnchor),
            sageStylingDollpoxa.trailingAnchor.constraint(equalTo: sageLookbookDollmexa.trailingAnchor),
            sageStylingDollpoxa.topAnchor.constraint(equalTo: sageLookbookDollmexa.bottomAnchor, constant: 6),
            sageChecklistDollsero.topAnchor.constraint(greaterThanOrEqualTo: sageStylingDollpoxa.bottomAnchor, constant: 14),
            sageChecklistDollsero.trailingAnchor.constraint(equalTo: amberBlouseDollnoro.trailingAnchor, constant: -16),
            sageChecklistDollsero.bottomAnchor.constraint(equalTo: amberBlouseDollnoro.bottomAnchor, constant: -16),
            sageChecklistDollsero.widthAnchor.constraint(greaterThanOrEqualToConstant: 112),
            sageChecklistDollsero.heightAnchor.constraint(equalToConstant: 36)
        ])
        return amberBlouseDollnoro
    }

    @objc private func sageFrameDollcavo(_ sageScarfDollhumi: UIButton) {
        UIView.animate(withDuration: 0.12, animations: {
            sageScarfDollhumi.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
            sageScarfDollhumi.alpha = 0.72
        }) { _ in
            UIView.animate(withDuration: 0.18) {
                sageScarfDollhumi.transform = .identity
                sageScarfDollhumi.alpha = 1
            }
        }
    }
}
