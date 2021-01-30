//
//  dataCell.swift
//  btnOnNav
//
//  Created by bhargava on 29/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit

class dataCell: UITableViewCell {
    @IBOutlet weak var bcView:UIView!
    @IBOutlet weak var userIdLbl:UILabel!
    @IBOutlet weak var IdLbl:UILabel!
    @IBOutlet weak var titleLbl:UILabel!
    @IBOutlet weak var bodyLbl:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bcView.layer.cornerRadius = 5.8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
