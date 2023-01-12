//
//  cars_connetedApp.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI
import FirebaseCore
import Firebase
import GooglePlaces


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
      
      GMSPlacesClient.provideAPIKey("AIzaSyC9Mwt22ObfGJ-RmU0SuPegb6YdzO4F2I8")

      
    FirebaseApp.configure()
      
      print("apns token ===>   \(String(describing: Messaging.messaging().apnsToken))")
      print("device token ===> " + (Messaging.messaging().fcmToken ?? ""))

      
      
    return true
  }
}
