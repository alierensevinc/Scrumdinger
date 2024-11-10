//
//  ScrumdingerAppApp.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 10.11.2024.
//

import SwiftUI

@main
struct ScrumdingerAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
