import UIKit

/// 登录入口与远程页面共用同一背景和控件布局，衔接时只切换加载状态。
@MainActor
final class DolluCozyBackgroundDollnoro: UIView {
    let velvetSockDollhumi = UIButton(type: .system)
    private let cozyBackgroundDollnoro = UIImageView()
    private let velvetTagsetDollcavo = UIActivityIndicatorView(style: .large)
    private let velvetRuffleDollsovo = UILabel()
    private let pastelEnsembleDollfina = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 4 / 255, green: 3 / 255, blue: 19 / 255, alpha: 1)
        cozyBackgroundDollnoro.contentMode = .scaleAspectFill
        cozyBackgroundDollnoro.clipsToBounds = true
        cozyBackgroundDollnoro.translatesAutoresizingMaskIntoConstraints = false
        addSubview(cozyBackgroundDollnoro)

        let pastelCatalogDollvani = UIImageView(image: UIImage(named: "nordicond"))
        pastelCatalogDollvani.contentMode = .scaleAspectFit
        velvetTagsetDollcavo.color = .white
        velvetTagsetDollcavo.hidesWhenStopped = true
        velvetRuffleDollsovo.textColor = .white
        velvetRuffleDollsovo.font = .systemFont(ofSize: 15)
        velvetRuffleDollsovo.textAlignment = .center
        velvetRuffleDollsovo.numberOfLines = 0
        velvetSockDollhumi.setTitle("Log In", for: .normal)
        velvetSockDollhumi.setTitleColor(.white, for: .normal)
        velvetSockDollhumi.setTitleColor(UIColor.white.withAlphaComponent(0.65), for: .disabled)
        velvetSockDollhumi.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        velvetSockDollhumi.backgroundColor = UIColor(red: 0.48, green: 0.25, blue: 0.90, alpha: 1)
        velvetSockDollhumi.layer.cornerRadius = 16
        [pastelCatalogDollvani, velvetTagsetDollcavo, velvetRuffleDollsovo, velvetSockDollhumi].forEach {
            pastelEnsembleDollfina.addArrangedSubview($0)
        }
        pastelEnsembleDollfina.axis = .vertical
        pastelEnsembleDollfina.alignment = .center
        pastelEnsembleDollfina.spacing = 16
        pastelEnsembleDollfina.translatesAutoresizingMaskIntoConstraints = false
        addSubview(pastelEnsembleDollfina)
        let pastelTrimsheetDollvelo = velvetSockDollhumi.heightAnchor.constraint(equalToConstant: 52)
        pastelTrimsheetDollvelo.priority = UILayoutPriority(999)
        NSLayoutConstraint.activate([
            cozyBackgroundDollnoro.topAnchor.constraint(equalTo: topAnchor),
            cozyBackgroundDollnoro.bottomAnchor.constraint(equalTo: bottomAnchor),
            cozyBackgroundDollnoro.leadingAnchor.constraint(equalTo: leadingAnchor),
            cozyBackgroundDollnoro.trailingAnchor.constraint(equalTo: trailingAnchor),
            pastelEnsembleDollfina.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 32),
            pastelEnsembleDollfina.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -32),
            pastelEnsembleDollfina.topAnchor.constraint(greaterThanOrEqualTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            pastelEnsembleDollfina.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -80),
            pastelCatalogDollvani.heightAnchor.constraint(equalToConstant: 90),
            pastelCatalogDollvani.widthAnchor.constraint(equalToConstant: 90),
            velvetRuffleDollsovo.widthAnchor.constraint(equalTo: pastelEnsembleDollfina.widthAnchor),
            velvetSockDollhumi.widthAnchor.constraint(equalTo: pastelEnsembleDollfina.widthAnchor),
            pastelTrimsheetDollvelo
        ])
    }

    required init?(coder: NSCoder) { nil }

    /// 第一个参数表示已确认 B 面，第二个参数表示来自登录按钮。
    func cozyArchiveDollniva(_ pastelPropDolllumi: Bool, cozyStandDollyara: Bool) {
        cozyBackgroundDollnoro.image = UIImage(named: pastelPropDolllumi ? "lacePromptDollkora" : "dollualungch")
        pastelEnsembleDollfina.isHidden = !pastelPropDolllumi
        velvetSockDollhumi.isHidden = !cozyStandDollyara
    }

    func velvetPoseDollsero(_ velvetStitchmapDollmexa: Bool, cozyMemoDolllaro: String? = nil) {
        velvetSockDollhumi.isEnabled = !velvetStitchmapDollmexa
        velvetSockDollhumi.alpha = velvetStitchmapDollmexa ? 0.55 : 1
        velvetRuffleDollsovo.text = cozyMemoDolllaro ?? (velvetStitchmapDollmexa ? "Connecting…" : nil)
        if velvetStitchmapDollmexa { velvetTagsetDollcavo.startAnimating() }
        else { velvetTagsetDollcavo.stopAnimating() }
    }
}
