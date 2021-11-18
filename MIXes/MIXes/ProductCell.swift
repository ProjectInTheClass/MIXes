//
//  ProductCell.swift
//  MIXes
//
//  Created by 김결 on 2021/11/18.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var ProductName_custom: UILabel!
    @IBOutlet weak var Price_custom: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
