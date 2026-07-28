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
        DolluAppRibbonConfig.satinCollectionDollvelo.miniShelfDolllumi = { ribbonDisplayDollrevo in
            if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
                ribbonDisplayDollrevo?.rootViewController = DolluCollectorTabController()
            } else {
                let ribbonCategoryDollpiri = UINavigationController(rootViewController: DolluAuthLandingViewController())
                ribbonCategoryDollpiri.setNavigationBarHidden(true, animated: false)
                ribbonDisplayDollrevo?.rootViewController = ribbonCategoryDollpiri
            }
        }
        self.window = window
        window.makeKeyAndVisible()
        DolluAppRibbonGateway.satinCollectionDollvelo.wovenDisplayDollnoro(wovenCategoryDollyara: window)
        window.rootViewController = DolluAppRibbonGateway.satinCollectionDollvelo.gardenMemoDollbop()
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

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        DolluAppRibbonGateway.satinCollectionDollvelo.gardenBackgroundDollrilo(gardenStandDollzemi: deviceToken)
    }

}
