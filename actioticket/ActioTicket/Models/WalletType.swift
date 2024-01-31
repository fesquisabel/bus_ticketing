//
//  WalletType.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import Foundation

struct WalletType: Codable, Identifiable, Hashable {
    
    let id: Int
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "name"
    }
    
}
