//
//  NewsTableView.swift
//  UIKitInSwiftUI
//
//  Created by Julia Morozova on 6. 5. 2026..
//

import SwiftUI

struct NewsTableView: UIViewRepresentable {
    let news: [NewsItem]

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView()
        tableView.register(NewsCell.self, forCellReuseIdentifier: "NewsCell")
        tableView.dataSource = context.coordinator
        tableView.delegate = context.coordinator

        return tableView
    }

    func updateUIView(_ uiView: UITableView, context: Context) {
        uiView.reloadData()
    }

    class Coordinator: NSObject, UITableViewDataSource, UITableViewDelegate {
        var parent: NewsTableView
        init(_ parent: NewsTableView) { self.parent = parent }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return parent.news.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
            cell.configure(with: parent.news[indexPath.row])
            return cell
        }

        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 110
        }
    }
}
