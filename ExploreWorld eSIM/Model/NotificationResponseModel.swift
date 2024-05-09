//
//  NotificationResponseModel.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 08/05/24.
//

import Foundation

struct NotificationResponseModel: Codable {

    let error: Bool?
    let status: String?
    let data: [NotificationData]?
    let message: String?

}


struct NotificationData: Codable {

    let title: String?
    let description: String?
    let datetime: String?

}
