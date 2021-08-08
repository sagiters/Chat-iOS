//
//  MessageViewModel.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import Foundation

struct MessageViewModel {
    let message: Message

    var currentUid: String {
        return AuthViewModel.shared.userSession?.uid ?? ""
    }

    var isFromCurrentUser: Bool {
        return message.fromId == currentUid
    }
}
