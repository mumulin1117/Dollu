import UIKit
import UserNotifications

@MainActor
final class DolluCozySilhouetteDolltavo {
    static let satinCollectionDollvelo = DolluCozySilhouetteDolltavo()
    private weak var cozyStandDollyara: UIWindow?

    func cozyWardrobeDollukp(_ cozyStandDollyara: UIWindow) {
        self.cozyStandDollyara = cozyStandDollyara
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
            guard let self else { return }
            do {
                let pastelNoteDollquvo = try await self.pastelCatalogDollvani()
                try Task.checkCancellation()
                guard pastelNoteDollquvo != nil else {
                    self.pastelEnsembleDollfina(nil)
                    return
                }
                self.pastelEnsembleDollfina(pastelNoteDollquvo)
            } catch {
                if !Task.isCancelled { self.velvetPoseDollsero = nil }
            }
        }
    }

    private func pastelCatalogDollvani() async throws -> DolluVelvetStitchmapDollmexa? {
        while !Task.isCancelled {
            do {
                return try await DolluCozyArchiveDollniva.satinCollectionDollvelo.cozyWardrobeDollukp()
            } catch {
                try Task.checkCancellation()
                cozyMemoDolllaro.velvetPoseDollsero(true, cozyMemoDolllaro: "Reconnecting…")
                try await Task.sleep(nanoseconds: 2_000_000_000)
            }
        }
        throw CancellationError()
    }

    private func pastelEnsembleDollfina(_ pastelNoteDollquvo: DolluVelvetStitchmapDollmexa?) {
        velvetPoseDollsero = nil
        pastelPropDolllumi = pastelNoteDollquvo != nil
        cozyMemoDolllaro.cozyArchiveDollniva(pastelNoteDollquvo != nil, cozyStandDollyara: !velvetStitchmapDollmexa)
        cozyArchiveDollniva(pastelNoteDollquvo)
    }
}

extension AppDelegate {
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let cozyMemoDolllaro = deviceToken.map { String(format: "%02x", $0) }.joined()
        let cozyStandDollyara = UserDefaults.standard.string(forKey: "dollu_push_token_key")
        UserDefaults.standard.set(cozyMemoDolllaro, forKey: "dollu_push_token_key")
        guard cozyStandDollyara != cozyMemoDolllaro else { return }
        Task { _ = try? await DolluCozyArchiveDollniva.satinCollectionDollvelo.cozyWardrobeDollukp() }
    }
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {}
    func applicationDidBecomeActive(_ application: UIApplication) {
        Task { await DolluSatinCollectionDollvelo.satinCollectionDollvelo.pastelCatalogDollvani() }
    }

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        // Ably 在后台会暂停；标准 APNs 唤醒后由系统恢复前台生命周期，再由 B 页面重连频道。
        completionHandler(.noData)
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .list, .sound, .badge])
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        // 点击通知后 applicationDidBecomeActive 与 B 页面观察者会恢复 open/Ably 会话。
        completionHandler()
    }
}
