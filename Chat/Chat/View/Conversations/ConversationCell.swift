//
//  ConversationCell.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct ConversationCell: View {
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
                    Text("Jack Kuo")
                        .font(.system(size: 14, weight: .semibold))
                    Text("This is some test message for now..")
                        .font(.system(size: 15))
                }
                .foregroundColor(.black)

                Spacer()
            }
            .padding(.horizontal)

            Divider()
        }
        .padding(.top)
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
