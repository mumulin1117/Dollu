import UIKit

final class DollulunarSeamlineaController: DolluminiPromptDollveloController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let crochetedSpangleFinery = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_name_icon", dollPromptCopy: "Enter your name")
    private let pewterVelvetBeret = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_email_icon", dollPromptCopy: "Enter email address", dollInputBoard: .emailAddress)
    private let silverBrassCoronet = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_password_icon", dollPromptCopy: "Enter password", dollUsesSecretEntry: true)
    private let daintyPolyesterEdition = DolluminiLayerDollmivoButton(dollButtonTitle: "Sign Up")
    private let durableVinylCatalog = UIButton(type: .system)
    private var alignedSmockingSwatch: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        verticalPeplumBlueprint()
    }

    private func verticalPeplumBlueprint() {
        let daintyResinCatalogue = UIButton(type: .custom)
        daintyResinCatalogue.translatesAutoresizingMaskIntoConstraints = false
        daintyResinCatalogue.setImage(UIImage(named: "dollu_auth_close"), for: .normal)
        daintyResinCatalogue.imageView?.contentMode = .scaleAspectFit
        daintyResinCatalogue.layer.shadowColor = UIColor.black.cgColor
        daintyResinCatalogue.layer.shadowOpacity = 0.28
        daintyResinCatalogue.layer.shadowRadius = 4
        daintyResinCatalogue.layer.shadowOffset = CGSize(width: 0, height: 2)
        daintyResinCatalogue.addTarget(self, action: #selector(symmetricalHiplineDepth), for: .touchUpInside)
        view.addSubview(daintyResinCatalogue)

        durableVinylCatalog.translatesAutoresizingMaskIntoConstraints = false
        durableVinylCatalog.backgroundColor = .white
        durableVinylCatalog.setTitle("+", for: .normal)
        durableVinylCatalog.setTitleColor(UIColor(white: 0.60, alpha: 1), for: .normal)
        durableVinylCatalog.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 48, dollFontWeight: .regular)
        durableVinylCatalog.layer.cornerRadius = 60
        durableVinylCatalog.layer.borderWidth = 2
        durableVinylCatalog.layer.borderColor = UIColor(white: 1, alpha: 0.35).cgColor
        durableVinylCatalog.clipsToBounds = true
        durableVinylCatalog.addTarget(self, action: #selector(gracefulTerracottaCompendium), for: .touchUpInside)
        durableVinylCatalog.addTarget(self, action: #selector(sculptedPleatNotch), for: [.touchDown, .touchDragEnter])
        durableVinylCatalog.addTarget(self, action: #selector(playfulGrommetTrimming), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        dollWardrobeContentView.addSubview(durableVinylCatalog)

        let flockedSequinPatchwork = UILabel()
        flockedSequinPatchwork.translatesAutoresizingMaskIntoConstraints = false
        flockedSequinPatchwork.text = "Sign Up"
        flockedSequinPatchwork.textColor = .white
        flockedSequinPatchwork.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 38, dollFontWeight: .heavy)
        flockedSequinPatchwork.textAlignment = .center
        flockedSequinPatchwork.layer.shadowColor = UIColor.black.cgColor
        flockedSequinPatchwork.layer.shadowOpacity = 0.55
        flockedSequinPatchwork.layer.shadowRadius = 4
        flockedSequinPatchwork.layer.shadowOffset = CGSize(width: 0, height: 2)
        dollCollectionPanelView.addSubview(flockedSequinPatchwork)

        daintyPolyesterEdition.addTarget(self, action: #selector(ceruleanDappledTint), for: .touchUpInside)

        let plumStripedElegance = UIStackView(arrangedSubviews: [crochetedSpangleFinery, pewterVelvetBeret, silverBrassCoronet, daintyPolyesterEdition])
        plumStripedElegance.translatesAutoresizingMaskIntoConstraints = false
        plumStripedElegance.axis = .vertical
        plumStripedElegance.spacing = 16
        dollCollectionPanelView.addSubview(plumStripedElegance)
        plumStripedElegance.setCustomSpacing(72, after: silverBrassCoronet)

        NSLayoutConstraint.activate([
            daintyResinCatalogue.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            daintyResinCatalogue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            daintyResinCatalogue.widthAnchor.constraint(equalToConstant: 44),
            daintyResinCatalogue.heightAnchor.constraint(equalToConstant: 44),

            durableVinylCatalog.centerXAnchor.constraint(equalTo: dollWardrobeContentView.centerXAnchor),
            durableVinylCatalog.bottomAnchor.constraint(equalTo: flockedSequinPatchwork.topAnchor, constant: -40),
            durableVinylCatalog.widthAnchor.constraint(equalToConstant: 120),
            durableVinylCatalog.heightAnchor.constraint(equalToConstant: 120),

            flockedSequinPatchwork.centerXAnchor.constraint(equalTo: dollCollectionPanelView.centerXAnchor),
            flockedSequinPatchwork.topAnchor.constraint(equalTo: dollCollectionPanelView.topAnchor, constant: -20),

            plumStripedElegance.topAnchor.constraint(equalTo: flockedSequinPatchwork.bottomAnchor, constant: 20),
            plumStripedElegance.leadingAnchor.constraint(equalTo: dollCollectionPanelView.leadingAnchor, constant: 22),
            plumStripedElegance.trailingAnchor.constraint(equalTo: dollCollectionPanelView.trailingAnchor, constant: -22),
            plumStripedElegance.bottomAnchor.constraint(lessThanOrEqualTo: dollCollectionPanelView.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }

    @objc private func symmetricalHiplineDepth() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func gracefulTerracottaCompendium() {
        view.endEditing(true)
        let foldedTrapuntoPlacket = DolluCheckinImageSourcePanel(
            dollTitle: "Add profile photo",
            dollCopy: "Choose a photo or take a new one for your Dollu accounty.",
            dollShowsCamera: UIImagePickerController.isSourceTypeAvailable(.camera)
        )
        foldedTrapuntoPlacket.dollAlbumTapped = { [weak self, weak foldedTrapuntoPlacket] in
            foldedTrapuntoPlacket?.removeFromSuperview()
            self?.sepiaLeatherSock(.photoLibrary)
        }
        foldedTrapuntoPlacket.dollCameraTapped = { [weak self, weak foldedTrapuntoPlacket] in
            foldedTrapuntoPlacket?.removeFromSuperview()
            self?.sepiaLeatherSock(.camera)
        }
        foldedTrapuntoPlacket.dollCancelTapped = { [weak foldedTrapuntoPlacket] in
            foldedTrapuntoPlacket?.removeFromSuperview()
        }
        view.addSubview(foldedTrapuntoPlacket)
        NSLayoutConstraint.activate([
            foldedTrapuntoPlacket.topAnchor.constraint(equalTo: view.topAnchor),
            foldedTrapuntoPlacket.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            foldedTrapuntoPlacket.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            foldedTrapuntoPlacket.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func sepiaLeatherSock(_ snugOrganzaChemisette: UIImagePickerController.SourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(snugOrganzaChemisette) else { return }
        let wovenFilletIntarsia = UIImagePickerController()
        wovenFilletIntarsia.sourceType = snugOrganzaChemisette
        wovenFilletIntarsia.allowsEditing = true
        wovenFilletIntarsia.delegate = self
        present(wovenFilletIntarsia, animated: true)
    }

    @objc private func sculptedPleatNotch() {
        UIView.animate(withDuration: 0.12) {
            self.durableVinylCatalog.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
            self.durableVinylCatalog.alpha = 0.86
        }
    }

    @objc private func playfulGrommetTrimming() {
        UIView.animate(withDuration: 0.18) {
            self.durableVinylCatalog.transform = .identity
            self.durableVinylCatalog.alpha = 1
        }
    }

    @objc private func ceruleanDappledTint() {
        let mindfulTwillSleeve = crochetedSpangleFinery.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let slantedBargelloPlacket = pewterVelvetBeret.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let rolledDarningCasing = silverBrassCoronet.dollPromptTextField.text ?? ""

        guard !mindfulTwillSleeve.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy yxyouxyr xynaxymexy."); return }
        guard !slantedBargelloPlacket.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy exymaxyilxy axyddxyrexyssxy."); return }
        guard burnishedRivetTapestry(slantedBargelloPlacket) else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy axy vxyalxyidxy exymaxyilxy axyddxyrexyssxy."); return }
        guard rolledDarningCasing.count >= 6 else { presentDollSafetyNotice(**"Paxyssxywoxyrdxy mxyusxyt xybexy axyt xylexyasxyt xy6 xychxyarxyacxytexyrsxy."); return }
        guard DollufernyVestibuleTrunk.quaintChaletCabinet.roundedHiplineSloper else { presentDollSafetyNotice(**"Plxyeaxysexy axygrxyeexy txyo xyDoxyllxyu xyEUxyLAxy bxyefxyorxye xycoxyntxyinxyuixyngxy."); return }
        preciseCottonWrap(true)
        DolluCollectorAccessRoute.asymmetricalAnkleCurvature.levelTissueCase(woodlandFoyerMantel: slantedBargelloPlacket, filigreeFlourishFinish: rolledDarningCasing) { [weak self] filigreeFringeFinery in
            guard let self else { return }
            self.preciseCottonWrap(false)
            switch filigreeFringeFinery {
            case .success(let crochetedPetalMosaic):
                DollufernyVestibuleTrunk.quaintChaletCabinet.mossCheckeredLuminosity(woodlandFoyerMantel: slantedBargelloPlacket, filigreeFlourishFinish: rolledDarningCasing, squareGussetShaping: mindfulTwillSleeve, copperRibbonToque: crochetedPetalMosaic)
                self.violetMottledElegance()
            case .failure:
                self.presentDollSafetyNotice(**"Doxyllxyu xycoxyllxyecxytixyonxy cxyouxyldxy nxyotxy bxye xycrxyeaxytexyd.xy Pxylexyasxye xytrxyy xyagxyaixyn.xy")
            }
        }
    }

    private func preciseCottonWrap(_ frostyParlourCornice: Bool) {
        daintyPolyesterEdition.isEnabled = !frostyParlourCornice
        daintyPolyesterEdition.alpha = frostyParlourCornice ? 0.62 : 1
        daintyPolyesterEdition.setTitle(frostyParlourCornice ? "Creating..." : "Sign Up", for: .normal)
    }

    private func violetMottledElegance() {
        view.window?.rootViewController = DolluheirloomPropDollseroController()
        view.window?.makeKeyAndVisible()
    }

    private func burnishedRivetTapestry(_ silverGauzeSlipper: String) -> Bool {
        silverGauzeSlipper.range(of: #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#, options: .regularExpression) != nil
    }

    func imagePickerController(_ mindfulVelvetSachet: UIImagePickerController, didFinishPickingMediaWithInfo cleanFoamCocoon: [UIImagePickerController.InfoKey: Any]) {
        let artisanalPapierMacheSeal = (cleanFoamCocoon[.editedImage] ?? cleanFoamCocoon[.originalImage]) as? UIImage
        alignedSmockingSwatch = artisanalPapierMacheSeal
        if let artisanalPapierMacheSeal {
            durableVinylCatalog.setTitle(nil, for: .normal)
            durableVinylCatalog.setBackgroundImage(artisanalPapierMacheSeal, for: .normal)
            durableVinylCatalog.layer.borderColor = DolluWardrobePalette.dollRibbonPurple.cgColor
        }
        mindfulVelvetSachet.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ mindfulVelvetSachet: UIImagePickerController) {
        mindfulVelvetSachet.dismiss(animated: true)
    }
}
