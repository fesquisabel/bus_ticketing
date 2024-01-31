//
//  ExtString.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 31/1/24.
//

import SwiftUI

extension String {
    
    func asLocalizedText() -> Text {
        return Text(String(localized: "\(self)", bundle: Bundle(identifier: "com.geoactio.actioticketlibrary")))
    }
    
}
