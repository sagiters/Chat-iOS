//
//  EditProfileView.swift
//  Chat
//
//  Created by Lien-Tai Kuo on 2021/8/7.
//

import SwiftUI

struct EditProfileView: View {

    @State private var fullname = "Jack Kuo"

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 44) {

                VStack {
                    HStack {
                        VStack {
                            Image("venom-7")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())

                            Button(action: {
                                print("Change profile photo here..")
                            }, label: {
                                Text("Edit")
                            })
                        }
                        .padding(.top)

                        Text("Enter your name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding([.bottom, .horizontal])
                    }

                    Divider()
                        .padding(.horizontal)

                    TextField("", text: $fullname)
                        .padding(8)
                }
                .background(Color.white)

                VStack(alignment: .leading) {

                    Text("Status")
                        .padding()
                        .foregroundColor(.gray)

                    NavigationLink(
                        destination: StatusSelectorView(),
                        label: {
                            HStack {
                                Text("At the movies")

                                Spacer()

                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                        })
                }

                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Jack Profile")
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
