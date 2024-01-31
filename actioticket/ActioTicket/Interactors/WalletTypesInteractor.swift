//
//  WalletTypesInteractor.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import Foundation

protocol WalletTypesInteractor {
    func loadWalletTypes() throws -> [WalletType]
    func saveWalletTypes(_ walletTypes: [WalletType]) throws
}

struct WalletTypesInteractorImpl: WalletTypesInteractor {
    func loadWalletTypes() throws -> [WalletType] {
        return []
    }
    
    func saveWalletTypes(_ walletTypes: [WalletType]) throws {
        
    }
}
