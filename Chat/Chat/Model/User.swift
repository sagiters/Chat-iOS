//
//  User.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
    let profileImageUrl: String
}
