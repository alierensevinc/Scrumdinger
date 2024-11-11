//
//  TrailingIconLabelStyle.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 11.11.2024.
//

import SwiftUI

// Custom LabelStyle to place the icon after the label's title (i.e., trailing)
struct TrailingIconLabelStyle: LabelStyle {
    
    // Implementing the required `makeBody` method from the `LabelStyle` protocol
    func makeBody(configuration: Configuration) -> some View {
        // Create an HStack with the title (text) first, followed by the icon
        HStack {
            configuration.title  // The title part of the label
            configuration.icon   // The icon part of the label
        }
    }
}

// Extension to add a convenient static property to use the custom TrailingIconLabelStyle
extension LabelStyle where Self == TrailingIconLabelStyle {
    // This adds a static 'trailingIcon' property to the LabelStyle protocol,
    // making it easy to apply this custom style
    static var trailingIcon: Self { Self() }
}
