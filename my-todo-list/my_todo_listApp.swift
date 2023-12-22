//
//  my_todo_listApp.swift
//  my-todo-list
//
//  Created by Khripunov Pavel on 15/12/2023.
//

import SwiftUI
import FirebaseCore

class FirebaseDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct YourApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(FirebaseDelegate.self) var firebase

  var body: some Scene {
    WindowGroup {
      NavigationView {
          RootView()
      }
    }
  }
}
