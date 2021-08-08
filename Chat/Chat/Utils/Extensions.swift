//
//  Extensions.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
