//
//  OnboardingView.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/20/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var needsAppOnboarding: Bool
    
    @State private var tabViewIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $tabViewIndex) {
                PageView(imageName: "onboarding1", name: "Communication", description: "Communication is key to creating deeper connections in an era where connection has never been more important than ever. ").tag(0)
                PageView(imageName: "onboarding2", name: "Community", description: "Foster your community by asking questions designed to create more meaningful ties and connections with those around you. ").tag(1)
                PageView(imageName: "onboarding3", name: "Friendship", description: "Creating more meaningful friendships where you get to really understand those who are closest to you.").tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            HStack {
                Button("Skip") {needsAppOnboarding.toggle()}
                    .modifier(OnboardingButtonSkip())
                Spacer()
                if (tabViewIndex != 2) {
                    Button(systemImage: "chevron.right") {tabViewIndex += 1}
                        .modifier(OnboardingButtonNext())
                } else {
                    Button("Get Started") {needsAppOnboarding.toggle()}
                        .modifier(OnboardingButtonNext())
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(needsAppOnboarding: .constant(false))
    }
}

struct PageView: View {
    
    var imageName: String
    var name: String
    var description: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            /*
             
             .padding()
             .cornerRadius(30)
             .background(.gray.opacity(0.10))
             .cornerRadius(10)
             .padding()*/
            Text(name)
            //.font(.system(size: 60, weight: .bold, design: .default))
                .font(.largeTitle).bold()
            //.foregroundColor(.white)
                .padding()
            Text(description)
                .font(.subheadline)
                .frame(width: 300)
                .multilineTextAlignment(.center)
            //.foregroundColor(.white)
        }
    }
}
