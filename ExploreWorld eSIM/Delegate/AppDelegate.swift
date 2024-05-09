//
//  AppDelegate.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 02/05/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Check if the user is logged in
        let isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        
        // Create a UIWindow instance
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set the root view controller based on the user's login status
        if isLoggedIn {
            let countryVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CountryVc") as! CountryVc
            let navigationController = UINavigationController(rootViewController: countryVC)
            window?.rootViewController = navigationController
        } else {
            let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVc") as! LoginVc
            let navigationController = UINavigationController(rootViewController: loginVC)
            window?.rootViewController = navigationController
        }
        
        // Make the window visible
        window?.makeKeyAndVisible()
        
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

