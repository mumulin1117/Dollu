// Local presentation for the existing account confirmation callback.
export function neatArchiveDolllaro(cozyArchiveDollniva) {
  if (document.querySelector('dialog.neatArchiveDolllaro')) return;
  const neatMemoDollyara = document.activeElement;
  const neatSilhouetteDollnoro = document.createElement('dialog');
  neatSilhouetteDollnoro.className = 'neatArchiveDolllaro';
  neatSilhouetteDollnoro.setAttribute('aria-labelledby', 'neatBonnetDollukp');
  neatSilhouetteDollnoro.setAttribute('aria-describedby', 'neatWardrobeDolltavo');
  neatSilhouetteDollnoro.innerHTML = `
    <style>
      dialog.neatArchiveDolllaro{border:0;padding:0;margin:auto;width:min(311px,calc(100vw - 40px));max-width:none;max-height:calc(100dvh - 40px - env(safe-area-inset-top) - env(safe-area-inset-bottom));overflow:auto;background:transparent;color:rgba(255,255,255,1);font-family:Poppins,sans-serif;text-align:center}
      dialog.neatArchiveDolllaro::backdrop{background:rgba(0,0,0,.6)}
      .neatArchiveDolllaro .moonlitSceneDollpiri{height:105px;width:100%;background:url('./DolluNeatSilhouetteDollnoro.png') center top/100% auto no-repeat;position:relative;z-index:1;pointer-events:none}
      .neatArchiveDolllaro .neatCornerDollniva{margin-top:-54px;padding:78px 20px 20px;background:rgba(4,3,19,1);border-radius:34px}
      .neatArchiveDolllaro h2{margin:0;font-size:20px;line-height:1.4;font-weight:800;color:inherit}
      .neatArchiveDolllaro p{margin:14px 0 22px;font-size:16px;line-height:1.5;color:inherit}
      .neatArchiveDolllaro button{box-sizing:border-box;display:block;width:100%;height:52px;padding:0 12px;border:0;border-radius:26px;font-family:inherit;font-size:17px;font-weight:600;color:rgba(255,255,255,1);cursor:pointer}
      .neatArchiveDolllaro .neatWardrobeDolltavo{background:rgba(112,78,244,1)}
      .neatArchiveDolllaro .neatBonnetDollukp{margin-top:10px;background:transparent;border:1px solid rgba(255,255,255,.52)}
      .neatArchiveDolllaro .neatMemoDollyara{width:44px;height:44px;margin:18px auto 0;padding:5px;background:transparent}
      .neatArchiveDolllaro .neatMemoDollyara img{display:block;width:34px;height:34px}
      .neatArchiveDolllaro button:focus-visible{outline:2px solid white;outline-offset:3px}
      .neatArchiveDolllaro button:active{opacity:.75}
    </style>
    <div class="moonlitSceneDollpiri" aria-hidden="true"></div>
    <section class="neatCornerDollniva">
      <h2 id="neatBonnetDollukp">Delete account?</h2>
      <p id="neatWardrobeDolltavo">Are you sure you want to delete your account?</p>
      <button type="button" class="neatWardrobeDolltavo">Confirm</button>
      <button type="button" class="neatBonnetDollukp" autofocus>Cancel</button>
    </section>
    <button type="button" class="neatMemoDollyara" aria-label="Close"><img src="./DolluNeatCornerDollniva.png" alt=""></button>`;
  const cozyMemoDolllaro = (cozyStandDollyara) => {
    neatSilhouetteDollnoro.close();
    neatSilhouetteDollnoro.remove();
    neatMemoDollyara?.focus();
    const cozyBackgroundDollnoro = {confirm:cozyStandDollyara,cancel:!cozyStandDollyara};
    cozyArchiveDollniva.success?.(cozyBackgroundDollnoro);
    cozyArchiveDollniva.complete?.(cozyBackgroundDollnoro);
  };
  neatSilhouetteDollnoro.querySelector('button.neatWardrobeDolltavo').onclick = () => cozyMemoDolllaro(true);
  neatSilhouetteDollnoro.querySelector('button.neatBonnetDollukp').onclick = () => cozyMemoDolllaro(false);
  neatSilhouetteDollnoro.querySelector('button.neatMemoDollyara').onclick = () => cozyMemoDolllaro(false);
  neatSilhouetteDollnoro.addEventListener('cancel', (cozyBackgroundDollnoro) => {
    cozyBackgroundDollnoro.preventDefault();
    cozyMemoDolllaro(false);
  });
  document.body.append(neatSilhouetteDollnoro);
  neatSilhouetteDollnoro.showModal();
}
