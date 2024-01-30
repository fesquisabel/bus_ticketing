//
//  RedsysView.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import SwiftUI
import TPVVInLibrary

struct RedsysView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> WebViewPaymentController {
        let wpView = WebViewPaymentController(
            orderNumber: random(length: 10),
            amount: 2.0,
            productDescription: "Buy wallet",
            transactionType: .normal,
            identifier: "",
            extraParams: ["DS_MERCHANT_EXCEP_SCA": "LWV"]
        )
        wpView.delegate = TPVManager.shared.getRedsysDelegate()
        return wpView
    }
        
    func updateUIViewController(_ uiViewController: WebViewPaymentController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
    
    func random(length: Int = 10) -> String {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString: String = ""
        
        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(base.count))
            randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }

}
