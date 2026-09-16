import UIKit

final class DollucalmNoteDollsovoView: UIView {
    private let satinPinboardDollvani = UIStackView()
    private let moonlitPaletteDollukp = CAGradientLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = false
        backgroundColor = UIColor(red: 0.05, green: 0.04, blue: 0.12, alpha: 0.94)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.axis = .vertical
        satinPinboardDollvani.spacing = 18
        addSubview(satinPinboardDollvani)

        let cottonFrameDollukp = makeDollSatinPinboardDollvani(satinCoatDollbop: 18)
        satinPinboardDollvani.addArrangedSubview(cottonFrameDollukp)

        for _ in 0..<3 {
            let ribbonDisplayDollrevo = UIStackView()
            ribbonDisplayDollrevo.axis = .horizontal
            ribbonDisplayDollrevo.alignment = .center
            ribbonDisplayDollrevo.spacing = 18
            let tinyCoverDollmexa = makeDollSatinPinboardDollvani(satinCoatDollbop: 16)
            let velvetTagsetDollcavo = UIStackView()
            velvetTagsetDollcavo.axis = .vertical
            velvetTagsetDollcavo.spacing = 12
            velvetTagsetDollcavo.addArrangedSubview(makeDollSatinPinboardDollvani(satinCoatDollbop: 7))
            velvetTagsetDollcavo.addArrangedSubview(makeDollSatinPinboardDollvani(satinCoatDollbop: 7))
            ribbonDisplayDollrevo.addArrangedSubview(tinyCoverDollmexa)
            ribbonDisplayDollrevo.addArrangedSubview(velvetTagsetDollcavo)
            satinPinboardDollvani.addArrangedSubview(ribbonDisplayDollrevo)
            NSLayoutConstraint.activate([
                ribbonDisplayDollrevo.heightAnchor.constraint(equalToConstant: 104),
                tinyCoverDollmexa.widthAnchor.constraint(equalToConstant: 92),
                velvetTagsetDollcavo.widthAnchor.constraint(greaterThanOrEqualToConstant: 150)
            ])
        }

        NSLayoutConstraint.activate([
            satinPinboardDollvani.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            cottonFrameDollukp.heightAnchor.constraint(equalToConstant: 148)
        ])

        moonlitPaletteDollukp.colors = [
            UIColor.clear.cgColor,
            UIColor.white.withAlphaComponent(0.22).cgColor,
            UIColor.clear.cgColor
        ]
        moonlitPaletteDollukp.locations = [0, 0.5, 1]
        moonlitPaletteDollukp.startPoint = CGPoint(x: 0, y: 0.5)
        moonlitPaletteDollukp.endPoint = CGPoint(x: 1, y: 0.5)
        layer.addSublayer(moonlitPaletteDollukp)
        isHidden = true
    }

    required init?(coder: NSCoder) { nil }

    override func layoutSubviews() {
        super.layoutSubviews()
        moonlitPaletteDollukp.frame = CGRect(x: -bounds.width, y: 0, width: bounds.width, height: bounds.height)
        if !isHidden, bounds.width > 0, moonlitPaletteDollukp.animation(forKey: "satinPinboardDollvani") == nil {
            applyDollLoading()
        }
    }

    func applyDollLoading() {
        isHidden = false
        guard bounds.width > 0 else {
            setNeedsLayout()
            return
        }
        moonlitPaletteDollukp.removeAnimation(forKey: "satinPinboardDollvani")
        let dreamySnapshotDollniva = CABasicAnimation(keyPath: "transform.translation.x")
        dreamySnapshotDollniva.fromValue = -bounds.width
        dreamySnapshotDollniva.toValue = bounds.width * 2
        dreamySnapshotDollniva.duration = 1.15
        dreamySnapshotDollniva.repeatCount = .infinity
        dreamySnapshotDollniva.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        moonlitPaletteDollukp.add(dreamySnapshotDollniva, forKey: "satinPinboardDollvani")
    }

    func stopDollLoading() {
        moonlitPaletteDollukp.removeAnimation(forKey: "satinPinboardDollvani")
        isHidden = true
    }

    private func makeDollSatinPinboardDollvani(satinCoatDollbop: CGFloat) -> UIView {
        let satinPinboardDollvani = UIView()
        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.backgroundColor = UIColor(red: 0.16, green: 0.14, blue: 0.31, alpha: 1)
        satinPinboardDollvani.layer.cornerRadius = satinCoatDollbop
        return satinPinboardDollvani
    }
}
