//
//  ScrumdingerAppApp.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 10.11.2024.
//

import SwiftUI

@main
struct ScrumdingerAppApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
