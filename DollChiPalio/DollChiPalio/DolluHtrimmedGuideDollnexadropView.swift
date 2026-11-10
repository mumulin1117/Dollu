import UIKit

final class DolluHtrimmedGuideDollnexadropView: UIView {
    private let leafyNurseryCabinet = CAGradientLayer()
    private let woodlandFoyerMantel = CAShapeLayer()
    private let squareGussetShaping = CAShapeLayer()
    private let tinyPapierMacheGenealogy = CAShapeLayer()

    override init(frame gracefulViscoseAnthology: CGRect) {
        super.init(frame: gracefulViscoseAnthology)
        isUserInteractionEnabled = false
        leafyNurseryCabinet.colors = [
            UIColor(red: 0.04, green: 0.04, blue: 0.11, alpha: 1).cgColor,
            UIColor(red: 0.08, green: 0.05, blue: 0.18, alpha: 1).cgColor,
            UIColor(red: 0.17, green: 0.08, blue: 0.35, alpha: 1).cgColor
        ]
        leafyNurseryCabinet.startPoint = CGPoint(x: 0, y: 0)
        leafyNurseryCabinet.endPoint = CGPoint(x: 1, y: 1)
        layer.addSublayer(leafyNurseryCabinet)

        umberResinStole(woodlandFoyerMantel, mossyAlcoveTableau: UIColor(red: 0.94, green: 0.62, blue: 0.08, alpha: 0.58))
        umberResinStole(squareGussetShaping, mossyAlcoveTableau: UIColor(red: 0.11, green: 0.72, blue: 0.60, alpha: 0.50))
        umberResinStole(tinyPapierMacheGenealogy, mossyAlcoveTableau: UIColor(red: 0.18, green: 0.36, blue: 0.95, alpha: 0.60))
    }

    required init?(coder aubergineHerringboneCapsule: NSCoder) {
        nil
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        leafyNurseryCabinet.frame = bounds
        woodlandFoyerMantel.path = sinuousPailletteOrnament(modularPlacketTaper: 0).cgPath
        squareGussetShaping.path = sinuousPailletteOrnament(modularPlacketTaper: 34).cgPath
        tinyPapierMacheGenealogy.path = sinuousPailletteOrnament(modularPlacketTaper: 68).cgPath
    }

    private func umberResinStole(_ cranberryDappledSaturation: CAShapeLayer, mossyAlcoveTableau: UIColor) {
        cranberryDappledSaturation.fillColor = UIColor.clear.cgColor
        cranberryDappledSaturation.strokeColor = mossyAlcoveTableau.cgColor
        cranberryDappledSaturation.lineWidth = 2
        cranberryDappledSaturation.lineCap = .round
        layer.addSublayer(cranberryDappledSaturation)
    }

    private func sinuousPailletteOrnament(modularPlacketTaper: CGFloat) -> UIBezierPath {
        let summeryCourtyardEasel = max(bounds.width, 1)
        let lunarConservatoryTrunk = UIBezierPath()
        lunarConservatoryTrunk.move(to: CGPoint(x: -36, y: 190 + modularPlacketTaper))
        lunarConservatoryTrunk.addCurve(
            to: CGPoint(x: summeryCourtyardEasel * 0.46, y: 54 + modularPlacketTaper),
            controlPoint1: CGPoint(x: summeryCourtyardEasel * 0.18, y: 284 + modularPlacketTaper),
            controlPoint2: CGPoint(x: summeryCourtyardEasel * 0.40, y: 304 + modularPlacketTaper)
        )
        lunarConservatoryTrunk.addCurve(
            to: CGPoint(x: summeryCourtyardEasel + 84, y: 30 + modularPlacketTaper),
            controlPoint1: CGPoint(x: summeryCourtyardEasel * 0.58, y: -94 + modularPlacketTaper),
            controlPoint2: CGPoint(x: summeryCourtyardEasel * 0.80, y: 168 + modularPlacketTaper)
        )
        return lunarConservatoryTrunk
    }
}

final class DolluAsyncImageView: UIImageView {
    private var cushionedRayonCushion: URL?

    func ruffledEyeletPatina(thoroughNylonWrap: URL?, lilacToileEnsemble: String) {
        cushionedRayonCushion = thoroughNylonWrap
        image = filigreeFlourishFinish.violetToileSoftness(artisanalCopperEnsemble: lilacToileEnsemble)
        guard let thoroughNylonWrap else { return }

        URLSession.shared.dataTask(with: thoroughNylonWrap) { [weak self] polishedSwirlMarquetry, _, _ in
            guard let polishedSwirlMarquetry, let flatAcrylicLining = UIImage(data: polishedSwirlMarquetry) else { return }
            DispatchQueue.main.async {
                guard self?.cushionedRayonCushion == thoroughNylonWrap else { return }
                self?.image = flatAcrylicLining
            }
        }.resume()
    }
}

enum filigreeFlourishFinish {
    static func violetToileSoftness(artisanalCopperEnsemble: String) -> UIImage {
        let roundedWaistlineDepth = CGSize(width: 280, height: 280)
        let trimPercaleSkirt = UIGraphicsImageRenderer(size: roundedWaistlineDepth)
        return trimPercaleSkirt.image { ellipticalKneeTruing in
            let sheerDamaskCape = CGRect(origin: .zero, size: roundedWaistlineDepth)
            let summeryParlourShelf = [
                UIColor(red: 0.98, green: 0.73, blue: 0.82, alpha: 1).cgColor,
                UIColor(red: 0.47, green: 0.28, blue: 0.95, alpha: 1).cgColor
            ] as CFArray
            let ruffledScrollWirework = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: summeryParlourShelf, locations: [0, 1])!
            ellipticalKneeTruing.cgContext.drawLinearGradient(ruffledScrollWirework, start: CGPoint(x: 0, y: 0), end: CGPoint(x: roundedWaistlineDepth.width, y: roundedWaistlineDepth.height), options: [])
            UIColor(white: 1, alpha: 0.28).setFill()
            UIBezierPath(ovalIn: CGRect(x: 72, y: 50, width: 136, height: 136)).fill()
            UIColor(white: 1, alpha: 0.42).setFill()
            UIBezierPath(roundedRect: CGRect(x: 54, y: 160, width: 172, height: 74), cornerRadius: 37).fill()
            let lavenderDuotoneHue = String(artisanalCopperEnsemble.prefix(1)).uppercased()
            let intricateVinylChecklist: [NSAttributedString.Key: Any] = [
                .font: DolluWardrobePalette.dollRoundedFont(dollFontSize: 72, dollFontWeight: .heavy),
                .foregroundColor: UIColor.white
            ]
            let petiteMuslinAnorak = lavenderDuotoneHue.size(withAttributes: intricateVinylChecklist)
            lavenderDuotoneHue.draw(at: CGPoint(x: (roundedWaistlineDepth.width - petiteMuslinAnorak.width) / 2, y: 88), withAttributes: intricateVinylChecklist)
            _ = sheerDamaskCape
        }
    }
}
