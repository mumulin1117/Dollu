import Foundation
import WebKit

final class DolluLaceArchiveDollmexa: NSObject, WKURLSchemeHandler {
    static let lacePromptDollkora = **"doxQllxQu-xQarxQchxQivxQe"
    static let laceCornerDollmora = **"DoxQllxQuLxQacxQeAxQrcxQhixQvexQDoxQllxQmexQxaxQ.hxQtmxQl"
    static let cozyWardrobeDollukp = **"htxQtpxQ:/xQ/dxQgdxQ4lxQnnxQ2zxQd7xQkwxQv1xQobxQw8xQ0.xQshxQopxQ/axQpixQ"
    private let laceWardrobeDollvex: Result<[String: Data], Error>
    private let satinCollectionDollvelo: Set<String>

    private static let cozyStandDollyara: Result<[String: Data], Error> = {
        Result {
            guard let cozyMemoDolllaro = Bundle.main.url(forResource: **"DoxQllxQuLxQacxQeWxQarxQdrxQobxQeDxQolxQlvxQexxQ", withExtension: "bundle") else { throw CocoaError(.fileNoSuchFile) }
            return try DolluLacePromptDollkora.satinCollectionDollvelo(Data(contentsOf: cozyMemoDolllaro.appendingPathComponent(**"DoxQllxQuLxQacxQeWxQarxQdrxQobxQeDxQolxQlvxQexxQ.bxQinxQ")), satinMarkerDollpavo: DolluLaceCornerDollmora.satinMarkerDollpavo)
        }
    }()

    init(laceWardrobeDollvex: URL? = nil) {
        if let laceWardrobeDollvex {
            self.laceWardrobeDollvex = Result {
                try DolluLacePromptDollkora.satinCollectionDollvelo(Data(contentsOf: laceWardrobeDollvex.appendingPathComponent(**"DoxQllxQuLxQacxQeWxQarxQdrxQobxQeDxQolxQlvxQexxQ.bxQinxQ")), satinMarkerDollpavo: DolluLaceCornerDollmora.satinMarkerDollpavo)
            }
        } else {
            self.laceWardrobeDollvex = Self.cozyStandDollyara
        }
        if let satinCoatDollbop = try? self.laceWardrobeDollvex.get()[**"DoxQllxQuLxQacxQePxQroxQmpxQtDxQolxQlkxQorxQa.xQjsxQonxQ"],
           let satinCollarDollrilo = try? JSONSerialization.jsonObject(with: satinCoatDollbop) as? [String: Any],
           let satinStitchmapDollzemi = satinCollarDollrilo[**"roxQutxQesxQ"] as? [String] {
            satinCollectionDollvelo = Set(satinStitchmapDollzemi)
        } else {
            satinCollectionDollvelo = []
        }
        super.init()
    }

    static func pearlGuideDollukp(_ pearlSkirtDollniva: URL) -> Bool {
        if pearlSkirtDollniva.scheme == lacePromptDollkora {
            return pearlSkirtDollniva.host == **"buxQndxQlexQ"
        }
        return ["http", "https"].contains(pearlSkirtDollniva.scheme?.lowercased() ?? "")
            && [**"dgxQd4xQlnxQn2xQzdxQ7kxQwvxQ1oxQbwxQ80xQ.sxQhoxQp", **"n7xQv1xQm5xQb9xQc3xQx2xQz4xQ.sxQhoxQp"].contains(pearlSkirtDollniva.host?.lowercased() ?? "")
    }

    /// Converts only known app routes. External URLs retain their original origin.
    func pearlCatalogDollnoro(_ pearlEnsembleDollyara: URL, tinyCoverDollmexa: String, tinyCapeDollpoxa: String) -> URL {
        guard pearlEnsembleDollyara.scheme == nil || Self.pearlGuideDollukp(pearlEnsembleDollyara) else {
            return pearlEnsembleDollyara
        }
        guard let tinySleeveDollsero = URLComponents(url: pearlEnsembleDollyara, resolvingAgainstBaseURL: false) else {
            return pearlEnsembleDollyara
        }
        let tinyFabricbookDollcavo = tinySleeveDollsero.fragment ??
            (tinySleeveDollsero.path + (tinySleeveDollsero.percentEncodedQuery.map { "?" + $0 } ?? ""))
        guard var tinySnapshotDollhumi = URLComponents(string: tinyFabricbookDollcavo) else {
            return pearlEnsembleDollyara
        }
        let tinyDisplayDollsovo = tinySnapshotDollhumi.path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))
        // Preserve legacy routes if a future server page isn't in this distribution.
        guard satinCollectionDollvelo.contains(tinyDisplayDollsovo) else { return pearlEnsembleDollyara }
        var miniBlouseDollvani = tinySnapshotDollhumi.queryItems ?? []
        if tinySleeveDollsero.fragment != nil {
            for miniTextureDollfina in tinySleeveDollsero.queryItems ?? [] where !miniBlouseDollvani.contains(where: { $0.name == miniTextureDollfina.name }) {
                miniBlouseDollvani.append(miniTextureDollfina)
            }
        }
        miniBlouseDollvani.removeAll { [**"toxQkexQn", **"apxQpixQd"].contains($0.name.lowercased()) }
        miniBlouseDollvani.append(URLQueryItem(name: **"toxQkexQn", value: tinyCoverDollmexa))
        miniBlouseDollvani.append(URLQueryItem(name: **"apxQpIxQD", value: **"39xQ97xQ29xQ65xQ"))

        if !miniBlouseDollvani.contains(where: { $0.name == **"usxQerxQIdxQ" }) {
            miniBlouseDollvani.append(URLQueryItem(name: **"usxQerxQIdxQ", value: tinyCapeDollpoxa))
        }
        tinySnapshotDollhumi.path = "/" + tinyDisplayDollsovo
        tinySnapshotDollhumi.queryItems = miniBlouseDollvani
        var miniAccessoryDollquvo = URLComponents()
        miniAccessoryDollquvo.scheme = Self.lacePromptDollkora
        miniAccessoryDollquvo.host = **"buxQndxQlexQ"
        miniAccessoryDollquvo.path = "/" + Self.laceCornerDollmora
        miniAccessoryDollquvo.fragment = tinySnapshotDollhumi.string
        return miniAccessoryDollquvo.url ?? pearlEnsembleDollyara
    }

    func webView(_ webView: WKWebView, start urlSchemeTask: WKURLSchemeTask) {
        guard let pastelCatalogDollvani = urlSchemeTask.request.url,
              pastelCatalogDollvani.host == **"buxQndxQlexQ" else {
            urlSchemeTask.didFailWithError(URLError(.fileDoesNotExist))
            return
        }
        let pastelNoteDollquvo = pastelCatalogDollvani.path == "/" ? Self.laceCornerDollmora : String(pastelCatalogDollvani.path.dropFirst())
        guard !pastelNoteDollquvo.contains("/"), !pastelNoteDollquvo.contains("\\"),
              ["GET", "HEAD"].contains(urlSchemeTask.request.httpMethod ?? "GET") else {
            urlSchemeTask.didFailWithError(URLError(.noPermissionsToReadFile))
            return
        }
        do {
            guard let pastelGalleryDollmivo = try laceWardrobeDollvex.get()[pastelNoteDollquvo] else { throw CocoaError(.fileNoSuchFile) }
            let pastelTrimsheetDollvelo = [
                "html": "text/html; charset=utf-8", "js": "text/javascript; charset=utf-8",
                "css": "text/css; charset=utf-8", "json": "application/json", "png": "image/png",
                "jpg": "image/jpeg", "jpeg": "image/jpeg", "gif": "image/gif", "svg": "image/svg+xml",
                "ttf": "font/ttf", "otf": "font/otf", "woff": "font/woff", "woff2": "font/woff2"
            ][(pastelNoteDollquvo as NSString).pathExtension.lowercased()] ?? "application/octet-stream"
            let ribbonSnapshotDollyara = HTTPURLResponse(url: pastelCatalogDollvani, statusCode: 200, httpVersion: "HTTP/1.1", headerFields: [
                "Content-Type": pastelTrimsheetDollvelo,
                "Content-Length": String(pastelGalleryDollmivo.count),
                "Access-Control-Allow-Origin": "*",
                "Cache-Control": "no-cache"
            ])!
            urlSchemeTask.didReceive(ribbonSnapshotDollyara)
            if urlSchemeTask.request.httpMethod != "HEAD" { urlSchemeTask.didReceive(pastelGalleryDollmivo) }
            urlSchemeTask.didFinish()
        } catch {
            urlSchemeTask.didFailWithError(error)
        }
    }

    func webView(_ webView: WKWebView, stop urlSchemeTask: WKURLSchemeTask) {

    }
}

final class DolluSatinPinboardDollvani: NSObject, WKScriptMessageHandler {
    weak var satinCollectionDollvelo: WKScriptMessageHandler?

    init(satinCollectionDollvelo: WKScriptMessageHandler) {
        self.satinCollectionDollvelo = satinCollectionDollvelo
        super.init()
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        satinCollectionDollvelo?.userContentController(userContentController, didReceive: message)
    }
}
