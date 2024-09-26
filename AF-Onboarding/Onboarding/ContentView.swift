//
//  ContentView.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State private var isAnimating: Bool = false
    

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                GradientOnboardingView()
                VStack(spacing: 0) {
                    Spacer()
                    Image("star")
                        .resizable()
                        .scaledToFit()
                        .frame(height: geometry.size.height * 0.2)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                        .scaleEffect(isAnimating ? 1.0 : 0.6)
                        .padding(.top, geometry.size.height * 0.1)
                    Spacer()
                    VStack(spacing: 20) {
                        Text("This was an onboarding demo!")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                        
                        Button(action:{
                            isOnboarding = true
                        }){
                            OnboardingButtonStyle(text: "Re-Start", color: "ContentOrange")
                        }
                        .padding(.top, 50)
                        
                    }
                    
                    Spacer()
                }
                .onAppear {
                  withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                  }
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)

            }
        }
    }
}


#Preview {
    ContentView()
}
