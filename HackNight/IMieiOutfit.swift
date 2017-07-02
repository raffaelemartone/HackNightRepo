//
//  IMieiOutfit.swift
//  HackNight
//
//  Created by Raffaele Martone on 02/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class IMieiOutfit: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrayOfIMieiOutfit = [#imageLiteral(resourceName: "IMieiOutfit0"),#imageLiteral(resourceName: "IMieiOutfit1"),#imageLiteral(resourceName: "IMieiOutfit2"),#imageLiteral(resourceName: "IMieiOutfit3"),#imageLiteral(resourceName: "IMieiOutfit8"),#imageLiteral(resourceName: "IMieiOutfit6"),#imageLiteral(resourceName: "FullSizeRender")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfIMieiOutfit.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewIMieiOutfitCell", for: indexPath) as? CellaIMieiOutfit
        collectionViewCell?.immagineOutfit.image = arrayOfIMieiOutfit[indexPath.row]
        return collectionViewCell!
    }
    
    //var selectedId : Int
    var selectedCellImage : UIImage?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as? CellaIMieiOutfit
        //selectedId = cell?.idOutfit
        selectedCellImage = (cell?.immagineOutfit.image)!
        self.performSegue(withIdentifier: "mostraDettagliOutfit", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraDettagliOutfit" {
            let myDestinationController = segue.destination as? DettaglioOutfitController
            myDestinationController?.immagineSelezionata = selectedCellImage
        }
    }

    
}
