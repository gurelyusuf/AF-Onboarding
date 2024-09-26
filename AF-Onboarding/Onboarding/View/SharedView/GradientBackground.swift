//
//  GradientBackground.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import SwiftUI

struct GradientOnboardingView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("ContentNavyBlue"), Color("ContentPurple")]),
                       startPoint: .top,
                       endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}
