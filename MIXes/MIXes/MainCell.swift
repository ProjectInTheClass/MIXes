//
//  MainCell.swift
//  MIXes
//
//  Created by jeonghoon hong on 2021/10/28.
//

import UIKit

class MainCell: UITableViewCell {
    

    @IBOutlet weak var itemName_custom: UILabel!
    @IBOutlet weak var itemPercent_custom: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
