import UIKit

class ViewController: UIViewController {
    var countVar: Int = 0
    func currentDate() -> String{
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        return (dateFormatter.string(from: date))
    }
    @IBOutlet weak var labelCounter: UILabel!
    @IBOutlet weak var buttonCounter: UIButton!
    @IBOutlet weak var buttonCounterDecrease: UIButton!
    @IBOutlet weak var resetButtonCounter: UIButton!
    @IBOutlet weak var logHistory: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChangeButtonCounter(_ sender: Any) {
        countVar += 1
        labelCounter.text = "Значение счётчика: \(countVar)"
        let currentLog = "\n[\(currentDate())]: значение изменено на +1"
        logHistory.text += currentLog
    }
    
    @IBAction func ChangeButtonCounterDecrease(_ sender: Any) {
        if countVar - 1 < 0 {
            countVar = 0
            labelCounter.text = "Значение счётчика: \(countVar)"
            let currentLog = "\n[\(currentDate())]: попытка уменьшить значение счётчика ниже 0"
            logHistory.text += currentLog
        } else{
            countVar -= 1
            labelCounter.text = "Значение счётчика: \(countVar)"
            let currentLog = "\n[\(currentDate())]: значение изменено на -1"
            logHistory.text += currentLog
        }
        
    }
    @IBAction func ChangeButtonCounterReset(_ sender: Any) {
        countVar = 0
        labelCounter.text = "Значение счётчика: \(countVar)"
        let currentLog = "\n[\(currentDate())]: значение сброшено"
        logHistory.text += currentLog
    }
}

