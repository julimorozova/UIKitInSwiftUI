//
//  ButtonUIKitView.swift
//  UIKitInSwiftUI
//
//  Created by Julia Morozova on 5. 5. 2026..
//
import UIKit
import SwiftUI

struct ButtonUIKitView: UIViewRepresentable {
    var title: String
    var action: () -> Void

    func makeUIView(context: Context) -> UIButton {
        {
            $0.setTitle(title, for: .normal)
            $0.addAction(UIAction(handler: { _ in
                action()
            }), for: .touchUpInside)

            $0.setContentHuggingPriority(.defaultLow, for: .horizontal)
            $0.setContentHuggingPriority(.defaultLow, for: .vertical)

            return $0
        }(UIButton())

    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}

}
