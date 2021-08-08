//
//  ChatView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct ChatView: View {

    @State private var messageText = ""
    @ObservedObject var viewModel = ChatViewModel()

    private let user: User

    init(user: User) {
        self.user = user
    }

    var body: some View {
        VStack {
            // messages
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, messageText: message.messageText)
                    }
                }
            }

            // input view
            CustomInputView(text: $messageText) {
                sendMessage()
            }
        }
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }

    func sendMessage() {
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}

//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView()
//    }
//}
