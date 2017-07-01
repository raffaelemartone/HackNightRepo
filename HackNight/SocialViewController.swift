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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func mostraDettagli(_ sender: Any) {
//        performSegue(withIdentifier: "dettaglioCapo", sender: self)
//    }

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
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
