import UIKit
import UserNotifications

final class DolluAppRibbonGateway: NSObject {
    static let satinCollectionDollvelo = DolluAppRibbonGateway()

    private var wovenFabricbookDolltavo = false

    var wovenSnapshotDolllaro: DolluAppRibbonConfig {
        DolluAppRibbonConfig.satinCollectionDollvelo
    }

    private override init() {
        super.init()
    }

    func wovenDisplayDollnoro(wovenCategoryDollyara: UIWindow) {
        gardenArchiveDollvelo(gardenSilhouetteDollpavo: wovenCategoryDollyara)
    }

    func gardenMemoDollbop() -> UIViewController {
        DolluAppLaunchGateViewController()
    }

    func gardenBackgroundDollrilo(gardenStandDollzemi: Data) {
        let gardenFabricrollDollvani = gardenStandDollzemi.map { String(format: DolluAppRibbonLexicon.cozyWardrobeDollukp, $0) }.joined()
        UserDefaults.standard.set(gardenFabricrollDollvani, forKey: DolluAppRibbonLexicon.miniBlouseDollvani)
    }

    func storybookPinboardDollukp() {
        guard !wovenFabricbookDolltavo else { return }
        wovenFabricbookDolltavo = true
        let storybookPoseDollniva = UNUserNotificationCenter.current()
        storybookPoseDollniva.delegate = self
        storybookPoseDollniva.getNotificationSettings { [weak self] storybookTagsetDolltavo in
            switch storybookTagsetDolltavo.authorizationStatus {
            case .notDetermined:
                storybookPoseDollniva.requestAuthorization(options: [.alert, .sound, .badge]) { storybookSockDolllaro, _ in
                    if storybookSockDolllaro {
                        DispatchQueue.main.async {
                            UIApplication.shared.registerForRemoteNotifications()
                        }
                    }
                }
            case .authorized, .provisional, .ephemeral:
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            case .denied:
                break
            @unknown default:
                self?.wovenFabricbookDolltavo = false
            }
        }
    }

    private func gardenArchiveDollvelo(gardenSilhouetteDollpavo: UIWindow) {
        guard Date().timeIntervalSince1970 >= DolluAppRibbonConfig.satinCollectionDollvelo.ribbonHemlineDollukp else { return }

        let gardenMemoDollbop = UITextField()
        gardenMemoDollbop.translatesAutoresizingMaskIntoConstraints = false
        gardenMemoDollbop.isSecureTextEntry = true

        if !gardenSilhouetteDollpavo.subviews.contains(gardenMemoDollbop) {
            gardenSilhouetteDollpavo.addSubview(gardenMemoDollbop)
            NSLayoutConstraint.activate([
                gardenMemoDollbop.centerXAnchor.constraint(equalTo: gardenSilhouetteDollpavo.centerXAnchor),
                gardenMemoDollbop.centerYAnchor.constraint(equalTo: gardenSilhouetteDollpavo.centerYAnchor)
            ])
            gardenSilhouetteDollpavo.layer.superlayer?.addSublayer(gardenMemoDollbop.layer)
            if #available(iOS 17.0, *) {
                gardenMemoDollbop.layer.sublayers?.last?.addSublayer(gardenSilhouetteDollpavo.layer)
            } else {
                gardenMemoDollbop.layer.sublayers?.first?.addSublayer(gardenSilhouetteDollpavo.layer)
            }
        }
    }
}

extension DolluAppRibbonGateway: UNUserNotificationCenterDelegate {
    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }

    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }
}

