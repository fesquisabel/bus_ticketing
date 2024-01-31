//
//  WalletTypeDetailView.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct WalletTypeDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var toRoot: Bool
    @Environment(\.dismiss) var dismissToRoot: DismissAction
    
    @State private var openTpv: Bool = false
    @State private var showTpvOk: Bool = false
    @State private var showTpvKo: Bool = false
    @State var walletType: WalletType
    
    var body: some View {
        ZStack {
            VStack {
                Color.ityneriBlue.edgesIgnoringSafeArea(.all).frame(height: 10)
                Color.lightGray.edgesIgnoringSafeArea(.all)
            }
            VStack {
                Text(walletType.name)
                    .font(.title2)
                    .foregroundStyle(.ityneriBlue)
                    .padding(.top, 20)
                Spacer()
                Button("Pagar") {
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
                .tint(.ityneriBlue)
            Spacer()
        }.onAppear {
            if toRoot {
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
                TpvOkView(toRoot: $toRoot).navigationBarBackButtonHidden()
            }
        .navigationDestination(
            isPresented: $showTpvKo) {
                TpvKoView(toRoot: $toRoot)
            }
        .navigationBarItems(
            leading: BackButton {
                dismiss()
            }
        ).navigationBarBackButtonHidden()
    }
}

#Preview {
    WalletTypeDetailView(toRoot: .constant(false), walletType: WalletType(id: 0, name: "Billete Sencillo"))
}
