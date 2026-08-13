import Foundation

prefix operator **

prefix func ** (dollVeilText: String) -> String {
    DolluStringVeil.reveal(dollVeilText)
}

enum DolluStringVeil {
    static func reveal(_ dollVeilText: String) -> String {
        let dollCharacters = Array(dollVeilText)
        var dollResult = ""
        var dollOffset = 0

        while dollOffset < dollCharacters.count {
            let dollRemaining = dollCharacters.count - dollOffset

            if dollRemaining >= 4 {
                dollResult.append(dollCharacters[dollOffset])
                dollResult.append(dollCharacters[dollOffset + 1])
                dollOffset += 4
            } else if dollRemaining == 3 {
                dollResult.append(dollCharacters[dollOffset])
                dollOffset += 3
            } else {
                dollCharacters[dollOffset...].forEach { dollResult.append($0) }
                dollOffset = dollCharacters.count
            }
        }

        return dollResult
    }

//    #if DEBUG
//    static func veil(_ dollPlainText: String) -> String {
//        let dollVeilNoise = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
//        var dollResult = ""
//        var dollPair = ""
//
//        for dollCharacter in dollPlainText {
//            dollPair.append(dollCharacter)
//            if dollPair.count == 2 {
//                dollResult += dollPair
//                dollResult.append(dollVeilNoise.randomElement() ?? "x")
//                dollResult.append(dollVeilNoise.randomElement() ?? "z")
//                dollPair.removeAll()
//            }
//        }
//
//        if !dollPair.isEmpty {
//            dollResult += dollPair
//        }
//
//        return dollResult
//    }
//    #endif
}
