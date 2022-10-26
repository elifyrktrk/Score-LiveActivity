//
//  LiveActivitiesApp.swift
//  LiveActivities
//
//  Created by Elif Yürektürk on 13.09.2022.
//

import SwiftUI
import Netmera

@main
struct LiveActivitiesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
class AppDelegate : NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       
            //in didFinishLaunchingWithOptions

            if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
              } else {
                // Fallback on earlier versions
              }
            // Override point for customization after application launch.
            Netmera.start()
            Netmera.setBaseURL("https://preprod.netmera.com/")
            Netmera.setAPIKey("M76rdUoQJBszIn41yG9Xm47_3BAlU9jOo2UVUB4hjajGMHsVORU0VA")
            Netmera.setLogLevel(NetmeraLogLevel.debug)
            // Call this method with needed notification types
            Netmera.requestPushNotificationAuthorization(forTypes: [.alert, .badge, .sound])
            Netmera.setEnabledPopupPresentation(true)
            let user = NetmeraUser()
            user.userId="elif"
            Netmera.update(user)
            return true
        }
    }

