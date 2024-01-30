//
//  ActioTicketDelegate.swift
//  actioticket
//
//  Created by Fermin Esquisabel Garcia on 19/1/24.
//

import Foundation
import SwiftUI

class ActioTicketDelegate {

    @StateObject static var dataController = DataController()
    
    public static func loadDataController() {
        dataController.loadPersistentStores()
    }
    
}
