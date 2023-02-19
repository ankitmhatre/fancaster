//
//  FancasterApp.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 1/8/23.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import SwiftUIRouter

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       FirebaseApp.configure()
       print("SwiftUI_2_Lifecycle_PhoneNumber_AuthApp application is starting up. ApplicationDelegate didFinishLaunchingWithOptions.")
       return true
     }

     func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       print("\(#function)")
       Auth.auth().setAPNSToken(deviceToken, type: .sandbox)
     }
     
     func application(_ application: UIApplication, didReceiveRemoteNotification notification: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
       print("\(#function)")
       if Auth.auth().canHandleNotification(notification) {
         completionHandler(.noData)
         return
       }
     }
     
     func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
       print("\(#function)")
       if Auth.auth().canHandle(url) {
         return true
       }
       return false
     }
   }
    
    
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
      let token = deviceToken.reduce("") { $0 + String(format: "%02x", $1) }
      print(token)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification notification: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
      print("\(#function) ")
        print(notification)

    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        print("\(#function)")
        if Auth.auth().canHandle(url) {
          return true
        }
        return false
      }
    
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      //Firebase SDK
    FirebaseApp.configure()
      
      UNUserNotificationCenter.current().requestAuthorization(options: [
           .badge, .sound, .alert
         ]) { granted, _ in
           guard granted else { return }

           DispatchQueue.main.async {
             application.registerForRemoteNotifications()
           }
         }

    return true
  }


@main
struct FancasterApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    var body: some Scene {
        WindowGroup {
            Router {
                ContentView()
                    .ignoresSafeArea()
            }
        }
    }
}
