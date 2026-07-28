import UIKit

final class DolluEulaSheetViewController: UIViewController {
    var dollGuideAccepted: (() -> Void)?

    private let dollGuideCardView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollGuideSheet()
    }

    private func buildDollGuideSheet() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.58)

        dollGuideCardView.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCardView.backgroundColor = UIColor(red: 0.04, green: 0.03, blue: 0.12, alpha: 1)
        dollGuideCardView.layer.cornerRadius = 18
        dollGuideCardView.layer.shadowColor = UIColor.black.cgColor
        dollGuideCardView.layer.shadowOpacity = 0.35
        dollGuideCardView.layer.shadowRadius = 16
        dollGuideCardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.addSubview(dollGuideCardView)

        let dollGuideTitleLabel = UILabel()
        dollGuideTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollGuideTitleLabel.text = **"EUxyLAxy"
        dollGuideTitleLabel.textColor = .white
        dollGuideTitleLabel.textAlignment = .center
        dollGuideTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 18, dollFontWeight: .heavy)

        let dollGuideCopyView = UITextView()
        dollGuideCopyView.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCopyView.backgroundColor = .clear
        dollGuideCopyView.textColor = UIColor(white: 1, alpha: 0.86)
        dollGuideCopyView.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 13, dollFontWeight: .regular)
        dollGuideCopyView.text = dollGuidePolicyCopy
        dollGuideCopyView.isEditable = false
        dollGuideCopyView.showsVerticalScrollIndicator = true
        dollGuideCopyView.textContainerInset = .zero
        dollGuideCopyView.textContainer.lineFragmentPadding = 0

        let dollGuideCancelButton = UIButton(type: .system)
        dollGuideCancelButton.translatesAutoresizingMaskIntoConstraints = false
        dollGuideCancelButton.setTitle(**"Caxyncxyelxy", for: .normal)
        dollGuideCancelButton.setTitleColor(UIColor(white: 1, alpha: 0.78), for: .normal)
        dollGuideCancelButton.titleLabel?.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .bold)
        dollGuideCancelButton.backgroundColor = UIColor(white: 1, alpha: 0.10)
        dollGuideCancelButton.layer.cornerRadius = 23
        dollGuideCancelButton.addTarget(self, action: #selector(dismissDollGuideSheet), for: .touchUpInside)

        let dollGuideAgreeButton = DolluRibbonActionButton(dollButtonTitle: **"Agxyrexye")
        dollGuideAgreeButton.addTarget(self, action: #selector(acceptDollGuideSheet), for: .touchUpInside)

        let dollGuideActionRow = UIStackView(arrangedSubviews: [dollGuideCancelButton, dollGuideAgreeButton])
        dollGuideActionRow.translatesAutoresizingMaskIntoConstraints = false
        dollGuideActionRow.axis = .horizontal
        dollGuideActionRow.spacing = 16
        dollGuideActionRow.distribution = .fillEqually

        dollGuideCardView.addSubview(dollGuideTitleLabel)
        dollGuideCardView.addSubview(dollGuideCopyView)
        dollGuideCardView.addSubview(dollGuideActionRow)

        NSLayoutConstraint.activate([
            dollGuideCardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dollGuideCardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dollGuideCardView.widthAnchor.constraint(equalToConstant: 324),
            dollGuideCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            dollGuideCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            dollGuideCardView.heightAnchor.constraint(equalToConstant: 491),

            dollGuideTitleLabel.topAnchor.constraint(equalTo: dollGuideCardView.topAnchor, constant: 28),
            dollGuideTitleLabel.leadingAnchor.constraint(equalTo: dollGuideCardView.leadingAnchor, constant: 24),
            dollGuideTitleLabel.trailingAnchor.constraint(equalTo: dollGuideCardView.trailingAnchor, constant: -24),

            dollGuideCopyView.topAnchor.constraint(equalTo: dollGuideTitleLabel.bottomAnchor, constant: 22),
            dollGuideCopyView.leadingAnchor.constraint(equalTo: dollGuideCardView.leadingAnchor, constant: 20),
            dollGuideCopyView.trailingAnchor.constraint(equalTo: dollGuideCardView.trailingAnchor, constant: -20),
            dollGuideCopyView.heightAnchor.constraint(lessThanOrEqualToConstant: 280),

            dollGuideActionRow.topAnchor.constraint(equalTo: dollGuideCopyView.bottomAnchor, constant: 22),
            dollGuideActionRow.leadingAnchor.constraint(equalTo: dollGuideCardView.leadingAnchor, constant: 20),
            dollGuideActionRow.trailingAnchor.constraint(equalTo: dollGuideCardView.trailingAnchor, constant: -20),
            dollGuideActionRow.bottomAnchor.constraint(equalTo: dollGuideCardView.bottomAnchor, constant: -22),
            dollGuideCancelButton.heightAnchor.constraint(equalToConstant: 46),
            dollGuideAgreeButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }

    @objc private func dismissDollGuideSheet() {
        dismiss(animated: true)
    }

    @objc private func acceptDollGuideSheet() {
        DolluWardrobeArchiveStore.satinCollectionArchive.setDollGuideAccepted(true)
        dollGuideAccepted?()
        dismiss(animated: true)
    }

    private var dollGuidePolicyCopy: String {
        [
            **"Wexylcxyomxye xytoxy Dxyolxyluxy. xyDoxyllxyu xyisxy axy cxyrexyatxyivxye xycoxyllxyecxytoxyr xyspxyacxye xyfoxyr xystxyylxyinxyg xydoxyllxys,xy sxyavxyinxyg xyouxytfxyitxy ixydexyasxy, xyorxygaxynixyzixyngxy cxyolxylexyctxyioxyn xynoxytexys,xy rxyecxyorxydixyngxy pxyhoxytoxys xyorxy sxyhoxyrtxy vxyidxyeoxys xyofxy dxyolxyl xyloxyokxys,xy axyndxy sxyhaxyrixyngxy hxyobxybyxy ixynsxypixyraxytixyonxy wxyitxyh xyrexyspxyecxytfxyulxy dxyolxyl xyfaxynsxy.",
            **"Imxypoxyrtxyanxyt xysexyrvxyicxye xyboxyunxydaxyryxy: xyDoxyllxyu xyisxy nxyotxy axy rxyanxydoxym,xy axynoxynyxymoxyusxy, xyadxyulxyt,xy oxyr xysuxyggxyesxytixyvexy cxyhaxyt xysexyrvxyicxye.xy Dxyolxyluxy ixys xybuxyilxyt xyfoxyr xylaxywfxyulxy dxyolxyl xystxyylxyinxyg,xy cxyolxylexyctxyioxyn xyrexycoxyrdxys,xy oxyutxyfixyt xyshxyowxycaxysexys,xy txyopxyicxy-bxyasxyedxy dxyisxycuxyssxyioxyn,xy rxyeaxyctxyioxynsxy, xyanxyd xyAIxy Cxyolxylexyctxyorxy sxyugxygexystxyioxynsxy rxyelxyatxyedxy txyo xydoxyllxy oxyutxyfixytsxy, xyacxycexyssxyorxyiexys,xy txyrexyndxy ixydexyasxy, xyanxyd xysixympxylexy oxyrgxyanxyizxyatxyioxyn xynoxytexys.xy",
            **"Acxycoxyunxyt xyelxyigxyibxyilxyitxyy:xy yxyouxy mxyayxy cxyrexyatxye xyanxyd xyusxye xyanxy axyccxyouxyntxy oxynlxyy xyifxy yxyouxy mxyeexyt xythxye xylaxywfxyulxy axygexy axyndxy lxyocxyalxy exylixygixybixylixytyxy rxyeqxyuixyrexymexyntxys xyinxy yxyouxyr xyrexygixyonxy. xyYoxyu xymuxystxy pxyroxyvixydexy axyccxyurxyatxye xyrexygixystxyraxytixyonxy ixynfxyorxymaxytixyonxy, xykexyepxy yxyouxyr xyacxycoxyunxyt xyunxydexyr xyyoxyurxy oxywnxy cxyonxytrxyolxy, xyanxyd xynoxyt xyimxypexyrsxyonxyatxye xyanxyotxyhexyr xypexyrsxyonxy oxyr xyusxye xyDoxyllxyu xytoxy mxyisxyrexyprxyesxyenxyt xyidxyenxytixytyxy, xyowxynexyrsxyhixyp,xy oxyr xycoxyllxyecxytixyonxy cxyonxytexyntxy.",
            **"Coxymmxyunxyitxyy xycoxyndxyucxyt:xy uxysexy Dxyolxyluxy txyo xydoxycuxymexyntxy dxyolxyl xyloxyokxys,xy axyccxyesxysoxyryxy mxyatxychxyinxyg,xy sxyeaxysoxynaxyl xystxyylxyinxyg xyidxyeaxys,xy cxyolxylexyctxyioxyn xyprxyogxyrexyssxy, xyanxyd xyrexyspxyecxytfxyulxy fxyeexydbxyacxyk.xy Dxyo xynoxyt xyhaxyraxyssxy, xythxyrexyatxyenxy, xyshxyamxye,xy exyxpxyloxyitxy, xydexycexyivxye,xy sxypaxym,xy oxyr xyprxyesxysuxyrexy oxythxyerxy uxysexyrsxy. xyDoxy nxyotxy uxyplxyoaxyd xycoxyntxyenxyt xythxyatxy vxyioxylaxytexys xyanxyotxyhexyr xypexyrsxyonxy'sxy rxyigxyhtxys,xy pxyrixyvaxycyxy, xyorxy lxyocxyalxy lxyawxy.",
            **"Stxyrixyctxy cxyonxytexyntxy rxyulxyesxy: xycoxyntxyenxyt xyinxyvoxylvxyinxyg xyhaxyrmxy txyo xymixynoxyrsxy, xysexyxuxyalxy oxyr xyadxyulxyt xymaxytexyrixyalxy, xysuxyggxyesxytixyvexy exyxpxyloxyitxyatxyioxyn,xy gxyraxyphxyicxy vxyioxylexyncxye,xy hxyatxyefxyulxy cxyonxyduxyctxy, xybuxyllxyyixyngxy, xyilxylexygaxyl xyacxytixyvixytyxy, xyfrxyauxyd,xy ixympxyerxysoxynaxytixyonxy, xymaxylixycixyouxys xylixynkxys,xy oxyr xyatxytexympxytsxy txyo xybyxypaxyssxy mxyodxyerxyatxyioxyn xyisxy nxyotxy axyllxyowxyedxy. xyDoxyllxyu xymaxyy xyrexystxyrixyctxy, xyhixydexy, xyrexymoxyvexy, xyorxy rxyefxyusxye xyanxyy xycoxyntxyenxyt xythxyatxy cxyonxyflxyicxytsxy wxyitxyh xythxyesxye xyruxylexys.xy",
            **"AIxy Cxyolxylexyctxyorxy nxyotxyicxye:xy AxyI xyCoxyllxyecxytoxyr xyfexyatxyurxyesxy axyrexy ixyntxyenxydexyd xyonxylyxy txyo xysuxyppxyorxyt xydoxyllxy oxyutxyfixyt xyprxyomxyptxys,xy sxytyxylixyngxy sxyugxygexystxyioxynsxy, xytrxyenxyd xyidxyeaxys,xy axyndxy cxyolxylexyctxyioxyn xyorxygaxynixyzaxytixyonxy. xyAIxy oxyutxypuxyt xymaxyy xybexy ixyncxyomxyplxyetxye xyorxy ixynaxyccxyurxyatxye.xy Yxyouxy rxyemxyaixyn xyrexyspxyonxysixyblxye xyfoxyr xyrexyvixyewxyinxyg xysuxyggxyesxytixyonxys xybexyfoxyrexy uxysixyngxy oxyr xyshxyarxyinxyg xythxyemxy.",
            **"Saxyfexytyxy txyooxylsxy axyndxy rxyevxyiexyw:xy Dxyolxyluxy pxyroxyvixydexys xyrexypoxyrtxyinxyg xyanxyd xyblxyocxykixyngxy txyooxylsxy txyo xyhexylpxy kxyeexyp xythxye xycoxymmxyunxyitxyy xycoxymfxyorxytaxyblxye xyanxyd xyfoxycuxysexyd xyonxy txyhexy hxyobxybyxy. xyRexypoxyrtxyedxy axyccxyouxyntxys,xy pxyosxytsxy, xycoxymmxyenxytsxy, xyphxyotxyosxy, xyvixydexyosxy, xyanxyd xyprxyofxyilxye xydexytaxyilxys xymaxyy xybexy rxyevxyiexywexyd.xy Sxyerxyioxyusxy oxyr xyrexypexyatxyedxy vxyioxylaxytixyonxys xymaxyy xylexyadxy txyo xycoxyntxyenxyt xyrexymoxyvaxyl,xy fxyeaxytuxyrexy lxyimxyitxys,xy axyccxyouxyntxy sxyusxypexynsxyioxyn,xy pxyerxymaxynexyntxy bxyanxy, xyorxy oxythxyerxy pxyroxytexyctxyivxye xymexyasxyurxyesxy.",
            **"Prxyivxyacxyy xyanxyd xyloxycaxyl xydaxytaxy: xyDoxyllxyu xymaxyy xystxyorxye xyacxycoxyunxyt xyanxyd xyacxycexyptxyanxycexy sxytaxytuxys xyloxycaxyllxyy xyonxy txyhixys xydexyvixycexy axyndxy uxysexy sxyubxymixyttxyedxy cxyonxytexyntxy oxynlxyy xyasxy dxyesxycrxyibxyedxy ixyn xythxye xyPrxyivxyacxyy xyPoxylixycyxy. xyDoxy nxyotxy sxyhaxyrexy sxyenxysixytixyvexy pxyerxysoxynaxyl xyinxyfoxyrmxyatxyioxyn xyinxy pxyubxylixyc xycoxyllxyecxytixyonxy pxyosxytsxy oxyr xycoxymmxyenxytsxy.",
            **"Byxy txyapxypixyngxy Axygrxyeexy, xyyoxyu xycoxynfxyirxym xythxyatxy yxyouxy hxyavxye xyrexyadxy txyhixys xyEUxyLAxy, xyunxydexyrsxytaxyndxy txyhexy Txyerxymsxy oxyf xySexyrvxyicxye xyanxyd xyPrxyivxyacxyy xyPoxylixycyxy, xymexyetxy txyhexy axyccxyouxyntxy rxyeqxyuixyrexymexyntxys,xy axyndxy wxyilxyl xyusxye xyDoxyllxyu xyonxylyxy fxyorxy lxyawxyfuxyl xydoxyllxy sxytyxylixyngxy, xycoxyllxyecxytixyonxy rxyecxyorxydsxy, xyAIxy-axyssxyisxytexyd xyorxygaxynixyzaxytixyonxy, xyanxyd xyrexyspxyecxytfxyulxy cxyomxymuxynixytyxy sxyhaxyrixyngxy."
        ].joined(separator: **"\n\nxy")
    }
}
