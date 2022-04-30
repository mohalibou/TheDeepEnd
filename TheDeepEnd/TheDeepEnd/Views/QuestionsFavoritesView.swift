//
//  QuestionsFavoritesView.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/30/22.
//

import SwiftUI

struct QuestionsFavoritesView: View {
    
    @AppStorage("favorites") var favorites: [String] = []
    
    var body: some View {
        TabView {
            if favorites.count == 0 {
                FavoriteCardView(question: "You have not added any favorites.")
            } else {
                ForEach(0..<favorites.count, id: \.self) { favorite in
                    FavoriteCardView(question: favorites[favorite])
                }
            }
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle("Favorites")
    }
}

struct QuestionsFavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsFavoritesView()
    }
}

struct FavoriteCardView: View {
    
    let question: String
    
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
        }
    }
}
