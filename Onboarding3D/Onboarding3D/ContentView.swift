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
                OnboardingView(title: "Finn",
                               animationUrl: "https://build.spline.design/c4wPWTgvnmI7xWdN3L3c/scene.splineswift",
                               description: "Finn was adopted as an infant by two anthropomorphic dogs named Joshua and Margaret, who found him in the woods")
                
                OnboardingView(title: "Jake",
                               animationUrl: "https://build.spline.design/vBdIyAGKeaa7bCOIhdiP/scene.splineswift",
                               description: "Jake can stretch, shrink, or mold any part of his body to any shape and almost any size, ranging from becoming gigantic to becoming incredibly small")
                
            }
            .tabViewStyle(.page)
        }
    }
}

#Preview {
    ContentView()
}
