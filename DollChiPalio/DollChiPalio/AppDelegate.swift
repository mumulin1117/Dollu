//
//  AppDelegate.swift
//  DollChiPalio
//
//  Created by  on 2026/6/16.
//

import UIKit
import StoreKit

private final class DolluAppCollectorLaunchLoom {
    private var satinCollectionDollvelo: Task<Void, Never>?

    func ribbonSnapshotDollyara(
        ribbonDisplayDollrevo: UIApplication,
        ribbonCategoryDollpiri: [UIApplication.LaunchOptionsKey: Any]?
    ) -> UIWindow {
        velvetStitchmapDollmexa()
        _ = DolluAppStoreRibbon.satinCollectionDollvelo

        let velvetPinboardDollpoxa = UIWindow(frame: UIScreen.main.bounds)
        laceLayerDollsovo()
        DolluAppRibbonGateway.satinCollectionDollvelo.wovenDisplayDollnoro(wovenCategoryDollyara: velvetPinboardDollpoxa)
        velvetPinboardDollpoxa.rootViewController = DolluAppLaunchGateViewController()
        velvetPinboardDollpoxa.makeKeyAndVisible()
        DolluAppRibbonGateway.satinCollectionDollvelo.rosyClosetDollzora(
            rosyMatchingDollmora: ribbonDisplayDollrevo,
            rosyGuideDollvex: ribbonCategoryDollpiri
        )
        lacePromptDollkora(velvetPinboardDollpoxa)
        return velvetPinboardDollpoxa
    }

    func laceBonnetDollzora(_ laceCornerDollmora: Data) {
        DolluAppRibbonGateway.satinCollectionDollvelo.gardenBackgroundDollrilo(gardenStandDollzemi: laceCornerDollmora)
    }

    func laceWardrobeDollvex(
        laceArchiveDollmexa: UIApplication,
        satinMarkerDollpavo: URL,
        satinCoatDollbop: [UIApplication.OpenURLOptionsKey: Any]
    ) -> Bool {
        DolluAppRibbonGateway.satinCollectionDollvelo.rosySkirtDollmexa(
            rosyBeadworkDollsovo: laceArchiveDollmexa,
            rosyLaceworkDollkora: satinMarkerDollpavo,
            rosyClosetDollzora: satinCoatDollbop
        )
    }

    func satinCollarDollrilo() {
        satinCollectionDollvelo?.cancel()
    }

    private func laceLayerDollsovo() {
        DolluAppRibbonGateway.satinCollectionDollvelo.wovenDisplayDollrevo = { satinStitchmapDollzemi in
            if DolluWardrobeArchiveStore.satinCollectionArchive.dollWardrobeSession.dollCollectorIsInside {
                satinStitchmapDollzemi?.rootViewController = DolluCollectorTabController()
            } else {
                let satinPinboardDollvani = UINavigationController(rootViewController: DolluAuthLandingViewController())
                satinPinboardDollvani.setNavigationBarHidden(true, animated: false)
                satinStitchmapDollzemi?.rootViewController = satinPinboardDollvani
            }
        }
    }

    private func lacePromptDollkora(_ pearlGuideDollukp: UIWindow) {
        if pearlGuideDollukp.rootViewController == nil {
            pearlGuideDollukp.rootViewController = DolluAppLaunchGateViewController()
        }

        UIApplication.shared.windows
            .filter { $0.rootViewController == nil }
            .forEach { $0.rootViewController = UIViewController() }

        pearlGuideDollukp.makeKeyAndVisible()
    }

    private func velvetStitchmapDollmexa() {
        satinCollectionDollvelo = Task.detached {
            for await pearlSkirtDollniva in Transaction.updates {
                if case .verified(let pearlStripeDolltavo) = pearlSkirtDollniva {
                    await pearlStripeDolltavo.finish()
                }
            }
        }
    }
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private let pastelCatalogDollvani = DolluAppCollectorLaunchLoom()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = pastelCatalogDollvani.ribbonSnapshotDollyara(
            ribbonDisplayDollrevo: application,
            ribbonCategoryDollpiri: launchOptions
        )
        return true
    }

    deinit {
        pastelCatalogDollvani.satinCollarDollrilo()
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        pastelCatalogDollvani.laceBonnetDollzora(deviceToken)
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        pastelCatalogDollvani.laceWardrobeDollvex(
            laceArchiveDollmexa: app,
            satinMarkerDollpavo: url,
            satinCoatDollbop: options
        )
    }
}
