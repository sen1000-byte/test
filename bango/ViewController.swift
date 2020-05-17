//
//  ViewController.swift
//  bango
//
//  Created by Chihiro Nishiwaki on 2020/05/17.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var banmeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var number: Int = 0
    
    let banme = ["1", "2", "3", "4", "5"]
    let name = ["one", "two", "three", "four", "five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func view() {
        banmeLabel.text = banme[number]
        nameLabel.text = name[number]
        
    }
    
    @IBAction func ichiban() {
        number = 0
        view()
    }
    
    @IBAction func niban() {
        number = 1
        view()
    }
    
    @IBAction func sanban() {
        number = 2
        view()
    }
    
    @IBAction func back() {
        if number >= 1 {
            number -= 1
            view()
        }else{
            number = 4
            view()
        }
        
    }
    
    @IBAction func next() {
        if number <= 3{
            number += 1
            view()
        } else{
            number = 0
            view()
        }
    }
    
   
}

