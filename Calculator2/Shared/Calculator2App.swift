//
//  Calculator2App.swift
//  Shared
//
//  Created by Moussa Idaassi on 13/04/2022.
//

import SwiftUI

@main
struct Calculator2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
