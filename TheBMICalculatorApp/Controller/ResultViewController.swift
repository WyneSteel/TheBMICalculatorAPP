//
//  ResultViewController.swift
//  TheBMICalculatorApp
//
//  Created by Wynelher Tagayuna on 3/10/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var suggestionsLabel: UILabel!
    @IBOutlet var viewBackgroundColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiResultLabel.text = bmiValue!
        suggestionsLabel.text = bmiAdvice!
        viewBackgroundColor.backgroundColor = bmiColor!
    }

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)// Dismiss segue
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
