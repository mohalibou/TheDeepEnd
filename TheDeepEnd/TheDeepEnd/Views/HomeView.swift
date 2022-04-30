//
//  HomeView.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/20/22.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(QuestionData.questions) { selection in
                    NavigationLink(destination: SectionIntroView(section: selection)) {
                        SelectionView(selection: selection)
                            .padding(5)
                    }
                    .buttonStyle(FlatLinkStyle())
                }
            }
            .navigationTitle("The Deep End")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: QuestionsFavoritesView()) {
                        Text("Favorites")
                    }
                    
                }
            }
        }
        .sheet(isPresented: $needsAppOnboarding) {
            OnboardingView(needsAppOnboarding: $needsAppOnboarding)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct SelectionView: View {
    
    var selection: Question
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            HStack {
                Color.clear
                selection.colorName
                    .cornerRadius(20)
                    .frame(width: 290, height: 180)
            } // background
            
            HStack {
                ZStack {
                    Color.brandPrimary
                        .frame(width: 110, height: 110)
                        .cornerRadius(150)
                    Image(selection.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70)
                } // image
                .padding(5)
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text(selection.name)
                        .font(.title).bold()
                        .foregroundColor(.white)
                    Spacer()
                    Text(selection.description)
                        .foregroundColor(.white)
                        .padding(.trailing, 25)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
        }
        .frame(maxWidth: 360, maxHeight: 220)
    }
}
