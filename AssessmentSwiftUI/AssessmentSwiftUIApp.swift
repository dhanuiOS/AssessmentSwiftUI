//
//  AssessmentSwiftUIApp.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import SwiftUI

@main
struct AssessmentSwiftUIApp: App {
    
    @StateObject private var viewModel = UserServiceViewModel(networkManager: NetworkManager())

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
