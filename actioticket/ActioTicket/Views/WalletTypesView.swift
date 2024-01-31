//
//  WalletTypesView.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct WalletTypesView: View {
    
    @Environment(\.dismiss) var dismiss

    @Binding var toRoot: Bool
    @Environment(\.dismiss) var dismissToRoot: DismissAction
    
    //@State var vm = WalletTypesViewModel()
    @State var vm = WalletTypesViewModel(walletTypesLogic: WalletTypesLogic(interactor: WalletTypesInteractorPreview()))

    var body: some View {
        ZStack {
            VStack {
                Color.ityneriBlue.edgesIgnoringSafeArea(.all)
            }
            VStack(alignment: .leading) {
                Text("Comprar título")
                    .font(.title2)
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                List(vm.walletTypesLogic.walletTypes) { walletType in
                    NavigationLink {
                        WalletTypeDetailView(toRoot: $toRoot, walletType: walletType)
                    } label: {
                        WalletTypeCell(walletType: walletType)
                    }
                }.listRowBackground(Color.clear)
                    .background(.clear)
            }
        }.onAppear {
            if toRoot {
                toRoot = false
                dismissToRoot()
            }
        }.navigationBarItems(
            leading: BackButton {
                dismiss()
            }
        ).navigationBarBackButtonHidden()
    }
}

#Preview {
    WalletTypesView(toRoot: .constant(false), vm: .preview)
}

struct BackButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: "arrow.left")
                .foregroundColor(.white)
        }
    }
}
