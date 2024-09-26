//
//  OnboardingModel.swift
//  AF-Onboarding
//
//  Created by Yusuf Gürel on 26.09.2024.
//

import Foundation
import SwiftUI

// MARK: - ONBOARDING DATA MODEL

struct Onboarding: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
}
