//
//  ContentView.swift
//  actioticket
//
//  Created by Fermin Esquisabel Garcia on 19/1/24.
//

import SwiftUI
import ActioTicket

struct ContentView: View {
    
    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }

    var body: some View {
        VStack {
            NavigationView() {
                NavigationLink(destination: LaunchScreen()) {
                    Text("Open SDK")
                }
            }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
