//
//  ContentView.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var viewModel: UserServiceViewModel

    var body: some View {
        Group {
                UsersListView()
                    .navigationBarHidden(false)
                    .navigationTitle("Users Info")
                    .navigationBarTitleDisplayMode(.large)
         
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserServiceViewModel(networkManager: NetworkManager()))
    }
}
