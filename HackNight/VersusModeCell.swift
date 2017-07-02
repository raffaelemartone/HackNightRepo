//
//  VersusModeCell.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class VersusModeCell: UITableViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var imageProfilo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var votes2Counter: UILabel!
    @IBOutlet weak var votes1Counter: UILabel!
    
    var isLikeEnabled = false
    var isSecondLikeEnabled = false
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var timeLeft: UILabel!
    
    @IBAction func firstCounter(_ sender: Any) {
        firstButton.setImage(#imageLiteral(resourceName: "logoPienoVoto"), for: .normal)
        isLikeEnabled = true
    }
    
    @IBAction func secondCounter(_ sender: Any) {
        secondButton.setImage(#imageLiteral(resourceName: "logoPienoVoto"), for: .normal)
        isSecondLikeEnabled = true
    }
    
    
    
    @IBOutlet weak var secondCounter: UIButton!

}
