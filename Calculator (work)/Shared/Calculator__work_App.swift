//
//  Calculator__work_App.swift
//  Shared
//
//  Created by Moussa Idaassi on 16/04/2022.
//

import SwiftUI

@main
struct Calculator__work_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
