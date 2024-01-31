//
//  WalletTypeCell.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 31/1/24.
//

import SwiftUI

struct WalletTypeCell: View {
    
    let walletType: WalletType
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(walletType.name).font(.headline)
            Text("1,20€").font(.caption)
        }.frame(height: 80)
    }
}

#Preview {
    WalletTypeCell(walletType: WalletType(id: 1, name: "Billete Sencillo"))
}
