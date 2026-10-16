import UIKit

final class DolluHtrimmedGuideDollnexadropView: UIView {
    private let moonlitPaletteDollukp = CAGradientLayer()
    private let ribbonlineDollLayer = CAShapeLayer()
    private let emeraldDollLayer = CAShapeLayer()
    private let indigoDollLayer = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = false
        moonlitPaletteDollukp.colors = [
            UIColor(red: 0.04, green: 0.04, blue: 0.11, alpha: 1).cgColor,
            UIColor(red: 0.08, green: 0.05, blue: 0.18, alpha: 1).cgColor,
            UIColor(red: 0.17, green: 0.08, blue: 0.35, alpha: 1).cgColor
        ]
        moonlitPaletteDollukp.startPoint = CGPoint(x: 0, y: 0)
        moonlitPaletteDollukp.endPoint = CGPoint(x: 1, y: 1)
        layer.addSublayer(moonlitPaletteDollukp)

        configureRibbonLayer(ribbonlineDollLayer, color: UIColor(red: 0.94, green: 0.62, blue: 0.08, alpha: 0.58))
        configureRibbonLayer(emeraldDollLayer, color: UIColor(red: 0.11, green: 0.72, blue: 0.60, alpha: 0.50))
        configureRibbonLayer(indigoDollLayer, color: UIColor(red: 0.18, green: 0.36, blue: 0.95, alpha: 0.60))
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        moonlitPaletteDollukp.frame = bounds
        ribbonlineDollLayer.path = makeRibbonPath(offset: 0).cgPath
        emeraldDollLayer.path = makeRibbonPath(offset: 34).cgPath
        indigoDollLayer.path = makeRibbonPath(offset: 68).cgPath
    }

    private func configureRibbonLayer(_ dollLayer: CAShapeLayer, color: UIColor) {
        dollLayer.fillColor = UIColor.clear.cgColor
        dollLayer.strokeColor = color.cgColor
        dollLayer.lineWidth = 2
        dollLayer.lineCap = .round
        layer.addSublayer(dollLayer)
    }

    private func makeRibbonPath(offset: CGFloat) -> UIBezierPath {
        let dollWidth = max(bounds.width, 1)
        let dollPath = UIBezierPath()
        dollPath.move(to: CGPoint(x: -36, y: 190 + offset))
        dollPath.addCurve(
            to: CGPoint(x: dollWidth * 0.46, y: 54 + offset),
            controlPoint1: CGPoint(x: dollWidth * 0.18, y: 284 + offset),
            controlPoint2: CGPoint(x: dollWidth * 0.40, y: 304 + offset)
        )
        dollPath.addCurve(
            to: CGPoint(x: dollWidth + 84, y: 30 + offset),
            controlPoint1: CGPoint(x: dollWidth * 0.58, y: -94 + offset),
            controlPoint2: CGPoint(x: dollWidth * 0.80, y: 168 + offset)
        )
        return dollPath
    }
}

final class DolluAsyncImageView: UIImageView {
    private var wovenSnapshotDolllaro: URL?

    func setDollImage(dollURL: URL?, fallbackTitle: String) {
        wovenSnapshotDolllaro = dollURL
        image = DolluPlaceholderImageFactory.makeDollPlaceholder(title: fallbackTitle)
        guard let dollURL else { return }

        URLSession.shared.dataTask(with: dollURL) { [weak self] dollData, _, _ in
            guard let dollData, let dollImage = UIImage(data: dollData) else { return }
            DispatchQueue.main.async {
                guard self?.wovenSnapshotDolllaro == dollURL else { return }
                self?.image = dollImage
            }
        }.resume()
    }
}

enum DolluPlaceholderImageFactory {
    static func makeDollPlaceholder(title: String) -> UIImage {
        let dollSize = CGSize(width: 280, height: 280)
        let dollRenderer = UIGraphicsImageRenderer(size: dollSize)
        return dollRenderer.image { dollContext in
            let dollRect = CGRect(origin: .zero, size: dollSize)
            let dollColors = [
                UIColor(red: 0.98, green: 0.73, blue: 0.82, alpha: 1).cgColor,
                UIColor(red: 0.47, green: 0.28, blue: 0.95, alpha: 1).cgColor
            ] as CFArray
            let dollGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: dollColors, locations: [0, 1])!
            dollContext.cgContext.drawLinearGradient(dollGradient, start: CGPoint(x: 0, y: 0), end: CGPoint(x: dollSize.width, y: dollSize.height), options: [])
            UIColor(white: 1, alpha: 0.28).setFill()
            UIBezierPath(ovalIn: CGRect(x: 72, y: 50, width: 136, height: 136)).fill()
            UIColor(white: 1, alpha: 0.42).setFill()
            UIBezierPath(roundedRect: CGRect(x: 54, y: 160, width: 172, height: 74), cornerRadius: 37).fill()
            let dollInitial = String(title.prefix(1)).uppercased()
            let dollAttributes: [NSAttributedString.Key: Any] = [
                .font: DolluWardrobePalette.dollRoundedFont(dollFontSize: 72, dollFontWeight: .heavy),
                .foregroundColor: UIColor.white
            ]
            let dollTextSize = dollInitial.size(withAttributes: dollAttributes)
            dollInitial.draw(at: CGPoint(x: (dollSize.width - dollTextSize.width) / 2, y: 88), withAttributes: dollAttributes)
            _ = dollRect
        }
    }
}
