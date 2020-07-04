//
//  HowToContinueAnNSUserActivityApp.swift
//  HowToContinueAnNSUserActivity
//
//  Created by Ramill Ibragimov on 04.07.2020.
//

import CoreSpotlight
import SwiftUI

@main
struct HowToContinueAnNSUserActivityApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onContinueUserActivity(CSSearchableItemActionType, perform: handleSpotlight)
        }
    }
    
    func handleSpotlight(_ userActivity: NSUserActivity) {
        if let id = userActivity.userInfo?[CSSearchableItemActivityIdentifier] as? String {
            print("Found identifier \(id)")
        }
    }
}
