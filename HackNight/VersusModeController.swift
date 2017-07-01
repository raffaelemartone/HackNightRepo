//
//  VersusModeController.swift
//  HackNight
//
//  Created by Raffaele Martone on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import UIKit

class VersusModeController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)

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
        let randomHourLeft = Int(arc4random_uniform(24) + 0)
        let randomMinutesLeft = Float(arc4random_uniform(60) + 0)
        let randomSecondsLeft = Float(arc4random_uniform(60) + 0)
        cell.timeLeft.text = "Time Left: ORE \(randomHourLeft), MIN \(randomMinutesLeft), SEC \(randomSecondsLeft)"
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
