//
//  ContentView.swift
//  Shared
//
//  Created by Moussa Idaassi on 16/04/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
            VStack {
            // Display
                HStack {
                    Button("0")
                }
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
