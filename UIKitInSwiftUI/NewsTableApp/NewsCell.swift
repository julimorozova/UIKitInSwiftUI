//
//  NewsCell.swift
//  UIKitInSwiftUI
//
//  Created by Julia Morozova on 6. 5. 2026..
//

import UIKit

struct NewsItem: Identifiable {
    let id = UUID()
    let title: String
    let time: String
    let imageName: String
}

class NewsCell: UITableViewCell {
    func configure(with news: NewsItem) {
        var content = self.defaultContentConfiguration()

        content.text = news.title
        content.textProperties.font = .systemFont(ofSize: 14, weight: .bold)
        content.textProperties.numberOfLines = 3

        content.secondaryText = news.time
        content.secondaryTextProperties.font = .systemFont(ofSize: 14)
        content.secondaryTextProperties.color = .gray

        content.image = UIImage(named: news.imageName)
        content.imageProperties.cornerRadius = 11
        content.imageProperties.maximumSize = CGSize(width: 80, height: 80)
        content.imageProperties.reservedLayoutSize = CGSize(width: 80, height: 80)

        self.contentConfiguration = content
    }
}

extension NewsItem {
    static let mockData = [
        NewsItem(title: "Apple разрешила альтернативы Apple Pay в Европе. Ждем Mir Pay?", time: "2 часа назад", imageName: "cell1"),
        NewsItem(title: "Свежие подробности об Айфон 16: новая батарея с защитой от перегрева", time: "3 часа назад", imageName: "cell2"),
        NewsItem(title: "Правда ли, что Айфон 12 сняли с продажи из-за опасного излучения?", time: "4 часа назад", imageName: "cell1"),
        NewsItem(title: "Тим Кук рассказал, что думает про VR-очки Apple Vision Pro", time: "5 часов назад", imageName: "cell2"),
        NewsItem(title: "Apple разрешила альтернативы Apple Pay в Европе. Ждем Mir Pay?", time: "2 часа назад", imageName: "cell1"),
        NewsItem(title: "Свежие подробности об Айфон 16: новая батарея с защитой от перегрева", time: "3 часа назад", imageName: "cell2"),
        NewsItem(title: "Правда ли, что Айфон 12 сняли с продажи из-за опасного излучения?", time: "4 часа назад", imageName: "cell1"),
        NewsItem(title: "Тим Кук рассказал, что думает про VR-очки Apple Vision Pro", time: "5 часов назад", imageName: "cell2"),
        NewsItem(title: "Apple разрешила альтернативы Apple Pay в Европе. Ждем Mir Pay?", time: "2 часа назад", imageName: "cell1"),
        NewsItem(title: "Свежие подробности об Айфон 16: новая батарея с защитой от перегрева", time: "3 часа назад", imageName: "cell2"),
        NewsItem(title: "Правда ли, что Айфон 12 сняли с продажи из-за опасного излучения?", time: "4 часа назад", imageName: "cell1"),
        NewsItem(title: "Тим Кук рассказал, что думает про VR-очки Apple Vision Pro", time: "5 часов назад", imageName: "cell2")
    ]
}
