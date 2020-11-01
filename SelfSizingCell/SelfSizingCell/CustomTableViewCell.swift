//
//  CustomTableViewCell.swift
//  SelfSizingCell
//
//  Created by Fenta on 2020/11/02.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var customImageView: UIImageView!
    var titleLabel: UILabel!
    var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customImageView = UIImageView()
        customImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customImageView)
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title2)
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.textColor = .blue
        
        detailLabel = UILabel()
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.font = UIFont.preferredFont(forTextStyle: .body)
        detailLabel.adjustsFontForContentSizeCategory = true
        detailLabel.textColor = .darkGray
        detailLabel.numberOfLines = 0 
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, detailLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = . fill
        stackView.spacing = 8
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            customImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            customImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            customImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2),
            customImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor),
            customImageView.widthAnchor.constraint(equalTo: customImageView.heightAnchor),
            
            stackView.topAnchor.constraint(equalTo: customImageView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: customImageView.trailingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
