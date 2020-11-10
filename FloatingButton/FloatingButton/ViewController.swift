//
//  ViewController.swift
//  FloatingButton
//
//  Created by Fenta on 2020/11/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let menuButton = MenuButton()
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(menuButton)
        
        menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                             constant: -20).isActive = true
        menuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                           constant: -20).isActive = true
    }

}

