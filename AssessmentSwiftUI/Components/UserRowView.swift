//
//  UserRowView.swift
//  AssessmentSwiftUI
//
//  Created by PINNINTI DHANANJAYARAO on 29/02/24.
//

import SwiftUI

struct UserRowView: View {
    let user: User
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("\("Name:") \(user.name )")
                Text("\("Email:") \(user.email )")
                Text("\("City:") \(user.address.city )")
                Text("\("Zipcode:") \(user.address.zipcode )")
                .foregroundColor(Color.black.opacity(0.7))
            }
            .padding(.horizontal, 8)

            Spacer()
        }
        .frame(height: 104)
    }
}
