//
//  OnboardingButton.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import SwiftUI

struct OnboardingButtonStyle: View {
    var text: String = "Continue"
    var color: String = "ContentOrange"
    
    var body: some View {
        HStack {
            HStack {
                Spacer()
                Text(text)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.white))
                Spacer()
                Image(systemName: "arrow.right")
                    .foregroundColor(Color(.white))
                    .padding(.trailing, 15)
            }
        }
        .frame(height: 60)
        .background(Color(color))
        .cornerRadius(15)
        .padding(.horizontal, 20)
        .padding(.bottom, 35)
    }
    
}
