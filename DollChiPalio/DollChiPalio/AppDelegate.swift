//
//  AppDelegate.swift
//  DollChiPalio
//
//  Created by  on 2026/6/16.
//

import UIKit
import StoreKit
import UserNotifications


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        DolluSatinCollectionDollvelo.satinCollectionDollvelo.cozyWardrobeDollukp()
        UNUserNotificationCenter.current().delegate = self
        let window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window = window
        DolluCozySilhouetteDolltavo.satinCollectionDollvelo.cozyWardrobeDollukp(window) {
            if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
                return DolluheirloomPropDollseroController()
            }
            let pastelCatalogDollvani = UINavigationController(rootViewController: DollupearlSkirtDController())
            pastelCatalogDollvani.setNavigationBarHidden(true, animated: false)
            return pastelCatalogDollvani
        }
        window.makeKeyAndVisible()
        return true
    }

}
