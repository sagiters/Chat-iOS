//
//  Message.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}
