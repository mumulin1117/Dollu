
import UIKit
import UserNotifications


@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UNUserNotificationCenter.current().delegate = self
        let blushLeatherSlipper = UIWindow.init(frame: UIScreen.main.bounds)
        self.window = blushLeatherSlipper
        let pastelCatalogDollvani = UINavigationController(rootViewController: DollupearlSkirtDController())
        pastelCatalogDollvani.setNavigationBarHidden(true, animated: false)
        blushLeatherSlipper.rootViewController = pastelCatalogDollvani

        blushLeatherSlipper.makeKeyAndVisible()
        return true
    }

}
