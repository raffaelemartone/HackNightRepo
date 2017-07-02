//
//  DettaglioOutfitController.swift
//  HackNight
//
//  Created by Raffaele Martone on 02/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class DettaglioOutfitController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var immagineSelezionata : UIImage?

    var elencoCapi = [#imageLiteral(resourceName: "Capo1"),#imageLiteral(resourceName: "Capo2"),#imageLiteral(resourceName: "Capo3"), #imageLiteral(resourceName: "bracciale")]

    @IBOutlet weak var displayImmagine: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayImmagine.image = immagineSelezionata
        self.navigationController?.navigationBar.barTintColor = UIColor.init(colorLiteralRed: 176, green: 177, blue: 186, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray;

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return elencoCapi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "dettaglioOutfitCell", for: indexPath) as? DettaglioOutfitCollectionViewCell
        collectionViewCell?.idCapo = indexPath.row
        collectionViewCell?.immagineCapo.image = elencoCapi[indexPath.row]
        
        return collectionViewCell!
    }
    
    var selectedCellId = 0
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? DettaglioOutfitCollectionViewCell
        selectedCellId = (cell?.idCapo)!
        self.performSegue(withIdentifier: "mostraDettagli", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraDettagli" {
            let myDestinationController = segue.destination as? DettaglioCapoController
            myDestinationController?.idCellaSelezionata = selectedCellId
        }
    }
    
    

}
