//
//  RedsysDelegate.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import Foundation
import TPVVInLibrary

class RedsysDelegate: WebViewPaymentResponseDelegate {
    
    func responsePaymentKO(response: (TPVVInLibrary.WebViewPaymentResponseKO)) {
        print("************************************* ************************************* KO")
        RedsysResponseManager.shared.updateData(dataKO: response)
    }
    
    func responsePaymentOK(response: (TPVVInLibrary.WebViewPaymentResponseOK)) {
        print("************************************* ************************************* OK")
        RedsysResponseManager.shared.updateData(dataOK: response)
    }
    
}

extension Notification.Name {
    static let redsysResponse = Notification.Name("RedsysResponse")
}

class RedsysResponseManager {
    static let shared = RedsysResponseManager()

    @Published var dataOK: TPVVInLibrary.WebViewPaymentResponseOK?
    @Published var dataKO: TPVVInLibrary.WebViewPaymentResponseKO?

    func updateData(dataOK: TPVVInLibrary.WebViewPaymentResponseOK? = nil, dataKO: TPVVInLibrary.WebViewPaymentResponseKO? = nil) {
        self.dataOK = dataOK
        self.dataKO = dataKO
        NotificationCenter.default.post(name: .redsysResponse, object: nil)
    }
}
