//
//  AggiungiOutfitController.swift
//  HackNight
//
//  Created by Raffaele Martone on 02/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class AggiungiOutfitController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()



        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.black;

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
