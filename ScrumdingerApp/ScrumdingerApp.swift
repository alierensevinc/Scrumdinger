//
//  ScrumdingerApp.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 10.11.2024.
//

import SwiftUI

// The main entry point of the Scrumdinger app
@main
struct ScrumdingerApp: App {
    
    // The main scene (window) for the app's UI
    var body: some Scene {
        
        // A WindowGroup defines a new scene containing the app's main view
        WindowGroup {
            
            // Set the initial view to ScrumsView, passing sample data to preview the scrums
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
