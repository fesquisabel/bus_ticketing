//
//  DataController.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 29/1/24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "actioticket")

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("CoreData failed to load: \(error.localizedDescription)")
            } else {
                print("Success load in init func")
            }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    func loadPersistentStores() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("CoreData failed to load: \(error.localizedDescription)")
            } else {
                print("Success load in loadPersistentStores func")
            }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
}
