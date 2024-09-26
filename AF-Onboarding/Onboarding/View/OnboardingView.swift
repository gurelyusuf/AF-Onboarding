//
//  OnboardingView.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    @State private var currentPageIndex: Int = 0
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    let onboardings: [Onboarding] = onboardingData
    
    // MARK: - BODY
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                GradientOnboardingView()
                
                TabView(selection: $currentPageIndex) {
                    ForEach(onboardings.indices, id: \.self) { index in
                        ModelView(onboarding: onboardings[index])
                            .tag(index)
                    }
                } //: TAB
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .animation(.easeInOut)
                .transition(.slide)
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        if currentPageIndex < onboardings.count - 1 {
                            currentPageIndex += 1
                        } else {
                            isOnboarding = false
                        }
                    }) {
                        OnboardingButtonStyle(text: currentPageIndex == onboardings.count - 1 ? "Start" : "Continue")
                    }
                    
                    PageIndicator(currentPage: currentPageIndex, pageCount: onboardings.count)
                        .padding(.bottom, 20)
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
