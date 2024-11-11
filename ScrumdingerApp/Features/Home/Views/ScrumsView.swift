//
//  ScrumsView.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 11.11.2024.
//

import SwiftUI

// The main view for displaying a list of daily scrums
struct ScrumsView: View {
    // A list of scrums to display in the view, passed as a property
    let scrums: [DailyScrum]
    
    var body: some View {
        // NavigationStack enables navigation between views in a stack-based manner
        NavigationStack {
            // List component to display each scrum item in a scrollable list
            List(scrums) { scrum in
                // NavigationLink wraps each item to allow navigation to DetailView when tapped
                NavigationLink(destination: DetailView(scrum: scrum), label: {
                    // Display each scrum in a CardView
                    CardView(scrum: scrum)
                })
                // Set the background color of each list row based on the scrum's theme color
                .listRowBackground(scrum.theme.mainColor)
            }
            // Title for the navigation bar
            .navigationTitle("Daily Scrums")
            // Toolbar with an "Add" button in the navigation bar
            .toolbar {
                // Button for adding a new scrum (currently no action defined)
                Button(action: {}) {
                    Image(systemName: "plus") // Display "+" icon
                }
                // Accessibility label for screen readers to describe the button's purpose
                .accessibilityLabel("Add a new daily scrum")
            }
        }
    }
}

// Preview provider to display a preview of ScrumsView in Xcode with sample data
struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
