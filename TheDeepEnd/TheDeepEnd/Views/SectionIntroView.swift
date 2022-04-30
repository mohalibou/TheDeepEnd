//
//  SectionIntroView.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/29/22.
//

import SwiftUI

struct SectionIntroView: View {
    
    let section: Question
    
    var body: some View {
        VStack {
            ZStack {
                Color.brandPrimary
                    .frame(width: 270, height: 270)
                    .cornerRadius(150)
                Image(section.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 190)
            }
            
            ZStack {
                section.colorName
                    .cornerRadius(50, corners: [.topLeft, .topRight])
                VStack {
                    Text(section.name)
                        .font(.title).bold()
                        .padding(35)
                        .foregroundColor(.white)
                    Text(section.descriptionLong)
                        .padding()
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: QuestionsView(question: section)) {
                        Text("Begin")
                            .modifier(SectionIntroButton())
                            .foregroundColor(section.colorName)
                    }
                    
                    Spacer()
                }
            }
            .frame(height: UIScreen.main.bounds.height/2)
            .offset(x: 0, y: 70)
            //.cornerRadius(50, corners: [.topLeft, .topRight])
            
            
        }
        .navigationTitle("Intro")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SectionIntroView_Previews: PreviewProvider {
    static var previews: some View {
        SectionIntroView(section: Question.preview)
    }
}
