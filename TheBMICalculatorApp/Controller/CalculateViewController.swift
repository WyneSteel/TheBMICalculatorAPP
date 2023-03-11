//
//  ViewController.swift
//  TheBMICalculatorApp
//
//  Created by Wynelher Tagayuna on 3/10/23.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightUISlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightUISlider: UISlider!
    
    var bmiBrain = BMICalculatorBrian()// The logic
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightLabel.text = String(format: "%.2f", Float(3)/Float(2))+"m"
        weightLabel.text = String(format: "%.0f", Float(200)/Float(2))+"kg"
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value)+"m"// Update height label on slider value
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value)+"kg"// Update weight label on slider value
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        bmiBrain.calculateTheBMI(with: heightUISlider, and: weightUISlider)// Calculate the BMI
        self.performSegue(withIdentifier: "goToResults", sender: self)// Segue into ResultsViewController
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{// Check if segue matcher the identifier
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiBrain.bmiResult?.result ?? "0.0"
            destinationVC.bmiAdvice = bmiBrain.bmiResult?.advice ?? "nill"
            destinationVC.bmiColor = bmiBrain.bmiResult?.backgroundColor ?? .clear
        }
    }
    
}

