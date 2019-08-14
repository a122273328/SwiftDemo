//
//  FirstCollectionViewCell.swift
//  SwiftDemo
//
//  Created by WZH on 2019/8/14.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ItemImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.ItemImage.image = UIImage(imageLiteralResourceName: "itemImage")
    }

}
