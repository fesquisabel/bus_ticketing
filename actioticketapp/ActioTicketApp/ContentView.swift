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
            Text("")
            Button("open_sdk") {
                isPresented.toggle()
            }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
        }.fullScreenCover(isPresented: $isPresented) {
            LaunchView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
