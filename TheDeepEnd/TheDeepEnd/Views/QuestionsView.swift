//
//  QuestionsView.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/26/22.
//

import SwiftUI

struct QuestionsView: View {
    
    let question: Question
    
    var body: some View {
        TabView() {
            CardView(question: question.question1)
            CardView(question: question.question2)
            CardView(question: question.question3)
            CardView(question: question.question4)
            CardView(question: question.question5)
            CardView(question: question.question6)
            CardView(question: question.question7)
            CardView(question: question.question8)
            CardView(question: question.question9)
            CardView(question: question.question10)
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView(question: Question.preview)
    }
}


struct CardView: View {
    
    let question: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.white)
                .shadow(color: .gray, radius: 10)
            
            VStack {
                Text(question)
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 320, height: 560)
    }
}
