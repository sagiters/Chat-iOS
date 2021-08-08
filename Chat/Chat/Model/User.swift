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

let MOCK_USER = User(id: "123123123", username: "Test", fullname: "test", email: "test@gmail.com", profileImageUrl: "")
