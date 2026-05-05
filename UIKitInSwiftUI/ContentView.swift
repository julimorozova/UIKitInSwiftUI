//
//  ContentView.swift
//  UIKitInSwiftUI
//
//  Created by Julia Morozova on 5. 5. 2026..
//

import SwiftUI

struct ContentView: View {
    func updateProfile() {}
    let bgs = ["bg1", "bg2"]
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            VStack(spacing: 19) {
               ImageUIKitView(image: "avatar")
                    .frame(width: 80, height: 80)
                    .clipped()
                Text("Имя Фамилия")
                    .font(.system(size: 20, weight: .bold))
            }
            .frame(maxWidth: .infinity, alignment: .center)

            VStack(alignment: .leading, spacing: 7) {
                Text("О себе")
                    .font(.system(size: 12, weight: .bold))
                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
                    .font(.system(size: 12, weight: .regular))
                    .padding(.horizontal, 13)
                    .padding(.vertical, 20)
                    .background(.bg)
                    .cornerRadius(14)
            }

            VStack(alignment: .leading, spacing: 14) {
                Text("Фото")
                    .font(.system(size: 12, weight: .bold))
                HStack(spacing: 10) {
                    ForEach(bgs,  id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .frame(height: 190)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
            }

            Spacer()

            ButtonUIKitView(title: "Редактировать", action: updateProfile)
                .background(.blue)
                .foregroundStyle(.white)
                .frame(height: 60)
                .cornerRadius(20)
        }
        .padding(.horizontal, 20)


    }
}

#Preview {
    ContentView()
}
