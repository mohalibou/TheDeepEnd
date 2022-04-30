//
//  QuestionsView.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/26/22.
//

import SwiftUI

struct QuestionsView: View {
    
    @State private var alertItem: AlertItem?
    let question: Question
    
    var body: some View {
        TabView() {
            CardView(question: question.question1, alertItem: $alertItem)
            CardView(question: question.question2, alertItem: $alertItem)
            CardView(question: question.question3, alertItem: $alertItem)
            CardView(question: question.question4, alertItem: $alertItem)
            CardView(question: question.question5, alertItem: $alertItem)
            CardView(question: question.question6, alertItem: $alertItem)
            CardView(question: question.question7, alertItem: $alertItem)
            CardView(question: question.question8, alertItem: $alertItem)
            CardView(question: question.question9, alertItem: $alertItem)
            CardView(question: question.question10, alertItem: $alertItem)
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .alert(item: $alertItem, content: { $0.alert })
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView(question: Question.preview)
    }
}

struct CardView: View {
    
    let question: String
    @AppStorage("favorites") var favorites: [String] = []
    @Binding var alertItem: AlertItem?
    
    var body: some View {
        VStack {
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
            Button(systemImage: "star") {saveFavorite(question: question)}
                .imageScale(.large)
                .padding()
        }
    }
    
    func saveFavorite(question: String) {
        if favorites.contains(question) {
            alertItem = AlertContext.alreadyAddedFavorite
        } else {
            favorites.append(question)
        }
    }
}
