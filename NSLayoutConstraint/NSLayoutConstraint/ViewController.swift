//
//  ViewController.swift
//  NSLayoutConstraint
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
        
        let leadingConstraints = NSLayoutConstraint(item: button,
                                                    attribute: .leading,
                                                    relatedBy: .equal,
                                                    toItem: view.safeAreaLayoutGuide,
                                                    attribute: .leading,
                                                    multiplier: 1.0,
                                                    constant: 16)
        
        let trailingConstraints = NSLayoutConstraint(item: button,
                                                    attribute: .trailing,
                                                    relatedBy: .equal,
                                                    toItem: view.safeAreaLayoutGuide,
                                                    attribute: .trailing,
                                                    multiplier: 1.0,
                                                    constant: -16)
        
        let bottomSafeAreaConstraints = NSLayoutConstraint(item: button,
                                                    attribute: .bottom,
                                                    relatedBy: .equal,
                                                    toItem: view.safeAreaLayoutGuide,
                                                    attribute: .bottom,
                                                    multiplier: 1.0,
                                                    constant: -16)
        bottomSafeAreaConstraints.priority = .defaultHigh
        
        let bottomViewConstraints = NSLayoutConstraint(item: button,
                                                    attribute: .bottom,
                                                    relatedBy: .lessThanOrEqual,
                                                    toItem: view,
                                                    attribute: .bottom,
                                                    multiplier: 1.0,
                                                    constant: -20)
        
        
        NSLayoutConstraint.activate([leadingConstraints, trailingConstraints, bottomSafeAreaConstraints, bottomViewConstraints])
    }


}

