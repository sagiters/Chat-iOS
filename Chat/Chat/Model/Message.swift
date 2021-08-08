//
//  Message.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import FirebaseFirestoreSwift
import Firebase

struct Message: Identifiable, Decodable {
    @DocumentID var id: String?
    let fromId: String
    let toId: String
    let read: Bool
    let text: String
    let timestamp: Timestamp

    var user: User?
}
