(() => {
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
