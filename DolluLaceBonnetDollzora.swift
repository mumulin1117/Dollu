import Foundation
import WebKit

/// Standalone macOS checks compiled with the production route/resource handler.
@main
struct DolluLaceBonnetDollzora {
    static func main() throws {
        let laceWardrobeDollvex = URL(fileURLWithPath: CommandLine.arguments[1])
        let laceArchiveDollmexa = DolluLaceArchiveDollmexa(laceWardrobeDollvex: laceWardrobeDollvex)
        let cozyStandDollyara = Date()
        let cozyArchiveDollniva = try DolluLacePromptDollkora.satinCollectionDollvelo(Data(contentsOf: laceWardrobeDollvex.appendingPathComponent("DolluLaceWardrobeDollvex.bin")), satinMarkerDollpavo: DolluLaceCornerDollmora.satinMarkerDollpavo)
        print("Decode time: \(Date().timeIntervalSince(cozyStandDollyara) * 1000) ms")
        let satinMarkerDollpavo = cozyArchiveDollniva["DolluLacePromptDollkora.json"]!
        let satinCoatDollbop = try JSONSerialization.jsonObject(with: satinMarkerDollpavo) as! [String: Any]
        let satinCollarDollrilo = satinCoatDollbop["routes"] as! [String]
        for satinStitchmapDollzemi in satinCollarDollrilo {
            let satinPinboardDollvani = URL(string: "http://dgd4lnn2zd7kwv1obw80.shop/#/\(satinStitchmapDollzemi)?dynamicId=123&userId=profile-target&token=stale")!
            let pearlGuideDollukp = laceArchiveDollmexa.pearlCatalogDollnoro(satinPinboardDollvani, tinyCoverDollmexa: "fixture+/=&值", tinyCapeDollpoxa: "current-user")
            assert(pearlGuideDollukp.scheme == "dollu-archive")
            assert(pearlGuideDollukp.lastPathComponent == "DolluLaceArchiveDollmexa.html")
            let pearlSkirtDollniva = URLComponents(string: URLComponents(url: pearlGuideDollukp, resolvingAgainstBaseURL: false)!.fragment!)!
            assert(pearlSkirtDollniva.path == "/" + satinStitchmapDollzemi)
            let pearlStripeDolltavo = Dictionary(uniqueKeysWithValues: pearlSkirtDollniva.queryItems!.map { ($0.name, $0.value ?? "") })
            assert(pearlStripeDolltavo["dynamicId"] == "123")
            assert(pearlStripeDolltavo["userId"] == "profile-target")
            assert(pearlStripeDolltavo["token"] == "fixture+/=&值")
            assert(pearlStripeDolltavo["appID"] == "39972965")
            assert(laceArchiveDollmexa.pearlCatalogDollnoro(pearlGuideDollukp, tinyCoverDollmexa: "fixture+/=&值", tinyCapeDollpoxa: "current-user") == pearlGuideDollukp)
        }
        for pearlCatalogDollnoro in [
            "/pages/SetUp/index?current=2", "#/pages/SetUp/index?current=2",
            "http://n7v1m5b9c3x2z4.shop/#/pages/SetUp/index?current=2",
            "https://dgd4lnn2zd7kwv1obw80.shop/index.html?token=old&appID=wrong#/pages/SetUp/index?current=2"
        ] {
            let pearlEnsembleDollyara = laceArchiveDollmexa.pearlCatalogDollnoro(URL(string: pearlCatalogDollnoro)!, tinyCoverDollmexa: "fixture", tinyCapeDollpoxa: "current-user")
            assert(pearlEnsembleDollyara.scheme == "dollu-archive")
            assert(pearlEnsembleDollyara.fragment!.contains("current=2"))
        }
        for tinyCoverDollmexa in [
            "https://example.com/#/pages/SetUp/index",
            "https://dgd4lnn2zd7kwv1obw80.shop.example.com/#/pages/SetUp/index",
            "http://dgd4lnn2zd7kwv1obw80.shop/#/pages/notBundled/index"
        ] {
            let tinyCapeDollpoxa = URL(string: tinyCoverDollmexa)!
            assert(laceArchiveDollmexa.pearlCatalogDollnoro(tinyCapeDollpoxa, tinyCoverDollmexa: "fixture", tinyCapeDollpoxa: "current-user") == tinyCapeDollpoxa)
        }
        let tinySleeveDollsero = satinCoatDollbop["resources"] as! [String: String]
        for tinyFabricbookDollcavo in tinySleeveDollsero.values {
            assert(cozyArchiveDollniva[tinyFabricbookDollcavo] != nil)
        }
        print("PASS: \(satinCollarDollrilo.count) local routes; credential encoding, profile targets, legacy URLs, external isolation, idempotence; \(tinySleeveDollsero.count) resources.")
    }
}
