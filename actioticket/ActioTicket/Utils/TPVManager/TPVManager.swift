//
//  TPVManager.swift
//  ActioTicket
//
//  Created by Fermin Esquisabel Garcia on 30/1/24.
//

import TPVVInLibrary

class TPVManager: NSObject {
    
    static let shared = TPVManager()
    
    private var redsysDelegate: RedsysDelegate?
    
    private override init() { }
    
    func initialize() {
        TPVVConfiguration.shared.appLicense = "1jIpQyHIJwDodVCT7Dkz"
        TPVVConfiguration.shared.appEnviroment = .Test
        TPVVConfiguration.shared.appFuc = "340743301"
        TPVVConfiguration.shared.appTerminal = "001"
        TPVVConfiguration.shared.appCurrency = "978"
        TPVVConfiguration.shared.appMerchantConsumerLanguage = "1"
        TPVVConfiguration.shared.appMerchantURL = "https://api-rest.actioticket.io/prod/redsys-test?network_id=12"
    }
    
    func getRedsysDelegate() -> RedsysDelegate {
        if let redsysDelegate {
            return redsysDelegate
        } else {
            redsysDelegate = RedsysDelegate()
            return redsysDelegate!
        }
    }
    
}
