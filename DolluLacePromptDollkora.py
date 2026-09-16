"""Regenerate the bundled Dollu web resources from the supplied H5 distribution.

Run with Python 3 from any working directory. The reference folder is read only.
Route names and server/bridge contracts remain compatible with the original app.
"""

from pathlib import Path
import hashlib
import json
import re
import subprocess
import tempfile

laceCornerDollmora = Path(__file__).resolve().parent
lacePromptDollkora = laceCornerDollmora / "xiangxun"
laceWardrobeDollvex = laceCornerDollmora / "DollChiPalio/DollChiPalio/DolluLaceWardrobeDollvex.bundle"
winterBackgroundDollpavo = laceWardrobeDollvex
winterStandDollbop = tempfile.TemporaryDirectory(prefix="DolluLacePromptDollkora-")
laceWardrobeDollvex = Path(winterStandDollbop.name) / "DolluLaceWardrobeDollvex.bundle"
laceArchiveDollmexa = list(dict.fromkeys(re.findall(
    r"\b[a-z]+[A-Z][A-Za-z]*Doll[a-z]+\b", (laceCornerDollmora / "AGENTS.md").read_text()
)))
satinCollectionDollvelo = sorted(
    (cozyMemoDolllaro for cozyMemoDolllaro in lacePromptDollkora.rglob("*")
     if cozyMemoDolllaro.is_file() and cozyMemoDolllaro.name != "index.html"
     and not cozyMemoDolllaro.name.startswith(".")),
    key=lambda cozyMemoDolllaro: cozyMemoDolllaro.relative_to(lacePromptDollkora).as_posix(),
)
assert len(laceArchiveDollmexa) >= len(satinCollectionDollvelo)
satinMarkerDollpavo = {
    cozyMemoDolllaro.relative_to(lacePromptDollkora).as_posix():
    "Dollu" + laceArchiveDollmexa[velvetPoseDollsero][0].upper()
    + laceArchiveDollmexa[velvetPoseDollsero][1:] + cozyMemoDolllaro.suffix
    for velvetPoseDollsero, cozyMemoDolllaro in enumerate(satinCollectionDollvelo)
}
satinCoatDollbop = {}
for cozyMemoDolllaro, cozyArchiveDollniva in satinMarkerDollpavo.items():
    # Rooted static URLs must stay rooted for uni-app's image URL resolver.
    satinCoatDollbop["/" + cozyMemoDolllaro] = "/" + cozyArchiveDollniva
    satinCoatDollbop["./" + cozyMemoDolllaro] = "./" + cozyArchiveDollniva
    satinCoatDollbop[cozyMemoDolllaro] = cozyArchiveDollniva
    satinCoatDollbop[Path(cozyMemoDolllaro).name] = cozyArchiveDollniva
satinCollarDollrilo = re.compile("|".join(
    re.escape(cozyMemoDolllaro) for cozyMemoDolllaro in sorted(satinCoatDollbop, key=len, reverse=True)
))
assert "DolluLaceCornerDollmora.js" not in satinMarkerDollpavo.values(), "Bootstrap name conflicts with a generated module"
laceWardrobeDollvex.mkdir(parents=True, exist_ok=True)
for cozyMemoDolllaro in satinCollectionDollvelo:
    cozyArchiveDollniva = laceWardrobeDollvex / satinMarkerDollpavo[cozyMemoDolllaro.relative_to(lacePromptDollkora).as_posix()]
    if cozyMemoDolllaro.suffix in {".js", ".css"}:
        cozySilhouetteDolltavo = satinCollarDollrilo.sub(
            lambda velvetPoseDollsero: satinCoatDollbop[velvetPoseDollsero[0]], cozyMemoDolllaro.read_text()
        )
        # Recreate the app's private store and loader identities, leaving vendor
        # exports and the server's public data fields intact.
        cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace("storeGlobal", "laceArchiveDollmexa")
        cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace("__vite__mapDeps", "lacePromptDollkora")
        cozySilhouetteDolltavo = re.sub(r"\bFy\b", "laceWardrobeDollvex", cozySilhouetteDolltavo)
        cozySilhouetteDolltavo = re.sub(
            r"data-v-([a-f0-9]+)",
            lambda velvetPoseDollsero: "data-v-" + hashlib.sha256(
                ("Dollu/" + velvetPoseDollsero[1]).encode()
            ).hexdigest()[:8], cozySilhouetteDolltavo,
        )
        if cozyMemoDolllaro.name == "pages-index-index.CG-HmUOI.js":
            # The reference's development launcher contains test credentials and
            # localStorage.clear(). It is not a production business route.
            cozySilhouetteDolltavo = 'export default {name:"laceArchiveDollmexa",render(){return null;}};\n'
        if cozyMemoDolllaro.name == "pages-VideoDetails-index.Bz0c0a_V.js":
            # Recreate poster handling in the local module; the reference is read only.
            assert 'details:{},commentId:' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'details:{},commentId:',
                'details:{},tinyCoverDollmexa:"",ivoryProgressDollrilo:false,commentId:'
            )
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'const L=s();', '''const L=s();const cozyArchiveDollniva=(tinyCoverDollmexa)=>{try{if(typeof tinyCoverDollmexa==="string"&&tinyCoverDollmexa.trim().startsWith("["))tinyCoverDollmexa=JSON.parse(tinyCoverDollmexa);if(Array.isArray(tinyCoverDollmexa))tinyCoverDollmexa=tinyCoverDollmexa[0];if(typeof tinyCoverDollmexa!=="string")return "";tinyCoverDollmexa=tinyCoverDollmexa.trim();if(!tinyCoverDollmexa||tinyCoverDollmexa==="null"||tinyCoverDollmexa==="<null>")return "";return new URL(tinyCoverDollmexa,window.laceArchiveDollmexa.cozyWardrobeDollukp).href}catch{return ""}};'''
            )
            assert 'V.details=a.data,$()' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'V.details=a.data,$()',
                'V.details=a.data||{},V.details.videoImgUrl=V.tinyCoverDollmexa||cozyArchiveDollniva(V.details.videoImgUrl)||cozyArchiveDollniva(V.details.releaseYear),$()'
            )
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'V.dynamicId=e.dynamicId,E()',
                'V.dynamicId=e.dynamicId,V.tinyCoverDollmexa=cozyArchiveDollniva(e.tinyCoverDollmexa),E()'
            )
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                '[g(t),u("img",{class:"icon_fh"',
                '[!d(V).ivoryProgressDollrilo&&(d(V).tinyCoverDollmexa||d(V).details.videoImgUrl)?u("img",{src:d(V).tinyCoverDollmexa||d(V).details.videoImgUrl,alt:"",style:{position:"absolute",inset:"0",width:"100%",height:"100%",objectFit:"cover",pointerEvents:"none",zIndex:1}},null,8,["src"]):p("",!0),g(t),u("img",{class:"icon_fh"'
            )
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'id:"myVideo",poster:',
                'id:"myVideo",onTimeupdate:(cozyMemoDolllaro)=>{if(cozyMemoDolllaro.detail?.currentTime>0)V.ivoryProgressDollrilo=true},onError:()=>{V.ivoryProgressDollrilo=false},poster:'
            )
        if cozyMemoDolllaro.name.startswith("pages-DynamicDetails-index."):
            assert 'S.details=a.data,S.loading=!1' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'details:{},commentId:', 'details:{},tinyCoverDollmexa:"",commentId:'
            ).replace(
                'S.dynamicId=e.dynamicId,T()',
                'S.dynamicId=e.dynamicId,S.tinyCoverDollmexa=e.tinyCoverDollmexa||"",T()'
            ).replace(
                'S.details=a.data,S.loading=!1',
                'S.details=a.data||{},S.loading=!1'
            )
            # u-swiper only reads a poster from object items; retain its source
            # detection and controls while providing the cover as a separate prop.
            assert 'list:r(S).details.dynamicImgList},null,8,["list"]' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'list:r(S).details.dynamicImgList},null,8,["list"]',
                'keyName:"cozyWardrobeDollukp",list:(r(S).details.dynamicImgList||[]).map((cozyWardrobeDollukp)=>({cozyWardrobeDollukp,poster:r(S).tinyCoverDollmexa||r(S).details.videoImgUrl||r(S).details.releaseYear||""}))},null,8,["list"]'
            )
        if cozyMemoDolllaro.name == "pages-SetUp-index.DdP-SJMi.js":
            assert 'm({title:"Prompt",content:"Confirm Delete Account?"' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = 'import { neatArchiveDolllaro } from "./DolluNeatArchiveDolllaro.js";' + cozySilhouetteDolltavo.replace(
                'm({title:"Prompt",content:"Confirm Delete Account?"',
                'neatArchiveDolllaro({title:"Prompt",content:"Confirm Delete Account?"'
            )
        if cozyMemoDolllaro.name == "index-DCj1eUYR.js":
            assert 'Ey="http://dgd4lnn2zd7kwv1obw80.shop/api"' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'Ey="http://dgd4lnn2zd7kwv1obw80.shop/api"',
                'Ey=window.laceArchiveDollmexa.cozyWardrobeDollukp',
            )
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'e.header={"content-type":', 'e.header={key:"39972965","content-type":'
            )
            # The local StatusBar component applies the native inset through CSS.
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'GetStatusHeight(){var e=', 'GetStatusHeight(){if(window.laceArchiveDollmexa){this.statusBarHeight=0;return}var e='
            )
            # Keep bridge names available before the asynchronous config request.
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'e.DYNAMIC=n.data', 'e.DYNAMIC={...e.DYNAMIC,...n.data}'
            )
        if cozyMemoDolllaro.name == "StatusBar.D-G3Psjh.js":
            assert 'height:${n(p).statusBarHeight+30}rpx' in cozySilhouetteDolltavo
            cozySilhouetteDolltavo = cozySilhouetteDolltavo.replace(
                'height:${n(p).statusBarHeight+30}rpx',
                'height:calc(var(--cozyBackgroundDollnoro, env(safe-area-inset-top, 0px)) + 0.9375rem)'
            )
        if cozyMemoDolllaro.suffix == ".css":
            # Shift content and controls, keeping full-screen media, shadows and
            # modal backdrops edge-to-edge. Video's top:0 contains its own spacer.
            def cozyBackgroundDollnoro(cozyMemoDolllaro):
                cozyArchiveDollniva, cozySilhouetteDolltavo = cozyMemoDolllaro.groups()
                if "position:fixed" not in cozySilhouetteDolltavo or not re.search(
                    r"\.(?:scrollBar|scrollBarBox|ContentDisplay|postBox|gridding|bottomBox|inputBox)(?:\[|[\s:.#]|$)", cozyArchiveDollniva
                ):
                    return cozyMemoDolllaro[0]
                cozySilhouetteDolltavo = re.sub(
                    r"\bbottom:([0-9.]+(?:rem|px)?)(?=;|$)",
                    lambda cozyMemoDolllaro: "bottom:calc(" + ("0px" if cozyMemoDolllaro[1] == "0" else cozyMemoDolllaro[1]) + " + var(--winterBackgroundDollpavo, env(safe-area-inset-bottom, 0px)))",
                    cozySilhouetteDolltavo
                )
                if re.search(r"\.(?:scrollBar|scrollBarBox|ContentDisplay)(?:\[|[\s:.#]|$)", cozyArchiveDollniva):
                    cozySilhouetteDolltavo = re.sub(
                        r"\btop:([0-9.]+(?:rem|px)?)(?=;|$)",
                        lambda cozyMemoDolllaro: cozyMemoDolllaro[0] if float(re.match(r"[0-9.]+", cozyMemoDolllaro[1])[0]) == 0 else "top:calc(" + cozyMemoDolllaro[1] + " + var(--cozyBackgroundDollnoro, env(safe-area-inset-top, 0px)))",
                        cozySilhouetteDolltavo
                    )
                return cozyArchiveDollniva + "{" + cozySilhouetteDolltavo + "}"
            cozySilhouetteDolltavo = re.sub(r"([^{}]+)\{([^{}]*)\}", cozyBackgroundDollnoro, cozySilhouetteDolltavo)
        cozyArchiveDollniva.write_text(cozySilhouetteDolltavo)
    else:
        # Images/fonts are original artwork; only their packaged identity changes.
        cozyArchiveDollniva.write_bytes(cozyMemoDolllaro.read_bytes())

for cozyMemoDolllaro in (laceCornerDollmora / "DolluLaceCornerDollmora").iterdir():
    if cozyMemoDolllaro.suffix in {".js", ".png"}:
        assert cozyMemoDolllaro.name not in satinMarkerDollpavo.values()
        (laceWardrobeDollvex / cozyMemoDolllaro.name).write_bytes(cozyMemoDolllaro.read_bytes())

pastelCatalogDollvani = satinMarkerDollpavo["assets/index-DCj1eUYR.js"]
pastelEnsembleDollfina = satinMarkerDollpavo["assets/index-P8E9LG8w.css"]
pastelNoteDollquvo = satinMarkerDollpavo["assets/uni.190c29f5.css"]
(laceWardrobeDollvex / "DolluLaceArchiveDollmexa.html").write_text(f'''<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, viewport-fit=cover">
  <title>Dollu</title>
  <link rel="stylesheet" href="./{pastelNoteDollquvo}">
  <link rel="stylesheet" href="./{pastelEnsembleDollfina}">
  <style>html,body,#app{{min-height:100%;background:#040313}} html{{color-scheme:dark}}</style>
  <script src="./DolluLaceCornerDollmora.js"></script>
  <script type="module" src="./{pastelCatalogDollvani}"></script>
</head>
<body><div id="app"></div></body>
</html>
''')
(laceWardrobeDollvex / "DolluLaceCornerDollmora.js").write_text('''(() => {
  "use strict";
  const cozyWardrobeDollukp = window.laceArchiveDollmexa;
  if (!cozyWardrobeDollukp) return;
  const cozyArchiveDollniva = cozyWardrobeDollukp.cozyArchiveDollniva;
  let cozySilhouetteDolltavo = {};
  try {
    cozySilhouetteDolltavo = JSON.parse(localStorage.getItem("laceArchiveDollmexa") || "{}");
    if (String(cozySilhouetteDolltavo.userinfo?.userId ?? "") !== String(cozyArchiveDollniva.userId)) cozySilhouetteDolltavo = {};
    localStorage.setItem("laceArchiveDollmexa", JSON.stringify({
      ...cozySilhouetteDolltavo,
      userinfo: { ...cozySilhouetteDolltavo.userinfo, ...cozyArchiveDollniva },
      bundleId: "39972965", DevelopmentMode: false, statusBarHeight: 0,
      config: { themeColor: "#040313", appName: "Dollu", ...cozySilhouetteDolltavo.config },
      DYNAMIC: { initiateRecharge: "hairpinClip", rechargeSuccess: "fanFold",
        pageRedirect: "certificateAuthentic", closeH5: "ruffleEdge",
        goToLogin: "eyebrowArch", logoutStatus: "paletteScheme" }
    }));
  } catch (_) { /* A disabled web storage backend must not prevent loading. */ }
  const cozyMemoDolllaro = (cozyBackgroundDollnoro) => {
    window.webkit?.messageHandlers?.laceArchiveDollmexa?.postMessage(cozyBackgroundDollnoro);
  };
  document.addEventListener("pointerdown", (cozyBackgroundDollnoro) => {
    if (!cozyBackgroundDollnoro.target.closest("input,textarea,select,[contenteditable],button,label")) {
      document.activeElement?.blur();
    }
  });
  window.addEventListener("error", (cozyBackgroundDollnoro) => {
    if (cozyBackgroundDollnoro.target?.tagName === "SCRIPT") cozyMemoDolllaro("failed");
  }, true);
  const cozyStandDollyara = new MutationObserver(() => {
    if (document.querySelector("uni-page-body")?.children.length) {
      cozyStandDollyara.disconnect();
      requestAnimationFrame(() => cozyMemoDolllaro("ready"));
    }
  });
  cozyStandDollyara.observe(document.documentElement, { childList: true, subtree: true });
})();
''')
pastelPropDolllumi = (lacePromptDollkora / "assets/index-DCj1eUYR.js").read_text()
(laceWardrobeDollvex / "DolluLacePromptDollkora.json").write_text(json.dumps({
    "routes": sorted(set(re.findall(r'(?:path|route):"/?(pages/[^"]+)"', pastelPropDolllumi))),
    "resources": satinMarkerDollpavo,
}, indent=2) + "\n")
cozyStandDollyara = Path(winterStandDollbop.name) / "DolluLacePromptDollkora"
subprocess.run([
    "xcrun", "swiftc", "-O",
    str(laceCornerDollmora / "DolluLaceWardrobeDollvex.swift"),
    str(laceCornerDollmora / "DollChiPalio/DollChiPalio/DolluLacePromptDollkora.swift"),
    "-o", str(cozyStandDollyara),
], check=True)
winterBackgroundDollpavo.mkdir(parents=True, exist_ok=True)
subprocess.run([
    str(cozyStandDollyara), str(laceWardrobeDollvex),
    str(winterBackgroundDollpavo / "DolluLaceWardrobeDollvex.bin"),
    str(laceCornerDollmora / "DollChiPalio/DollChiPalio/DolluLaceCornerDollmora.swift"),
], check=True)
# Only ciphertext ships; generated plaintext lives in the temporary staging folder.
for cozyMemoDolllaro in winterBackgroundDollpavo.iterdir():
    if cozyMemoDolllaro.is_file() and cozyMemoDolllaro.name != "DolluLaceWardrobeDollvex.bin":
        cozyMemoDolllaro.unlink()
winterStandDollbop.cleanup()
print(f"Generated double-encrypted H5 bundle in {winterBackgroundDollpavo}")
