//
//  ContentView.swift
//  actioticket
//
//  Created by Fermin Esquisabel Garcia on 19/1/24.
//

import SwiftUI
import ActioTicket

struct ContentView: View {
    
    @State private var isPresented: Bool = false

    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }

    var body: some View {
        VStack {
            Button("Open SDK") {
                isPresented.toggle()
            }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
        }.fullScreenCover(isPresented: $isPresented) {
            LaunchScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
