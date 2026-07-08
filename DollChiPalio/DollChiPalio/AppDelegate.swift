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
    private var satinCollectionDollvelo: Task<Void, Never>?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        startDollStoreRibbonUpdates()
        let window = UIWindow.init(frame: UIScreen.main.bounds)
        if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
            window.rootViewController = DolluCollectorTabController()
        } else {
            let authRoot = UINavigationController(rootViewController: DolluAuthLandingViewController())
            authRoot.setNavigationBarHidden(true, animated: false)
            window.rootViewController = authRoot
        }
        self.window = window
        window.makeKeyAndVisible()
        return true
    }

    private func startDollStoreRibbonUpdates() {
        satinCollectionDollvelo = Task.detached {
            for await ribbonSnapshotDollyara in Transaction.updates {
                if case .verified(let ribbonDisplayDollrevo) = ribbonSnapshotDollyara {
                    await ribbonDisplayDollrevo.finish()
                }
            }
        }
    }

    deinit {
        satinCollectionDollvelo?.cancel()
    }

}
