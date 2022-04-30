//
//  OnboardingPage.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/20/22.
//

import Foundation

struct OnboardingPage: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var imageName: String
    var tag: Int
    
    static var preview = OnboardingPage(name: "Title Example",
                                        description: "This is a sample description for the purpose of debugging",
                                        imageName: "onboarding1",
                                        tag: 0)
}
