//
//  MostraAbbinamenti.swift
//  HackNight
//
//  Created by Raffaele Martone on 02/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class MostraAbbinamenti: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var listaOutfit = [#imageLiteral(resourceName: "CC1"),#imageLiteral(resourceName: "CC0"), #imageLiteral(resourceName: "CC2"),#imageLiteral(resourceName: "CC3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.init(colorLiteralRed: 176, green: 177, blue: 186, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.black;


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaOutfit.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "listaOutfit", for: indexPath) as? AltriAbbinamentiCollectionViewCell
        collectionViewCell?.immagineOutfit.image = listaOutfit[indexPath.row]
        return collectionViewCell!
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
