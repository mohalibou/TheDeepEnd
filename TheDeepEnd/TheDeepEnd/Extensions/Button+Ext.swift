//
//  Button+Ext.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/29/22.
//

import SwiftUI

extension Button {
    
    init(systemImage: String, action: @escaping () -> Void) where Label == Image {
        self.init(action: action, label: {
            Image(systemName: systemImage)
        })
    }
    
    init(_ title: LocalizedStringKey, systemImage: String, action: @escaping () -> Void) where Label == SwiftUI.Label<Text, Image> {
        self.init(action: action, label: {
            Label(title, systemImage: systemImage)
        })
    }
}

