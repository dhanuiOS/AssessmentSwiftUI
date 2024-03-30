//
//  UserSericeViewModel.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import Foundation

@MainActor
final class UserServiceViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var errorMessage = "Unknown Error"
    @Published var showError = false

    private let networkManager: NetworkManagerProtocol

    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
        fetchUsers()
    }

    func fetchUsers() {
        let endpoint = Endpoint(path: API.listUsers.rawValue, httpMethod: .get)
        do {
            let urlRequest = try URLRequestBuilder.buildURLRequest(endpoint: endpoint)
            try networkManager.request(urlRequest: urlRequest) { data, response, error in
                self.parseUserResponse(response: response as? HTTPURLResponse, data: data)
            }
        } catch {
            showError = true
        }
    }
}

extension UserServiceViewModel {
    func parseUserResponse(response: HTTPURLResponse?, data: Data?) {
        var users = [User]()
        if response?.statusCode == Constants.statusOK, let data {
            users = data.decode(type: [User].self)!
        }
        DispatchQueue.main.async {
            self.users = users
        }
    }
}

