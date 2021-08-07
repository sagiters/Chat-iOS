//
//  StatusSelectorView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct StatusSelectorView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()

                    HStack {
                        Text("Avaliable")
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)

                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()

                    ForEach((0 ... 10), id: \.self) { _ in
                        HStack {
                            Text("Avaliable")
                            Spacer()
                        }
                        .padding()
                        .background(Color.white)
                    }
                }
            }
        }
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectorView()
    }
}
