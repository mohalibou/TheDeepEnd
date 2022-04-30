//
//  ViewModifiers.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/20/22.
//

import SwiftUI

struct RegularButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .bold))
            .frame(width: 280, height: 44)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct OnboardingButtonNext: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .bold))
            .frame(width: 120, height: 44)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.trailing, 40)
    }
}

struct OnboardingButtonSkip: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .bold))
            .frame(width: 120, height: 44)
            .foregroundColor(.gray)
            .cornerRadius(8)
            .padding(.leading, 40)
    }
}

struct SectionIntroButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .bold))
            .frame(width: 120, height: 44)
            .background(Color.white)
            .cornerRadius(8)
    }
}

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
