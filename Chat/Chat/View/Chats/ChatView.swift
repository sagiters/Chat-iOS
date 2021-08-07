//
//  ChatView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct ChatView: View {
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
        }
        .navigationTitle("venom")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
