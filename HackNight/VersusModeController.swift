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

    var randomSeconds = [Float]()
    var randomHourLeft = [Int]()
    var randomMinutesLeft = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in (0..<10) {
            randomSeconds.append(Float(arc4random_uniform(60) + 0))
            randomHourLeft.append(Int(arc4random_uniform(24) + 0))
            randomMinutesLeft.append(Int(arc4random_uniform(60) + 0))

        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(update), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var tableViewVersus: UITableView!
    func update() {
        for i in (0..<10) {
            randomSeconds[i] -= 1
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "versusModeCell", for: indexPath) as! VersusModeCell
        cell.timeLeft.text = "Time Left: ORE \(self.randomHourLeft[indexPath.section]), MIN \(self.randomMinutesLeft[indexPath.section]), SEC \(self.randomSeconds[indexPath.section])"
        
        return cell
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
