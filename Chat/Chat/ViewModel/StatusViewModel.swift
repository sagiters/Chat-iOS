//
//  StatusViewModel.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import Foundation

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notConfigured

    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}
