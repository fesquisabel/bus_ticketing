//
//  TpvOkView.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

struct TpvOkView: View {
    
    @Binding var toRoot: Bool
    @Environment(\.dismiss) var dismissToRoot: DismissAction
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            Text("OK TPV")
            VStack {
                Spacer()
                Button("BACK TO HOME") {
                    toRoot = true
                    dismissToRoot()
                }
            }.buttonStyle(.borderedProminent)
                .bold()
                .controlSize(.large)
                .font(.title3)
                .foregroundColor(.white)
                .tint(.ityneriBlue)
            Spacer()
        }
    }
}
