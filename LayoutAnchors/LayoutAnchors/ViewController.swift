//
//  ViewController.swift
//  LayoutAnchors
//
//  Created by Fenta on 2020/10/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        button.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
        button.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
        
        let safeButtomAnchor = button.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        safeButtomAnchor.isActive = true
        safeButtomAnchor.priority = .defaultHigh
        
        let viewButtomAnchor = button.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
        viewButtomAnchor.isActive = true
        viewButtomAnchor.priority = .init(1000)
    }

}

