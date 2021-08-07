//
//  SettingsHeaderView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)

            VStack(alignment: .leading, spacing: 4) {
                Text("Jack Kuo")
                    .font(.system(size: 18))

                Text("Avaliable")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }

            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}


struct SettingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsHeaderView()
    }
}
