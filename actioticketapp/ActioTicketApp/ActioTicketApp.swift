//
//  ActioTicketApp.swift
//  actioticketapp
//
//  Created by Fermin Esquisabel Garcia on 19/1/24.
//

import SwiftUI
import ActioTicket
import TPVVInLibrary

@main
struct ActioTicketApp: App {
    //let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
