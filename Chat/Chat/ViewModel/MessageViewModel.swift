//
//  MessageViewModel.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import Foundation

struct MessageViewModel {

    let message: Message

    init(_ message: Message) {
        self.message = message
    }

    var currentUid: String {
        return AuthViewModel.shared.userSession?.uid ?? ""
    }

    var isFromCurrentUser: Bool {
        return message.fromId == currentUid
    }

    var profileImageUrl: URL? {
        guard let profileImageUrl = message.user?.profileImageUrl else { return nil }
        return URL(string: profileImageUrl)
    }
}
