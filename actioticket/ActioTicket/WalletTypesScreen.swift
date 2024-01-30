//
//  WalletTypesScreen.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct WalletTypesScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var isPresented: Bool = false

    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Button("Open TPV") {
                    TPVManager.shared.initialize()
                    isPresented.toggle()
                }
            }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
            Spacer()
        }.fullScreenCover(isPresented: $isPresented) {
            RedsysView()
        }.onAppear {
            NotificationCenter.default.addObserver(forName: .redsysResponse, object: nil, queue: .main) { (notification) in
                if let dataOK = RedsysResponseManager.shared.dataOK {
                    dismiss()
                } else if let dataKO = RedsysResponseManager.shared.dataKO {
                    dismiss()
                }
            }
        }
        .onDisappear {
            NotificationCenter.default.removeObserver(self)
        }
    }
}

#Preview {
    WalletTypesScreen()
}
