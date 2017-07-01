//
//  dettaglioCapo.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class DettaglioCapoController: UIViewController {
    
    var idCellaSelezionata = ""

    @IBOutlet weak var idLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idLabel.text = idCellaSelezionata
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mostraAbbinamentiCapo(_ sender: Any) {
        performSegue(withIdentifier: "abbinamentiDelCapo", sender: nil)

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
