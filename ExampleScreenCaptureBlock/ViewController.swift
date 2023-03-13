//
//  ViewController.swift
//  ExampleScreenCaptureBlock
//
//  Created by 황재현 on 2023/03/13.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(label)
        
        label.text = "캡처 불가능"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}

