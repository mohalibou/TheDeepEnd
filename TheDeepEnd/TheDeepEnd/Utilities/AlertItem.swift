//
//  Alert.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/30/22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
    var alert: Alert {
        Alert(title: title, message: message, dismissButton: dismissButton)
    }
}

struct AlertContext {

    static let alreadyAddedFavorite = AlertItem(title: Text("Already Added"),
                                                message: Text("You already added this favorite."),
                                                dismissButton: .default(Text("OK")) )
    
}

