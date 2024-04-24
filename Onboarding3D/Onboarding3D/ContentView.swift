//
//  ContentView.swift
//  Onboarding3D
//
//  Created by Jose Artacho on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TabView {
                OnboardingView(title: "Embark on your journey",
                               color: Color.firstTab,
                               animationUrl: "https://build.spline.design/JDgm8FQiOVV-YOyEfept/scene.splineswift",
                               description: "Create a world of possibilities, the limit is in your imagination.")
                
                OnboardingView(title: "Make it your own",
                               color: Color.secondTab,
                               animationUrl: "https://build.spline.design/oQsBAJRoNQMFHE6-lHi5/scene.splineswift",
                               description: "Personalize your experience to suit your needs and share it in our community.")
                
                OnboardingView(title: "Save your time",
                               color: Color.thirdTab,
                               animationUrl: "https://build.spline.design/yXY-9WyRzUCoZbvaKNxZ/scene.splineswift",
                               description: "Use your own creations to optimize your work and improve your performance.")
                
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
