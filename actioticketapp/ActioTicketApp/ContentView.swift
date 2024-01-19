//
//  ContentView.swift
//  actioticket
//
//  Created by Fermin Esquisabel Garcia on 19/1/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationView {
            List {
                
            }
            .toolbar {
                ToolbarItem {
                    Button(action: addItem) {
                        Text("Open")
                    }
                }
            }
            Text("Select an item")
        }
    }
    
    func addItem() {
        // TODO: OPEN LIBRARY
    }
}
