//
//  OutfitTableViewCell.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class OutfitTableViewCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var immagineOutfit: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //var titolo : String = ""
    //var outfitImage : UIImage =
    
    @IBOutlet weak var profilo: UIImageView!
    
    @IBAction func click(_ sender: Any) {
    
    }
    
    
}
