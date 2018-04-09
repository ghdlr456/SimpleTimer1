
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timerSwith: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerSwith.setOn(false, animated: true)
    }
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLabel.text = formatter.string(from: date)
    }

    @IBAction func timerstart(_ sender: Any) {
        if timerSwith.isOn == true {
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:{(myTimer) in self.updateTime()
            })
            
        } else {
            myTimer.invalidate()
        }
    }
    
}

