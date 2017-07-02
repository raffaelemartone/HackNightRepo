//
//  ListaOutfitController.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class ListaOutfitController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var voti: UILabel!
    var arrayOfIMieiOutfit = [#imageLiteral(resourceName: "CapoNum1"),#imageLiteral(resourceName: "CapoNum2"),#imageLiteral(resourceName: "IMieiOutfit4")]
                              
    var arrayCapi = [#imageLiteral(resourceName: "gonna capo1"), #imageLiteral(resourceName: "magliaCapo1"), #imageLiteral(resourceName: "giacchetta capo1"),#imageLiteral(resourceName: "maglia capo2"),#imageLiteral(resourceName: "pantalone capo2"),#imageLiteral(resourceName: "Orologio capo2"),#imageLiteral(resourceName: "Capo1"),#imageLiteral(resourceName: "Capo2"),#imageLiteral(resourceName: "Capo3")]
    
    var arrayProfili = [#imageLiteral(resourceName: "fotoprofilo1"), #imageLiteral(resourceName: "fotoprofilo1"),#imageLiteral(resourceName: "fotoprofilo1"),#imageLiteral(resourceName: "fotoprofilo1"),#imageLiteral(resourceName: "fotoprofilo1"),#imageLiteral(resourceName: "fotoprofilo1"),#imageLiteral(resourceName: "fotoprofilo1"),#imageLiteral(resourceName: "fotoprofilo1")]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfIMieiOutfit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellaListaOutfit", for: indexPath) as! OutfitTableViewCell
        cell.profilo.image = arrayProfili[indexPath.section]
        cell.immagineOutfit.image = arrayOfIMieiOutfit[indexPath.section]
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCapi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewOutfitCell", for: indexPath) as? CellaListaOutfitCollectionViewCell
        collectionViewCell?.idCapo = 0
        collectionViewCell?.capoImmagine.image = arrayCapi[indexPath.row]
        return collectionViewCell!
    }
    
    var selectedCellId = 0
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as? CellaListaOutfitCollectionViewCell
        selectedCellId = (cell?.idCapo)!
        self.performSegue(withIdentifier: "mostraDettagliCapo", sender: cell)
        
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraDettagliCapo" {
            let myDestinationController = segue.destination as? DettaglioCapoController
            myDestinationController?.idCellaSelezionata = selectedCellId
        }
    }
    
}
