//
//  NewsContentView.swift
//  UIKitInSwiftUI
//
//  Created by Julia Morozova on 6. 5. 2026..
//

import SwiftUI

struct NewsContentView: View {
    let newsData = NewsItem.mockData

    var body: some View {
        VStack(alignment: .leading) {
            Text("Новости")
                .font(.system(size: 34, weight: .bold))
                .padding(.horizontal)
                .padding(.top, 20)

            NewsTableView(news: newsData)
        }
    }
}

#Preview {
    NewsContentView()
}
