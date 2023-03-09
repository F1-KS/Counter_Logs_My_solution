//
//  ViewController.swift
//  Counter
//
//  Created by m.daudov on 09.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counerLabel: UILabel!
    
    var counter: Int?
    
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
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        print("Did tap reset")
        counter = 0
    }
    
    private func updateResetButton() {
        guard let counter = counter else {
            return
        }
        
        resetButton.isEnabled = counter < 0 ? true : false
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
    }
}

