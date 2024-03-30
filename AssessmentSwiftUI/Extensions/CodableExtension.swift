//
//  CodableExtension.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import Foundation


extension Data {
    func decode<T: Decodable>(type: T.Type) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try? decoder.decode(type, from: self)
    }
}
