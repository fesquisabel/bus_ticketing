//
//  WalletTypesInteractorPreview.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import Foundation

struct WalletTypesInteractorPreview: WalletTypesInteractor {
    func loadWalletTypes() throws -> [WalletType] {
        var walletTypes = [WalletType]()
        walletTypes.append(WalletType(id: 0, name: "Billete sencillo"))
        walletTypes.append(WalletType(id: 1, name: "Bonobús"))
        return walletTypes
    }
    
    func saveWalletTypes(_ walletTypes: [WalletType]) throws {
        // TODO: PENDIENTE
    }
}

extension WalletTypesViewModel {
    static let preview = WalletTypesViewModel(walletTypesLogic: WalletTypesLogic(interactor: WalletTypesInteractorPreview()))
}
