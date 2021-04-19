//
//  CourseListTableViewCell.swift
//  Group_Study_App
//
//  Created by Adrian Jenkins on 4/18/21.
//

import UIKit

class CourseListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var courseLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
