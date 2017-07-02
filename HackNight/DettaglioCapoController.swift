//
//  dettaglioCapo.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class DettaglioCapoController: UIViewController {
    
    var elencoVestiti = DB.getElencoVestiti()
    var idCellaSelezionata = 0
    
    
    @IBOutlet weak var nomeCapoSelezionato: UILabel!
    @IBOutlet weak var descrizioneCapoSelezionato: UILabel!
    
    @IBOutlet weak var coloreCapoSelezionato: UILabel!
    
    @IBOutlet weak var fotoCapoSelezionato: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let capoSelezionato = DB.getById(id: self.idCellaSelezionata)
        self.nomeCapoSelezionato.text = capoSelezionato.nome
        self.descrizioneCapoSelezionato.text = capoSelezionato.descrizione
        self.coloreCapoSelezionato.text = capoSelezionato.colore
        self.fotoCapoSelezionato.image = capoSelezionato.foto
        
        self.descrizioneCapoSelezionato.isAccessibilityElement = true
        self.descrizioneCapoSelezionato.accessibilityLabel = self.descrizioneCapoSelezionato.text
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func vediAbbinamenti(_ sender: Any) {
        performSegue(withIdentifier: "abbinamentiDelCapo", sender: self)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray;
    }
}
