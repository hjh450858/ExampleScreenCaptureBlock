//
//  ViewController.swift
//  ExampleScreenCaptureBlock
//
//  Created by 황재현 on 2023/03/13.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel = {
        var label = UILabel()
        
        label.text = "캡처를 해도 이 글자는 안보임"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(label)
        
        // 라벨 캡처 숨기기
        label.makeSecure()
        
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}

