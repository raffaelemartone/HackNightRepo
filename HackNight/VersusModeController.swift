//
//  VersusModeController.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class VersusModeController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var timer = Timer()
    var arrayVs = [[#imageLiteral(resourceName: "vs1"),#imageLiteral(resourceName: "vs2")],[#imageLiteral(resourceName: "vs3"),#imageLiteral(resourceName: "vs4")]]
    var randomSeconds = [Int]()
    var randomHourLeft = [Int]()
    var randomMinutesLeft = [Int]()
    var randomVotes = [[Int]]()

    var arrayProfili = [#imageLiteral(resourceName: "fotoprofilo1"), #imageLiteral(resourceName: "fotoprofilo2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in (0..<arrayVs.count) {
            let num1 = Int(arc4random_uniform(300) + 100)
            let num2 = Int(arc4random_uniform(300) + 100)
            randomVotes.append([num1,num2])
        }

        for i in (0..<arrayVs.count) {
            randomSeconds.append(Int(arc4random_uniform(UInt32(i+1 * 40)) + 30))
            randomHourLeft.append(Int(arc4random_uniform(UInt32(i+1 * 3)) + 0))
            randomMinutesLeft.append(Int(arc4random_uniform(50) + 0))
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    
    @IBOutlet weak var tableViewVersus: UITableView!
    
    func update() {
        for i in (0..<arrayVs.count) {
            if (randomSeconds[i] != 0) {
                randomSeconds[i] -= 1
            }
            else {
                randomSeconds[i] = Int(arc4random_uniform(31) + 30)
            }
        }
        self.tableViewVersus.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayVs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "versusModeCell", for: indexPath) as! VersusModeCell
        cell.imageProfilo.image = arrayProfili[indexPath.section]
        cell.image1.image = arrayVs[indexPath.section][0]
        cell.image2.image = arrayVs[indexPath.section][1]
        cell.timeLeft.text = "\(self.randomHourLeft[indexPath.section])h, \(self.randomMinutesLeft[indexPath.section])m, \(self.randomSeconds[indexPath.section])s"
        
        if (cell.isLikeEnabled != true) {
            cell.votes1Counter.text = String(randomVotes[indexPath.section][0])
        }
        else {
            cell.votes1Counter.text = "Hai votato!"
        }
        if (cell.isSecondLikeEnabled != true) {
            cell.votes2Counter.text = String(randomVotes[indexPath.section][1])
        }
        else {
            cell.votes2Counter.text = "Hai votato!"
        }
        return cell
    }
    
}
