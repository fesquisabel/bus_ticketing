//
//  WalletTypesViewModel.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import Foundation

final class WalletTypesViewModel {
    let walletTypesLogic: WalletTypesLogic
    
    init(walletTypesLogic: WalletTypesLogic = .shared) {
        self.walletTypesLogic = walletTypesLogic
    }
}
