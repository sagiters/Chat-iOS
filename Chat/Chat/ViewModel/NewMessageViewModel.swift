//
//  NewMessageViewModel.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import SwiftUI

class NewMessageViewModel: ObservableObject {

    @Published var users = [User]()

    init() {
        fetchUsers()
    }

    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }

            self.users = documents.compactMap({ try? $0.data(as: User.self) }).filter({ $0.id != AuthViewModel.shared.userSession?.uid })

            print("DEBUG: Users \(self.users)")
        }
    }
}
