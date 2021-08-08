//
//  SettingsHeaderView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct SettingsHeaderView: View {

    private let user: User

    init(user: User) {
        self.user = user
    }

    var body: some View {
        HStack {
            Image("venom-7")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)

            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullname)
                    .font(.system(size: 18))
                    .foregroundColor(.black)

                Text("Avaliable")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }

            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}


//struct SettingsHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsHeaderView()
//    }
//}
