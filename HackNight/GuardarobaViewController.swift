//
//  GuardarobaViewController.swift
//  HackNight
//
//  Created by Raffaele Martone on 02/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class GuardarobaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var elencoVestiti = DB.getElencoVestiti()

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myCollectionView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "sfondo speriamo giusto"))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DB.count()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellaGuardaroba", for: indexPath) as? GuardarobaCollectionViewCell
        collectionViewCell?.immagineCapo.image = elencoVestiti[indexPath.row].foto
        collectionViewCell?.nomeCapo.text = elencoVestiti[indexPath.row].nome
        collectionViewCell?.idCapo = elencoVestiti[indexPath.row].id
        return collectionViewCell!
    }
    
    var selectedCellId = 0
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as? GuardarobaCollectionViewCell
        self.selectedCellId = Int((cell?.idCapo)!)
        self.performSegue(withIdentifier: "mostraDettagliCapoDalGuardaroba", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraDettagliCapoDalGuardaroba" {
            let myDestinationController = segue.destination as? DettaglioCapoController
            myDestinationController?.idCellaSelezionata = selectedCellId
        }
    }

}
