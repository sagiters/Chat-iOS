//
//  ChatViewModel.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/8.
//

import Foundation

class ChatViewModel: ObservableObject {

    @Published var messages = [Message]()

    init() {

    }

    func sendMessage(_ messageText: String) {
        
    }
}
