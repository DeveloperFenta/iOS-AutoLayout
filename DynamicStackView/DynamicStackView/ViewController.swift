//
//  ViewController.swift
//  DynamicStackView
//
//  Created by Fenta on 2020/10/26.
//

import UIKit

class ViewController: UIViewController {
    
    var verticalStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        verticalStackView.axis = .vertical
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        view.addSubview(verticalStackView)
        
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(horizontalStackView)
        
        let addButton = UIButton()
        addButton.setTitle("Add", for: .normal)
        addButton.setTitleColor(.blue, for: .normal)
        addButton.addTarget(self,
                            action: #selector(addView),
                            for: .touchUpInside)
        
        let removeButton = UIButton()
        removeButton.setTitle("Remove", for: .normal)
        removeButton.setTitleColor(.blue, for: .normal)
        removeButton.addTarget(self,
                               action: #selector(removeView),
                               for: .touchUpInside)
        
        horizontalStackView.addArrangedSubview(addButton)
        horizontalStackView.addArrangedSubview(removeButton)
        
        horizontalStackView.distribution = .fillEqually
        
        horizontalStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        horizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        horizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        verticalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        verticalStackView.leadingAnchor.constraint(equalTo: horizontalStackView.leadingAnchor).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: horizontalStackView.trailingAnchor).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: horizontalStackView.topAnchor).isActive = true
    }
    
    @objc func addView() {
        let view = UIView()
        view.backgroundColor = .blue
        view.isHidden = true
        verticalStackView.addArrangedSubview(view)
        
        UIView.animate(withDuration: 0.3) {
            view.isHidden = false
        }
    }
    
    @objc func removeView() {
        guard let last = verticalStackView.arrangedSubviews.last else { return }
        
        UIView.animate(withDuration: 0.3) {
            last.isHidden = true
        } completion: { (_) in
            self.verticalStackView.removeArrangedSubview(last)
        }
    }
    
}

