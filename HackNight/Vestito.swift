import UIKit

class Vestito {
    
    var id = "id"
    var nome = "nome"
    var tipo = "tipo"
    var colore = "colore"
    var descrizione = "descrizione"
    var sesso = "sesso"
    var immagine = "immagine"
    var prezzo: Double = 0.0
    var inStock: Bool = false
    
    enum JSONError: String, Error {
        case NoData = "Error: No data!"
        case ConversionFailed = "Error: Conversion Failed!"
    }
    
    init(id: String, tipo: String) {
        self.id = id
        self.tipo = tipo
        let urlPath = "http://api.asos.com/product/catalogue/v2/products/" + id + "?store=IT"
        guard let endpoint = URL(string: urlPath) else {
            print("Error creating endpoint")
            return
        }
        URLSession.shared.dataTask(with: endpoint) { (data, response, error) in
            do {
                guard let data = data else {
                    throw JSONError.NoData
                }
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary else {
                    throw JSONError.ConversionFailed
                }
                self.descrizione = (json["description"]  as? String)!
                self.descrizione = self.descrizione.html2String
                self.sesso = (json["gender"]  as? String)!
                let variants = json["variants"] as? [[String: Any]]
                let media = json["media"] as? [String: Any]
                let immagini = media?["images"] as? [[String: Any]]
                
                for variant in variants! {
                    if !self.inStock {
                        self.nome = (variant["name"]  as? String)!
                        self.colore = (variant["colour"]  as? String)!
                        let price = variant["price"] as? [String: Any]
                        let current = price?["current"] as? [String: Any]
                        self.prezzo = (current?["text"] as? Double)!
                        self.inStock = (variant["isInStock"] as? Bool)!
                    }
                }
                for immagine in immagini! {
                    if immagine["isPrimary"]  as? Int == 1 {
                        self.immagine = (immagine["url"] as? String)!
                    }
                }
                
            } catch let error as JSONError {
                print(error.rawValue)
            } catch let error as NSError {
                print(error.debugDescription)
            }
            }.resume()
    }
}
