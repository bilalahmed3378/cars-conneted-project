//
//  cars_connetedApp.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI
import FirebaseCore
import Firebase


@main
struct cars_connetedApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      
      print("apns token ===>   \(String(describing: Messaging.messaging().apnsToken))")
      print("device token ===> " + (Messaging.messaging().fcmToken ?? ""))

      
      
    return true
  }
}
