//
//  APPError.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import Foundation

/// Enum to define app errors
enum AppError: Int, Error {
    case api
    case network
    case technical
    case timeout
    case unknown

}
