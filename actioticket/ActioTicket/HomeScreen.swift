//
//  HomeScreen.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct HomeScreen: View {
    
    var closeSDK: (() -> Void)?
    
    @State var toRoot = false
    @Environment(\.dismiss) var dismissToRoot: DismissAction

    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                NavigationLink(destination: WalletTypesScreen(toRoot: $toRoot)) {
                    Text("BUY WALLET")
                }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
                Spacer()
            }.navigationBarItems(
                leading: CloseButton {
                    closeSDK?()
                }
            )
        }
    }
}

struct CloseButton: View {
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
