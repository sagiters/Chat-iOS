//
//  ConversationCell.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI
import Kingfisher

struct ConversationCell: View {

    @ObservedObject var viewModel: MessageViewModel

    var body: some View {
        VStack {
            HStack {

                KFImage(viewModel.chatPartnerProfileImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())

                // message info
                VStack(alignment: .leading, spacing: 4) {
                    Text(viewModel.fullname)
                        .font(.system(size: 14, weight: .semibold))
                    Text(viewModel.message.text)
                        .font(.system(size: 15))
                }
                .foregroundColor(.black)

                Spacer()
            }
            .padding(.horizontal)

            Divider()
        }
        .padding(.top)
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

//struct ConversationCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ConversationCell()
//    }
//}
