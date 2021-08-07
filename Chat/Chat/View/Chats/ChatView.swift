//
//  ChatView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct ChatView: View {

    @State private var messageText = ""

    var body: some View {
        VStack {
            // messages
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach((0 ... 10), id: \.self) { _ in
                        MessageView(isFromCurrentUser: false)
                    }
                }
            }

            // input view
            CustomInputView(text: $messageText) {
                sendMessage()
            }
        }
        .navigationTitle("venom")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }

    func sendMessage() {
        print("Send message \(messageText)")
        messageText = ""
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
