//
//  UsersListView.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import SwiftUI

struct UsersListView: View {
    @EnvironmentObject var viewModel: UserServiceViewModel
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.users.isEmpty {
                    VStack {
                        Image(systemName: "exclamationmark.icloud.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 64.0, height: 64.0)
                            .foregroundColor(.accentColor)
                        Text("Ooops, No users around!")
                            .font(.title2)
                            .foregroundColor(.red)
                    }
                } else {
                    List(viewModel.users, id: \.id) { user in
                        UserRowView(user: user)
                    }
                    .navigationTitle("Users info")
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .toolbarBackground(AppColor.primary, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
            .environmentObject(UserServiceViewModel(networkManager: NetworkManager()))
    }
}
