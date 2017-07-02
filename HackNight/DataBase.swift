//
//  DataBase.swift
//  HackNight
//
//  Created by sofia on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//
/*TIPO :
 1= maglia
 2= pantalone
 3=scarpe
 4=Gonna
 5= gioielli
 */
import Foundation

import Foundation
class DataBase{
    
    
    var elencoVesiti: Array<Capo>
    //var elencoOutfit: Array
    
    init() {
        elencoVesiti = [Capo]()
        elencoVesiti.append(Capo(nome:"T-shirt di ASOS",tipo: 1, foto: #imageLiteral(resourceName: "maglia1"), descrizione: "In morbido jersey\nScollo rotondo.", colore: "Bianco",posseduto: true,id : 0))
        
        elencoVesiti.append(Capo(nome:"Jeans di ASOS",tipo: 2, foto: #imageLiteral(resourceName: "pantalonelungo"), descrizione: "Jeans ultra skinny Ridley di ASOS Collection", colore: "Nero",posseduto: true, id: 1))
        
        elencoVesiti.append(Capo(nome:"Dr Martens",tipo: 3, foto: #imageLiteral(resourceName: "scarpe1"), descrizione: "Stivaletti di Dr Martens alti ", colore: "Nero", posseduto: true, id: 2))
        
        elencoVesiti.append(Capo(nome: "Bracciale rigiro", tipo: 5, foto: #imageLiteral(resourceName: "bracciale"), descrizione: "Bracciale oro aperto con pietra semipreziona", colore: "Oro", id: 3))
        
        elencoVesiti.append(Capo(nome:"Pantalone Leggins ",tipo: 2, foto: #imageLiteral(resourceName: "pantalone1"), descrizione: "Pantalone Leggins ", colore: "Grigio", posseduto: true, id : 4))
        
        elencoVesiti.append(Capo(nome:"Gonna di  ASOS Collection",tipo: 4, foto: #imageLiteral(resourceName: "gonnaVerda"), descrizione: "Gonna di  ASOS Collection Tessuto effetto scuba\n Vita alta", colore: "Verde",posseduto: true, id : 5))
        
        
        elencoVesiti.append(Capo(nome:"Jeans Sculpr",tipo: 2, foto: #imageLiteral(resourceName: "legginsJeans"), descrizione: "Jeans Sculpr di Asos Denim elasticizzato", colore: "Blue mogano", id : 6))

        elencoVesiti.append(Capo(nome:"Top di ASOS Collection",tipo: 1, foto: #imageLiteral(resourceName: "magliaViola"), descrizione: "Top di ASOS Collection In Jersey elasticizzato Lavorazione a coste", colore: "Viola lilla", posseduto: true, id: 7))
        


        
   }
    
    func getElencoVestiti() -> [Capo] {
        return elencoVesiti
    }
    
    func count() -> Int{
        return elencoVesiti.count
    }
    
    func getById(id: Int) -> Capo {
        return elencoVesiti[id]
    }
}
