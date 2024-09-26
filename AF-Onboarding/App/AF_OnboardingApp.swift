//
//  AF_OnboardingApp.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import SwiftUI

@main
struct AF_OnboardingApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
              OnboardingView()
            } else {
              ContentView()
            }
        }
    }
}
