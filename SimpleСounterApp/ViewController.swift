//
//  ViewController.swift
//  SimpleСounterApp
//
//  Created by Иван Малышев on 18.10.2023.
//

import UIKit

class ViewController: UIViewController {
    func currentDate() -> String{
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        return (dateFormatter.string(from: date))
    }
    @IBOutlet weak var LableCounter: UILabel!
    @IBOutlet weak var ButtonCounter: UIButton!
    @IBOutlet weak var ButtonCounterDecrease: UIButton!
    @IBOutlet weak var ResetButtonCounter: UIButton!
    @IBOutlet weak var logHistory: UITextView!
    var countVar: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ChangeButtonCounter(_ sender: Any) {
        countVar += 1
        LableCounter.text = "Значение счётчика: \(countVar)"
        var currentLog = "\n[\(currentDate())]: значение изменено на +1"
        logHistory.text += currentLog
    }
    
    @IBAction func ChangeButtonCounterDecrease(_ sender: Any) {
        if countVar - 1 < 0 {
            countVar = 0
            LableCounter.text = "Значение счётчика: \(countVar)"
            var currentLog = "\n[\(currentDate())]: попытка уменьшить значение счётчика ниже 0"
            logHistory.text += currentLog
        } else{
            countVar -= 1
            LableCounter.text = "Значение счётчика: \(countVar)"
            var currentLog = "\n[\(currentDate())]: значение изменено на -1"
            logHistory.text += currentLog
        }
        
    }
    @IBAction func ChangeButtonCounterReset(_ sender: Any) {
        countVar = 0
        LableCounter.text = "Значение счётчика: \(countVar)"
        var currentLog = "\n[\(currentDate())]: значение сброшено"
        logHistory.text += currentLog
    }
}

