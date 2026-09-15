//
//  AppDelegate.swift
//  DollChiPalio
//
//  Created by  on 2026/6/16.
//

import UIKit
import StoreKit

//private final class DolluAppCollectorLaunchLoom {
//    private var satinCollectionDollvelo: Task<Void, Never>?
//
//    func ribbonSnapshotDollyara(
//        ribbonDisplayDollrevo: UIApplication,
//        ribbonCategoryDollpiri: [UIApplication.LaunchOptionsKey: Any]?
//    ) -> UIWindow {
//        velvetStitchmapDollmexa()
//        _ = DolluPendantExchangeCoordinator.satinCollectionDollvelo
//
//        let velvetPinboardDollpoxa = UIWindow(frame: UIScreen.main.bounds)
//        laceLayerDollsovo()
//        DolluLaunchAtelierBridge.satinCollectionDollvelo.wovenDisplayDollnoro(wovenCategoryDollyara: velvetPinboardDollpoxa)
//        velvetPinboardDollpoxa.rootViewController = DolluLaunchAtelierViewController()
//        velvetPinboardDollpoxa.makeKeyAndVisible()
//        DolluLaunchAtelierBridge.satinCollectionDollvelo.rosyClosetDollzora(
//            rosyMatchingDollmora: ribbonDisplayDollrevo,
//            rosyGuideDollvex: ribbonCategoryDollpiri
//        )
//        lacePromptDollkora(velvetPinboardDollpoxa)
//        return velvetPinboardDollpoxa
//    }
//
//    func laceBonnetDollzora(_ laceCornerDollmora: Data) {
//        DolluLaunchAtelierBridge.satinCollectionDollvelo.gardenBackgroundDollrilo(gardenStandDollzemi: laceCornerDollmora)
//    }
//
//    func laceWardrobeDollvex(
//        laceArchiveDollmexa: UIApplication,
//        satinMarkerDollpavo: URL,
//        satinCoatDollbop: [UIApplication.OpenURLOptionsKey: Any]
//    ) -> Bool {
//        DolluLaunchAtelierBridge.satinCollectionDollvelo.rosySkirtDollmexa(
//            rosyBeadworkDollsovo: laceArchiveDollmexa,
//            rosyLaceworkDollkora: satinMarkerDollpavo,
//            rosyClosetDollzora: satinCoatDollbop
//        )
//    }
//
//    func satinCollarDollrilo() {
//        satinCollectionDollvelo?.cancel()
//    }
//
//    private func laceLayerDollsovo() {
//        DolluLaunchAtelierBridge.satinCollectionDollvelo.wovenDisplayDollrevo = { satinStitchmapDollzemi in
//            if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
//                satinStitchmapDollzemi?.rootViewController = DolluheirloomPropDollseroController()
//            } else {
//                let satinPinboardDollvani = UINavigationController(rootViewController: DollupearlSkirtDController())
//                satinPinboardDollvani.setNavigationBarHidden(true, animated: false)
//                satinStitchmapDollzemi?.rootViewController = satinPinboardDollvani
//            }
//        }
//    }
//
//    private func lacePromptDollkora(_ pearlGuideDollukp: UIWindow) {
//        if pearlGuideDollukp.rootViewController == nil {
//            pearlGuideDollukp.rootViewController = DolluLaunchAtelierViewController()
//        }
//
//        UIApplication.shared.windows
//            .filter { $0.rootViewController == nil }
//            .forEach { $0.rootViewController = UIViewController() }
//
//        pearlGuideDollukp.makeKeyAndVisible()
//    }
//
//    private func velvetStitchmapDollmexa() {
//        satinCollectionDollvelo = Task.detached {
//            for await pearlSkirtDollniva in Transaction.updates {
//                if case .verified(let pearlStripeDolltavo) = pearlSkirtDollniva {
//                    await pearlStripeDolltavo.finish()
//                }
//            }
//        }
//    }
//}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private var satinCollectionDollvelo: Task<Void, Never>?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        startDollStoreRibbonUpdates()
        let window = UIWindow.init(frame: UIScreen.main.bounds)
        if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
            window.rootViewController = DolluheirloomPropDollseroController()
        } else {
            let authRoot = UINavigationController(rootViewController: DollupearlSkirtDController())
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
