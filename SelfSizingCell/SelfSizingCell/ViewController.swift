//
//  ViewController.swift
//  SelfSizingCell
//
//  Created by Fenta on 2020/11/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let customCell = cell as? CustomTableViewCell else { return cell }
        
        customCell.titleLabel?.text = indexPath.description
        customCell.detailLabel?.numberOfLines = 0
        customCell.detailLabel?.text = """
            textline 0000 - 0001
            textline 0000 - 0002
            textline 0000 - 0003
            textline 0000 - 0004
            textline 0000 - 0005
            """
        customCell.customImageView?.image =  UIImage(named: "\(indexPath.row % 3 + 1)")
        
        return customCell
    }
    
    
}

