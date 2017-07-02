//
//  SocialViewController.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.VersusModeView.isHidden = true
        self.ListaOutfitView.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var ListaOutfitView: UIView!

    @IBOutlet weak var VersusModeView: UIView!
    
    @IBAction func toggle(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.VersusModeView.isHidden = true
            self.ListaOutfitView.isHidden = false
        } else {
            self.ListaOutfitView.isHidden = true
            self.VersusModeView.isHidden = false
        }
    }
}
