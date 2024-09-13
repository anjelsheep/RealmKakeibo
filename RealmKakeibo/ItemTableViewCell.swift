//
//  ItemTableViewCell.swift
//  RealmKakeibo
//
//  Created by 志賀翔太 on 2024/09/12.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var markImageviem: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(title: String, price: Int, isMarked: Bool) {
        titleLabel.text = title
        priceLabel.text = String(price) + "円"
        if isMarked {
            markImageviem.image = UIImage(systemName: "Star.fill")
        } else {
            markImageviem.image = UIImage(systemName: "Star")
        }
    }
    
}
