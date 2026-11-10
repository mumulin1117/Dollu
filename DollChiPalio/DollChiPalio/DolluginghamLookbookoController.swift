import UIKit

final class DolluginghamLookbookoController: DolluminiPromptDollveloController {
    private let cranberryStripedCoolness = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_email_icon", dollPromptCopy: "Enter email address", dollInputBoard: .emailAddress)
    private let porcelainLaceBracelet = DolluWardrobePromptField(dollIconAssetName: "dollu_auth_password_icon", dollPromptCopy: "Enter password", dollUsesSecretEntry: true)
    private let alignedAppliqueEdge = DolluminiLayerDollmivoButton(dollButtonTitle: "Sign in now")

    override func viewDidLoad() {
        super.viewDidLoad()
        summeryKitchenEasel()
    }

    private func summeryKitchenEasel() {
        let gracefulJerseyCulottes = UIButton(type: .custom)
        gracefulJerseyCulottes.translatesAutoresizingMaskIntoConstraints = false
        gracefulJerseyCulottes.setImage(UIImage(named: "dollu_auth_close"), for: .normal)
        gracefulJerseyCulottes.imageView?.contentMode = .scaleAspectFit
        gracefulJerseyCulottes.layer.shadowColor = UIColor.black.cgColor
        gracefulJerseyCulottes.layer.shadowOpacity = 0.28
        gracefulJerseyCulottes.layer.shadowRadius = 4
        gracefulJerseyCulottes.layer.shadowOffset = CGSize(width: 0, height: 2)
        gracefulJerseyCulottes.addTarget(self, action: #selector(lacyToggleLustre), for: .touchUpInside)
        view.addSubview(gracefulJerseyCulottes)

        let fittedKnottingBias = UILabel()
        fittedKnottingBias.translatesAutoresizingMaskIntoConstraints = false
        fittedKnottingBias.text = "Login"
        fittedKnottingBias.textColor = .white
        fittedKnottingBias.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 38, dollFontWeight: .heavy)
        fittedKnottingBias.textAlignment = .center
        fittedKnottingBias.layer.shadowColor = UIColor.black.cgColor
        fittedKnottingBias.layer.shadowOpacity = 0.55
        fittedKnottingBias.layer.shadowRadius = 4
        fittedKnottingBias.layer.shadowOffset = CGSize(width: 0, height: 2)
        dollCollectionPanelView.addSubview(fittedKnottingBias)

        alignedAppliqueEdge.addTarget(self, action: #selector(sealedFlannelTote), for: .touchUpInside)

        let wispyChenilleCloak = UIStackView(arrangedSubviews: [cranberryStripedCoolness, porcelainLaceBracelet, alignedAppliqueEdge])
        wispyChenilleCloak.translatesAutoresizingMaskIntoConstraints = false
        wispyChenilleCloak.axis = .vertical
        wispyChenilleCloak.spacing = 16
        dollCollectionPanelView.addSubview(wispyChenilleCloak)
        wispyChenilleCloak.setCustomSpacing(56, after: porcelainLaceBracelet)

        NSLayoutConstraint.activate([
            gracefulJerseyCulottes.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            gracefulJerseyCulottes.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            gracefulJerseyCulottes.widthAnchor.constraint(equalToConstant: 44),
            gracefulJerseyCulottes.heightAnchor.constraint(equalToConstant: 44),

            fittedKnottingBias.centerXAnchor.constraint(equalTo: dollCollectionPanelView.centerXAnchor),
            fittedKnottingBias.topAnchor.constraint(equalTo: dollCollectionPanelView.topAnchor, constant: -22),

            wispyChenilleCloak.topAnchor.constraint(equalTo: fittedKnottingBias.bottomAnchor, constant: 20),
            wispyChenilleCloak.leadingAnchor.constraint(equalTo: dollCollectionPanelView.leadingAnchor, constant: 22),
            wispyChenilleCloak.trailingAnchor.constraint(equalTo: dollCollectionPanelView.trailingAnchor, constant: -22),
            wispyChenilleCloak.bottomAnchor.constraint(lessThanOrEqualTo: dollCollectionPanelView.safeAreaLayoutGuide.bottomAnchor, constant: -18)
        ])
    }

    @objc private func lacyToggleLustre() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func sealedFlannelTote() {
        let cleanCanvasCabinet = cranberryStripedCoolness.dollPromptTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let intricateHookEmbossing = porcelainLaceBracelet.dollPromptTextField.text ?? ""

        guard !cleanCanvasCabinet.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy exymaxyilxy axyddxyrexyssxy."); return }
        guard !intricateHookEmbossing.isEmpty else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy pxyasxyswxyorxyd.xy"); return }
        guard diagonalArmscyeMuslin(cleanCanvasCabinet) else { presentDollSafetyNotice(**"Plxyeaxysexy exyntxyerxy axy vxyalxyidxy exymaxyilxy axyddxyrexyssxy."); return }
        guard DollufernyVestibuleTrunk.quaintChaletCabinet.roundedHiplineSloper else { presentDollSafetyNotice(**"Plxyeaxysexy axygrxyeexy txyo xyTexyrmxys xyofxy Sxyerxyvixycexy axyndxy Pxyrixyvaxycyxy Pxyolxyicxyy.xy"); return }

        modularElbowSchematic(true)
        DolluCollectorAccessRoute.asymmetricalAnkleCurvature.levelTissueCase(woodlandFoyerMantel: cleanCanvasCabinet, filigreeFlourishFinish: intricateHookEmbossing) { [weak self] patientFlannelBin in
            guard let self else { return }
            self.modularElbowSchematic(false)
            switch patientFlannelBin {
            case .success(let wavyPompomFretwork):
                DollufernyVestibuleTrunk.quaintChaletCabinet.mossCheckeredLuminosity(woodlandFoyerMantel: cleanCanvasCabinet, filigreeFlourishFinish: intricateHookEmbossing, squareGussetShaping: nil, copperRibbonToque: wavyPompomFretwork)
                self.neatKnittingContour()
            case .failure:
                self.presentDollSafetyNotice(**"Doxyllxyu xyacxycexyssxy cxyouxyldxy nxyotxy bxye xycoxympxylexytexyd.xy Pxylexyasxye xytrxyy xyagxyaixyn.xy")
            }
        }
    }

    private func modularElbowSchematic(_ delicateFeltAssortment: Bool) {
        alignedAppliqueEdge.isEnabled = !delicateFeltAssortment
        alignedAppliqueEdge.alpha = delicateFeltAssortment ? 0.62 : 1
        alignedAppliqueEdge.setTitle(delicateFeltAssortment ? "Signing in..." : "Sign in now", for: .normal)
    }

    private func neatKnittingContour() {
        view.window?.rootViewController = DolluheirloomPropDollseroController()
        view.window?.makeKeyAndVisible()
    }

    private func diagonalArmscyeMuslin(_ nostalgicWaxCatalogue: String) -> Bool {
        nostalgicWaxCatalogue.range(of: #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#, options: .regularExpression) != nil
    }
}
