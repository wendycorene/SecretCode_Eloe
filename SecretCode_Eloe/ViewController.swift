//
//  ViewController.swift
//  SecretCode_Eloe
//
//  Created by Eloe,Wendy C on 2/27/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

let symbolList = AppDelegate.myModel.symbols

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return symbolList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "symbolsMaybe")!
        cell.textLabel?.text = symbolList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if AppDelegate.myModel.guess.count == 0 {
                guessLBL.text = "Selected: "
        }
            AppDelegate.myModel.guess.append(symbolList[indexPath.row])
            guessLBL.text? += (" \(symbolList[indexPath.row]) ")
            if AppDelegate.myModel.guess.count == 4 {
                AppDelegate.myModel.attempts += 1
                statusLBL.text = "\(AppDelegate.myModel.statusMsg())"
                AppDelegate.myModel.guess = []
            }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var guessLBL: UILabel!
    @IBAction func resetBTN(_ sender: UIButton) {
        AppDelegate.myModel.resetStuff()
    }
    @IBOutlet weak var statusLBL: UILabel!
    
}

