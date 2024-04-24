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
    let color: Color
    let animationUrl: String
    let description: String
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
            
            VStack {
                
                splineAnimation
                
                labels
            }
        }
    }
    
    @ViewBuilder
    var backgroundColor: some View {
        #if os(visionOS)
        Color.clear
        #else
        color.ignoresSafeArea()
        #endif
    }
    
    @ViewBuilder
    var splineAnimation: some View {
        if let url = URL(string: animationUrl) {
            try? SplineView(sceneFileURL: url)
            
        }
    }
    
    @ViewBuilder
    var labels: some View {
        Text(title)
            .font(.title2)
            .foregroundStyle(.black)
            .bold()
            .padding()
        
        Text(description)
            .font(.headline)
            .multilineTextAlignment(.center)
            .foregroundStyle(.white)
            .padding(.horizontal, 16)
            .padding(.bottom, 50)
    }
}

#Preview {
    OnboardingView(title: "Make it your own",
                   color: Color.secondTab,
                   animationUrl: "https://build.spline.design/oQsBAJRoNQMFHE6-lHi5/scene.splineswift",
                   description: "Personalize your experience to suit your needs and share it in our community.")
}
