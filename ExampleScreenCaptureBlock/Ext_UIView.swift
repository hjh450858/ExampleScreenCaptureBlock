//
//  Ext_UIView.swift
//  ExampleScreenCaptureBlock
//
//  Created by 황재현 on 2023/03/13.
//

import Foundation
import UIKit



extension UIView {
    // 캡처 방지 뷰
    func makeSecure() {
        DispatchQueue.main.async {
            let field = UITextField()
            field.isSecureTextEntry = true
            self.addSubview(field)
            field.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            field.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            self.layer.superlayer?.addSublayer(field.layer)
            field.layer.sublayers?.first?.addSublayer(self.layer)
        }
    }
}
