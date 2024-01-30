//
//  HomeScreen.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct HomeScreen: View {
    
    var dismissAction: () -> Void

    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                NavigationLink(destination: WalletTypesScreen()) {
                    Text("BUY WALLET")
                }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
                Spacer()
            }.navigationBarItems(
                leading: MyBackButton {
                    dismissAction()
                }
            )
        }
    }
}

struct MyBackButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: "arrow.left")
                .foregroundColor(.blue)
        }
    }
}
