//
//  UserCell.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack {

                Image("venom-7")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())

                // message info
                VStack(alignment: .leading, spacing: 4) {
                    Text("Venom")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Eddie Brock")
                        .font(.system(size: 15))
                }

                Spacer()
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
