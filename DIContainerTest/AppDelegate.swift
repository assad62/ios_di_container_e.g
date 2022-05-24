//
//  AppDelegate.swift
//  DIContainerTest
//
//  Created by Mohammad Arshad on 23/5/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    @Injected(\.networkProvider) var networkProvider: NetworkServiceProtocol
    @Injected(\.mockedNetworkProvider) var mockedNetworkProvider: NetworkServiceProtocol
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        networkProvider.setStringValueToGet(valueToSet: "Hello From AppDelegate using network provider")
        mockedNetworkProvider.setStringValueToGet(valueToSet: "Hello From AppDelegate using mocked network provider")
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

