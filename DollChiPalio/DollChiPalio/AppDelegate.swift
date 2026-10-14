//
//  AppDelegate.swift
//  DollChiPalio
//
//  Created by  on 2026/6/16.
//

import UIKit
import StoreKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        startDollStoreRibbonUpdates()
        let window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window = window
        DolluCozySilhouetteDolltavo.satinCollectionDollvelo.cozyWardrobeDollukp(window)
        window.makeKeyAndVisible()
        return true
    }

    private func startDollStoreRibbonUpdates() {
        DolluSatinCollectionDollvelo.satinCollectionDollvelo.cozyWardrobeDollukp()
    }

}
