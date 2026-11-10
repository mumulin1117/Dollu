import Foundation

prefix operator **

prefix func ** (whimsicalStudFinish: String) -> String {
    miniatureWaistlineShaping.fittedNecklineSloper(whimsicalStudFinish)
}

enum miniatureWaistlineShaping {
    static func fittedNecklineSloper(_ whimsicalStudFinish: String) -> String {
        let FillViscosePouch = Array(whimsicalStudFinish)
        var roseSilkClasp = ""
        var burnishedFerruleLacework = 0

        while burnishedFerruleLacework < FillViscosePouch.count {
            let quiltedTasselFinish = FillViscosePouch.count - burnishedFerruleLacework

            if quiltedTasselFinish >= 4 {
                roseSilkClasp.append(FillViscosePouch[burnishedFerruleLacework])
                roseSilkClasp.append(FillViscosePouch[burnishedFerruleLacework + 1])
                burnishedFerruleLacework += 4
            } else if quiltedTasselFinish == 3 {
                roseSilkClasp.append(FillViscosePouch[burnishedFerruleLacework])
                burnishedFerruleLacework += 3
            } else {
                FillViscosePouch[burnishedFerruleLacework...].forEach { rusticGreenhouseLattice in
                    roseSilkClasp.append(rusticGreenhouseLattice)
                }
                burnishedFerruleLacework = FillViscosePouch.count
            }
        }

        return roseSilkClasp
    }

}
