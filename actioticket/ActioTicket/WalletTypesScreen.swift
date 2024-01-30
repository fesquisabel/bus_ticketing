//
//  WalletTypesScreen.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct WalletTypesScreen: View {
    
    @Binding var toRoot: Bool
    @Environment(\.dismiss) var dismissToRoot: DismissAction
    
    @State private var openTpv: Bool = false
    @State private var showTpvOk: Bool = false
    @State private var showTpvKo: Bool = false

    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            VStack {
                Button("Open TPV") {
                    TPVManager.shared.initialize()
                    showTpvOk = false
                    showTpvKo = false
                    openTpv = true
                }
            }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.blue)
            Spacer()
        }.onAppear {
            if toRoot {
                toRoot = false
                dismissToRoot()
            } else {
                NotificationCenter.default.addObserver(forName: .redsysResponse, object: nil, queue: .main) { (notification) in
                    if let dataOK = RedsysResponseManager.shared.dataOK {
                        showTpvKo = false
                        showTpvOk = true
                    } else if let dataKO = RedsysResponseManager.shared.dataKO {
                        showTpvOk = false
                        showTpvKo = true
                    }
                }
            }
        }
        .onDisappear {
            NotificationCenter.default.removeObserver(self)
        }.fullScreenCover(isPresented: $openTpv) {
            RedsysView()
        }.navigationDestination(
            isPresented: $showTpvOk) {
                TpvOkScreen(toRoot: $toRoot).navigationBarBackButtonHidden()
            }
        .navigationDestination(
            isPresented: $showTpvKo) {
                TpvKoScreen(toRoot: $toRoot)
            }
    }
}
