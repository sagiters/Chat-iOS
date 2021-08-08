//
//  MessageView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct MessageView: View {

    let viewModel: MessageViewModel

    var body: some View {
        HStack {
            if viewModel.isFromCurrentUser {

                Spacer()

                Text(viewModel.message.text)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .font(.system(size: 15))
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.leading, 100)
                    .padding(.horizontal)

            } else {
                HStack(alignment: .bottom) {
                    Image("venom-7")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())

                    Text(viewModel.message.text)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.system(size: 15))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                .padding(.trailing, 80)

                Spacer()
            }
        }
    }
}

//struct MessageView_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageView(isFromCurrentUser: false, messageText: "Test message")
//    }
//}
