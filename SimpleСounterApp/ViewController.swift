//
//  ViewController.swift
//  SimpleСounterApp
//
//  Created by Иван Малышев on 18.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var LableCounter: UILabel!
    @IBOutlet weak var ButtonCounter: UIButton!
    var countVar: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ChangeButtonCounter(_ sender: Any) {
        countVar += 1
        LableCounter.text = "Значение счётчика: \(countVar)"
    }
    
}

