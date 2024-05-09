//
//  GetPaymentDataModel.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 08/05/24.
//

//import Foundation
//
//struct GetPaymentDataModel: Codable {
//
//    let data: [PaymentData]?
//    let msg: String?
//    let code: Int?
//
//}
//
//struct PaymentData: Codable {
//
//    let id: String?
//    let portalName: String?
//    let portalCharges: String?
//    let createdDate: String?
//    let portalPercentage: String?
//
//}
struct GetPaymentDataModel: Codable {
    let data: [PaymentData]?
    let msg: String?
    let code: Int?
}

struct PaymentData: Codable {
    let id: String?
    let portal_name: String?
    let portal_charges: String?
    let created_date: String?
    let portal_percentage: String?

    
    }

