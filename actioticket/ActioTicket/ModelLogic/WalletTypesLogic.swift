//
//  WalletTypesLogic.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI

@Observable
final class WalletTypesLogic {
    
    static let shared = WalletTypesLogic()
    
    let interactor: WalletTypesInteractor
    
    var walletTypes: [WalletType]
    
    init(interactor: WalletTypesInteractor = WalletTypesInteractorImpl()) {
        self.interactor = interactor
        do {
            self.walletTypes = try interactor.loadWalletTypes()
        } catch {
            print(error)
            self.walletTypes = []
        }
    }
}
