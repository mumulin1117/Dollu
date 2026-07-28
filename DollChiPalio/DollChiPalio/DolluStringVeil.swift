import Foundation

prefix operator **

prefix func ** (dollVeilText: String) -> String {
    DolluStringVeil.reveal(dollVeilText)
}

enum DolluStringVeil {
    static func reveal(_ dollVeilText: String) -> String {
        var dollResult = ""
        var dollOffset = 0
        for dollCharacter in dollVeilText {
            if dollOffset % 4 < 2 {
                dollResult.append(dollCharacter)
            }
            dollOffset += 1
        }
        return dollResult
    }

    #if DEBUG
    static func veil(_ dollPlainText: String) -> String {
        let dollVeilNoise = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var dollResult = ""
        var dollPair = ""

        for dollCharacter in dollPlainText {
            dollPair.append(dollCharacter)
            if dollPair.count == 2 {
                dollResult += dollPair
                dollResult.append(dollVeilNoise.randomElement() ?? "x")
                dollResult.append(dollVeilNoise.randomElement() ?? "z")
                dollPair.removeAll()
            }
        }

        if !dollPair.isEmpty {
            dollResult += dollPair
        }

        return dollResult
    }
    #endif
}
