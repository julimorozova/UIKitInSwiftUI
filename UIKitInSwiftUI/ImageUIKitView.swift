//
//  ImageUIKitView.swift
//  UIKitInSwiftUI
//
//  Created by Julia Morozova on 5. 5. 2026..
//

import UIKit
import SwiftUI

struct ImageUIKitView: UIViewRepresentable {
    var image: String

    func makeUIView(context: Context) -> UIImageView {
        {
            
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
            $0.layer.cornerRadius = 40

            $0.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
            $0.setContentCompressionResistancePriority(.defaultLow, for: .vertical)

            return $0
        }(UIImageView())
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let img = UIImage(named: image) {
            uiView.image = img
        }
    }


}
