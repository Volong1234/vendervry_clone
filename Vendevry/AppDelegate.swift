//
//  AppDelegate.swift
//  Vendevry
//
//  Created by Long Hello on 10/04/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func updateTheme(){
            UITableView.appearance().rowHeight = UITableView.automaticDimension
            UITableView.appearance().estimatedRowHeight = 50
            
            if #available(iOS 15.0, *) {
                let navBarAppearance = UINavigationBarAppearance()
                navBarAppearance.backgroundColor = .white
////                navBarAppearance.backgroundColor = APP_MAIN_COLOR
//                navBarAppearance.backgroundColor = .red
                navBarAppearance.shadowColor = .clear
                navBarAppearance.titleTextAttributes = [
                    NSAttributedString.Key.foregroundColor: UIColor.white // Set your desired color here
                ]
                //Configure additional customizations here
                UINavigationBar.appearance().standardAppearance = navBarAppearance
                UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
                
                
                UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().fillerRowHeight = UITableView.automaticDimension
                UITableView.appearance().dragInteractionEnabled = false
                UITableView.appearance().isPrefetchingEnabled = false
            }
        }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Presenter.window = self.window
        updateTheme()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

