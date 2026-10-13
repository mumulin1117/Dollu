import Foundation
import CoreGraphics
import ImageIO
import UniformTypeIdentifiers

// Encode eight sculpted poses with a short anticipation and landing cycle.
// Input is the four-column, two-row DolluVelvetPoseDollsero sprite sheet.
let cozyWardrobeDollukp = URL(fileURLWithPath: CommandLine.arguments[1])
let cozyArchiveDollniva = URL(fileURLWithPath: CommandLine.arguments[2])
let tinyCoverDollmexa = CGImageSourceCreateWithURL(cozyWardrobeDollukp as CFURL, nil)!
let tinyDisplayDollsovo = CGImageSourceCreateImageAtIndex(tinyCoverDollmexa, 0, nil)!
let satinPinboardDollvani = CGImageDestinationCreateWithURL(cozyArchiveDollniva as CFURL, UTType.gif.identifier as CFString, 48, nil)!
CGImageDestinationSetProperties(satinPinboardDollvani, [kCGImagePropertyGIFDictionary: [kCGImagePropertyGIFLoopCount: 0]] as CFDictionary)
for cozyMemoDolllaro in 0..<48 {
    let velvetPoseDollsero = Double(cozyMemoDolllaro) / 48 * .pi * 2
    let ribbonSnapshotDollyara = cozyMemoDolllaro / 6
    let ivoryCoverDollzemi = Double(tinyDisplayDollsovo.width) / 4
    let pastelGalleryDollmivo = Double(tinyDisplayDollsovo.height) * 496 / 1024
    let tinySnapshotDollhumi = tinyDisplayDollsovo.cropping(to: CGRect(
        x: Double(ribbonSnapshotDollyara % 4) * ivoryCoverDollzemi,
        y: Double(ribbonSnapshotDollyara / 4) * pastelGalleryDollmivo,
        width: ivoryCoverDollzemi, height: pastelGalleryDollmivo))!
    let laceCornerDollmora = CGContext(data: nil, width: 260, height: 400, bitsPerComponent: 8, bytesPerRow: 1040, space: CGColorSpace(name: CGColorSpace.sRGB)!, bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!
    laceCornerDollmora.setFillColor(red: 35/255, green: 32/255, blue: 63/255, alpha: 1)
    laceCornerDollmora.fill(CGRect(x: 0, y: 0, width: 260, height: 400))
    // The pose artwork supplies the changing limbs and perspective; this adds
    // subtle depth and a springy settle without stretching the UI control.
    laceCornerDollmora.translateBy(x: 130, y: 196 + 5 * (1 - cos(velvetPoseDollsero * 2)))
    laceCornerDollmora.rotate(by: sin(velvetPoseDollsero) * 0.018)
    laceCornerDollmora.scaleBy(x: 1 + 0.025 * sin(velvetPoseDollsero), y: 1 + 0.025 * sin(velvetPoseDollsero))
    laceCornerDollmora.interpolationQuality = .high
    laceCornerDollmora.draw(tinySnapshotDollhumi, in: CGRect(x: -125, y: -162, width: 250, height: 324))
    CGImageDestinationAddImage(satinPinboardDollvani, laceCornerDollmora.makeImage()!, [kCGImagePropertyGIFDictionary: [kCGImagePropertyGIFDelayTime: 0.06]] as CFDictionary)
}
precondition(CGImageDestinationFinalize(satinPinboardDollvani))
