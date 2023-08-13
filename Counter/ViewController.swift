import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counerLabel: UILabel!
    
    var counter: Int? = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load")
    }
    
    @IBAction func decreseTapped(_ sender: Any) {
        print("Did tap decrease")
        guard let counterValue = counter else {
            return
        }
        counter = counterValue - 1
        updateResetButton()
        updateCounter()
    }
    
    @IBAction func increaseTapped(_ sender: Any) {
        print("Did tap increase")
        guard let counterValue = counter else {
            return
        }
        counter = counterValue + 1
        updateResetButton()
        updateCounter()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        print("Did tap reset")
        counter = 0
        counerLabel.text = "\(counter ?? 0)"
        updateResetButton()
    }
    
    private func updateResetButton() {
        guard let counter = counter else {
            return
        }
        
        resetButton.isEnabled = counter != 0 ? true : false // тут нужно вместо знака меньше поставить знак не равно
        print("Did update reset button to: \(resetButton.isHidden)")
    }
    
    private func updateCounter() {
        guard let counterValue = counter else {
            return
        }
        
        if counterValue > 10 || counterValue < -10 {
            counter = 0
            print("Did reset counter value")
        }
        counerLabel.text = "\(counter ?? 0)"
        updateResetButton()
    }
}

