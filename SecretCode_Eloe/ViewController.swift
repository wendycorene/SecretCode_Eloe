//
//  ViewController.swift
//  SecretCode_Eloe
//
//  Created by Eloe,Wendy C on 2/27/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

let items = AppDelegate.myModel.code

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "symbolsMaybe")!
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppDelegate.myModel.guess.append(items[indexPath.row])
        guessLBL.text = ("\(AppDelegate.myModel.guess)")
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
    }
    
}

