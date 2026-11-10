
import UIKit
import UserNotifications


@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UNUserNotificationCenter.current().delegate = self
        let window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window = window
        let pastelCatalogDollvani = UINavigationController(rootViewController: DollupearlSkirtDController())
        pastelCatalogDollvani.setNavigationBarHidden(true, animated: false)
        window.rootViewController = pastelCatalogDollvani

        window.makeKeyAndVisible()
        return true
    }

}
