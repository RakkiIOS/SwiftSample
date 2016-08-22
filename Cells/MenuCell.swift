//
//  MenuCell.swift
//  SwiftSample
//
//  Created by Pandyperumal on 8/2/16.
//  Copyright © 2016 BLT0003IMAC. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    
    @IBOutlet weak var imageMenuICon : UIImageView!
    @IBOutlet weak var labelMenuName : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
