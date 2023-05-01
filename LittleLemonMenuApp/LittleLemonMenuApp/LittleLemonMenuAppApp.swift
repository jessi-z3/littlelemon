//
//  LittleLemonMenuAppApp.swift
//  LittleLemonMenuApp
//
//  Created by Jessi Zimmerman on 4/28/23.
//

import SwiftUI

@main
struct LittleLemonMenuAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
