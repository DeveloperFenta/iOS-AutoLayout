//
//  DynamicViewController.swift
//  DynamicScrollView
//
//  Created by Fenta on 2020/10/30.
//

import UIKit

class DynamicViewController: UIViewController {
    
    @IBOutlet var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func add() {
        let label = UILabel()
        let labelCount = stackView.arrangedSubviews.count + 1
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.isHidden = true
        label.text = """
            Label \(labelCount) Test Text 0001
            Label \(labelCount) Test Text 0002
            Label \(labelCount) Test Text 0003
            Label \(labelCount) Test Text 0004
            Label \(labelCount) Test Text 0005
            """
        label.numberOfLines = 0
        label.adjustsFontForContentSizeCategory = true
        
        stackView.addArrangedSubview(label)
        
        UIView.animate(withDuration: 0.3) {
            label.isHidden = false
        }
    }
    
    @IBAction func remove() {
        guard let last = stackView.arrangedSubviews.last else { return }
        
        UIView.animate(withDuration: 0.3) {
            last.isHidden = true
        } completion: { (_) in
            self.stackView.removeArrangedSubview(last)
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
