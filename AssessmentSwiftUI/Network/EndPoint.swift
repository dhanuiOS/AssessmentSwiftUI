//
//  EndPoint.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import Foundation
/// Enum to define API request path
enum API: String {
    case listUsers = "users"
}

/// Enum to define HTTP Methods
enum HTTPMethod: String {
    case get = "GET"
}

typealias HTTPHeaders = [String: String]

/// Structure is used to setup url request parameters
struct Endpoint {
    var baseURL: URL? = URL(string: Constants.baseURL)
    var path: String?
    var jsonParameters: [String: Any]?
    var urlParameters: [String: String]?
    var headers: HTTPHeaders?
    var httpMethod: HTTPMethod
}


