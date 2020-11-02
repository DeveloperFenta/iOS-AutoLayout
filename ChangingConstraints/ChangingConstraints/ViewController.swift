//
//  ViewController.swift
//  ChangingConstraints
//
//  Created by Fenta on 2020/11/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(forName: Notification.Name("layoutCell"),
                                               object: nil,
                                               queue: OperationQueue.main) { (noti) in
            self.tableView.beginUpdates()
            self.tableView.endUpdates()
        }
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
        customCell.detailLabel?.text = """
            Test Text Line 0001
            Test Text Line 0002
            Test Text Line 0003
            Test Text Line 0004
            Test Text Line 0005
            Test Text Line 0006
            Test Text Line 0007
            """
        customCell.customImageView?.image = UIImage(named: "\(indexPath.row % 3 + 1)")
        
        return customCell
    }
    
    
}

