//
//  GitCell.swift
//  Lession6Demo
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import UIKit

class GitCell: UITableViewCell {
    @IBOutlet var idLabel: UILabel!
    @IBOutlet var langueLabel: UILabel!
    @IBOutlet var createdLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func bind(git: Gits) {
        idLabel.text = git.id ?? "no id"
        langueLabel.text = git.language ?? "C"
        createdLabel.text = git.created_at ?? "No time"
        nameLabel.text = git.name ?? "No Name"
    }
    
}
