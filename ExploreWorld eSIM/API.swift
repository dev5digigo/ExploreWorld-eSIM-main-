//
//  API.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 07/05/24.
//

import Alamofire

//// Define a struct for your response
//struct NotificationResponse: Decodable {
//    // Define properties according to the structure of your response
//    // For example, if your response is JSON with keys "status", "message", etc.,
//    // define properties with corresponding names and types here.
//}
//
//struct NotificationParameters: Encodable {
//    let mobile: String
//}
//
//func callAPI() {
//    // Define the URL
//    let url = "http://145.239.253.21/pamar/easysim_admin/index.php/Notification/getnotification"
//
//    // Define the parameters
//    let parameters = ["mobile":"+917203939884"]//NotificationParameters(mobile: "+917203939884")
//
//    // Make the POST request
//    AF.request(url, method: .post, parameters: parameters, encoder: URLEncoding.default)
//        .responseDecodable(of: NotificationResponse.self) { response in
//            switch response.result {
//            case .success(let value):
//                // Handle successful response
//                print("Response: \(value)")
//                // Here you can parse the response and update your UI accordingly
//            case .failure(let error):
//                // Handle error
//                print("Error: \(error)")
//            }
//        }
//}
