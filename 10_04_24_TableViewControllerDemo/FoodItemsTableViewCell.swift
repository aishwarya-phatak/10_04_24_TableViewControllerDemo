//
//  FoodItemsTableViewCell.swift
//  10_04_24_TableViewControllerDemo
//
//  Created by Vishal Jagtap on 22/07/24.
//

import UIKit

class FoodItemsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var foodItemTitle: UILabel!
    @IBOutlet weak var foodItemPrice: UILabel!
    @IBOutlet weak var foodItemDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
       
    }
    
}
