//
//  Theme.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 11.11.2024.
//

import SwiftUI

// Enum representing different themes for the app, each with a raw string value
enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow

    // Property to get the accent color for each theme
    var accentColor: Color {
        switch self {
        // These themes use black as the accent color
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow:
            return .black
        // These themes use white as the accent color
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }
    
    // Property to get the main color for each theme
    var mainColor: Color {
        switch self {
        case .bubblegum: return Color.pink
        case .buttercup: return Color.yellow
        case .indigo: return Color.indigo
        case .lavender: return Color.purple.opacity(0.7)
        case .magenta: return Color.pink.opacity(0.8)
        case .navy: return Color.blue.opacity(0.8)
        case .orange: return Color.orange
        case .oxblood: return Color.red.opacity(0.7)
        case .periwinkle: return Color.blue.opacity(0.6)
        case .poppy: return Color.red
        case .purple: return Color.purple
        case .seafoam: return Color.green.opacity(0.7)
        case .sky: return Color.blue.opacity(0.5)
        case .tan: return Color.brown.opacity(0.7)
        case .teal: return Color.teal
        case .yellow: return Color.yellow
        }
    }
    
    // Property to get the name of the theme in a capitalized form
    var name: String {
        rawValue.capitalized
    }
}
