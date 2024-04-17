//
//  OnboardingView.swift
//  Onboarding3D
//
//  Created by Jose Artacho on 16/4/24.
//

import SplineRuntime
import SwiftUI

struct OnboardingView: View {
    let title: String
    let animationUrl: String
    let description: String
    
    var body: some View {
        VStack {
            let url = URL(string: animationUrl)!
            try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
            
            Text(title)
                .font(.headline)
            Text(description)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    OnboardingView(title: "Finn",
                   animationUrl: "https://build.spline.design/c4wPWTgvnmI7xWdN3L3c/scene.splineswift",
                   description: "Finn was adopted as an infant by two anthropomorphic dogs named Joshua and Margaret, who found him in the woods")
}
