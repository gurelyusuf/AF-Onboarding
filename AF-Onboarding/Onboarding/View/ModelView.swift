//
//  ModelView.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import SwiftUI

struct ModelView: View {
    
    var onboarding: Onboarding
    @State private var isAnimating: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Image(onboarding.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: geometry.size.height * 0.25)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .padding(.top, geometry.size.height * 0.25)
                Spacer()
                VStack(spacing: 20) {
                    Text(onboarding.title)
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    
                    Text(onboarding.headline)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 16)
                        .frame(maxWidth: 480)
                }
                .padding(.bottom, 60)
                
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
