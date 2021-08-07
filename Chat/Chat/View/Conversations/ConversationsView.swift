//
//  ConversationsView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct ConversationsView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {

            // chats
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach((0 ... 10), id: \.self) { _ in
                        ConversationCell()
                    }
                }
            }

            // floating button

            Button(action: {
                print("Show user list sheet..")
            }, label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
