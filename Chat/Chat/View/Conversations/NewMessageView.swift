//
//  NewMessageView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct NewMessageView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach((0 ... 10), id: \.self) { _ in
                    UserCell()
                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
