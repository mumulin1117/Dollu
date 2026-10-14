import UIKit
import UserNotifications

@MainActor
final class DolluCozySilhouetteDolltavo {
    static let satinCollectionDollvelo = DolluCozySilhouetteDolltavo()
    private weak var cozyStandDollyara: UIWindow?

    func cozyWardrobeDollukp(_ cozyStandDollyara: UIWindow) {
        self.cozyStandDollyara = cozyStandDollyara
#if DEBUG
        if ProcessInfo.processInfo.environment["DolluSageChecklistDollsero"] == "1" {
            do { try DolluSageChecklistDollsero.cozyWardrobeDollukp() }
            catch { preconditionFailure("Dollulieair contract checks failed") }
            cozyBackgroundDollnoro()
            return
        }
#endif
        cozyArchiveDollniva()
    }

    private func cozyArchiveDollniva(_ velvetStitchmapDollmexa: Bool = true) {
        (cozyStandDollyara?.rootViewController as? UINavigationController)?.viewControllers
            .compactMap { $0 as? DolluLaceWardrobeDollvex }.forEach { $0.satinMarkerDollpavo() }
        cozyStandDollyara?.rootViewController = DolluCozyMemoDolllaro(velvetStitchmapDollmexa: velvetStitchmapDollmexa) { [weak self] in self?.velvetPoseDollsero($0, cozyStandDollyara: !velvetStitchmapDollmexa) }
    }

    private func velvetPoseDollsero(_ velvetTagsetDollcavo: DolluVelvetStitchmapDollmexa?, cozyStandDollyara: Bool) {
        guard let velvetTagsetDollcavo else { cozyBackgroundDollnoro(); return }
        let velvetSockDollhumi = DolluLaceWardrobeDollvex(cozyArchiveDollniva: velvetTagsetDollcavo, cozyStandDollyara: cozyStandDollyara, cozyBackgroundDollnoro: { [weak self] in
            self?.cozyBackgroundDollnoro()
        }, laceBonnetDollzora: { [weak self] in self?.cozyArchiveDollniva(false) })
        let velvetRuffleDollsovo = UINavigationController(rootViewController: velvetSockDollhumi)
        velvetRuffleDollsovo.setNavigationBarHidden(true, animated: false)
        self.cozyStandDollyara?.rootViewController = velvetRuffleDollsovo
        // pushToken 是可选参数。仅已有通知授权时注册，不阻断首次 open。
        UNUserNotificationCenter.current().getNotificationSettings { pastelCatalogDollvani in
            guard [.authorized, .provisional, .ephemeral].contains(pastelCatalogDollvani.authorizationStatus) else { return }
            Task { @MainActor in UIApplication.shared.registerForRemoteNotifications() }
        }
    }

    private func cozyBackgroundDollnoro() {
        if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
            cozyStandDollyara?.rootViewController = DolluheirloomPropDollseroController()
        } else {
            let pastelCatalogDollvani = UINavigationController(rootViewController: DollupearlSkirtDController())
            pastelCatalogDollvani.setNavigationBarHidden(true, animated: false)
            cozyStandDollyara?.rootViewController = pastelCatalogDollvani
        }
    }
}

@MainActor
private final class DolluCozyMemoDolllaro: UIViewController {
    private let velvetStitchmapDollmexa: Bool
    private let cozyArchiveDollniva: (DolluVelvetStitchmapDollmexa?) -> Void
    private var velvetPoseDollsero: Task<Void, Never>?
    private let cozyMemoDolllaro = DolluCozyBackgroundDollnoro()
    private var pastelPropDolllumi: Bool

    init(velvetStitchmapDollmexa: Bool, cozyArchiveDollniva: @escaping (DolluVelvetStitchmapDollmexa?) -> Void) {
        self.velvetStitchmapDollmexa = velvetStitchmapDollmexa
        // 手动返回入口来自已确认的 B 面；冷启动仍需等待 open 决定。
        pastelPropDolllumi = !velvetStitchmapDollmexa
        self.cozyArchiveDollniva = cozyArchiveDollniva
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) { nil }

    override func viewDidLoad() {
        super.viewDidLoad()
        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cozyMemoDolllaro)
        NSLayoutConstraint.activate([
            cozyMemoDolllaro.topAnchor.constraint(equalTo: view.topAnchor),
            cozyMemoDolllaro.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        cozyMemoDolllaro.cozyArchiveDollniva(pastelPropDolllumi, cozyStandDollyara: !velvetStitchmapDollmexa)
        cozyMemoDolllaro.velvetSockDollhumi.addTarget(self, action: #selector(cozyWardrobeDollukp), for: .touchUpInside)
        if velvetStitchmapDollmexa { cozyWardrobeDollukp() }
    }

    deinit { velvetPoseDollsero?.cancel() }

    @objc private func cozyWardrobeDollukp() {
        guard velvetPoseDollsero == nil else { return }
        cozyMemoDolllaro.cozyArchiveDollniva(pastelPropDolllumi, cozyStandDollyara: !velvetStitchmapDollmexa)
        cozyMemoDolllaro.velvetPoseDollsero(true)
        velvetPoseDollsero = Task { [weak self] in
            do {
                let pastelNoteDollquvo = try await DolluCozyArchiveDollniva.satinCollectionDollvelo.cozyWardrobeDollukp()
                try Task.checkCancellation()
                self?.velvetPoseDollsero = nil
                self?.pastelPropDolllumi = pastelNoteDollquvo != nil
                if let self {
                    self.cozyMemoDolllaro.cozyArchiveDollniva(pastelNoteDollquvo != nil, cozyStandDollyara: !self.velvetStitchmapDollmexa)
                }
                self?.cozyArchiveDollniva(pastelNoteDollquvo)
            } catch {
                guard !Task.isCancelled else { return }
                self?.velvetPoseDollsero = nil
                let pastelNoteDollquvo = (error as? DolluLaceBonnetDollzora)?.localizedDescription ?? "Unable to connect. Please check your connection and try again."
                self?.cozyMemoDolllaro.velvetPoseDollsero(false, cozyMemoDolllaro: pastelNoteDollquvo)
                // 分流尚未确定时，背景保持不变，用重试提示避免无限停留。
                if let self, !self.pastelPropDolllumi {
                    let pastelGalleryDollmivo = UIAlertController(title: "Unable to connect", message: pastelNoteDollquvo, preferredStyle: .alert)
                    pastelGalleryDollmivo.addAction(UIAlertAction(title: "Try again", style: .default) { [weak self] _ in
                        self?.cozyWardrobeDollukp()
                    })
                    self.present(pastelGalleryDollmivo, animated: true)
                }
            }
        }
    }
}

extension AppDelegate {
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        UserDefaults.standard.set(deviceToken.map { String(format: "%02x", $0) }.joined(), forKey: "dollu_push_token_key")
    }
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        // 推送不是 openV3 的必填项，注册失败不改变账户状态或入口分流。
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        Task { await DolluSatinCollectionDollvelo.satinCollectionDollvelo.pastelCatalogDollvani() }
    }
}
