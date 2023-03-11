//
//  bmiCalculatorBrain.swift
//  TheBMICalculatorApp
//
//  Created by Wynelher Tagayuna on 3/11/23.
//

import Foundation
import UIKit

struct BMICalculatorBrian{
    var bmiResult: Result?
    
    // Calculate the BMI using the height and weight
    mutating func calculateTheBMI(with height: UISlider, and weight: UISlider){
        let bmiValue = String(format: "%.1f", weight.value/pow(height.value, 2))
        getBMIResults(from: bmiValue)
    }
    
    // Get results based on the bmi value
    mutating func getBMIResults(from bmiValue: String){
        let underweight:Float = 18.5
        let normal: ClosedRange<Float> = 18.5...24.9
        let overweight: Float = 24.9
        
        if Float(bmiValue)! < underweight{
            bmiResult = Result(result: bmiValue, advice: "You need to eat more.", backgroundColor: UIColor.systemBlue)
        }else if normal.contains(Float(bmiValue)!){
            bmiResult = Result(result: bmiValue, advice: "You are normal.", backgroundColor: .systemGreen)
        }else if Float(bmiValue)! > overweight{
            bmiResult = Result(result: bmiValue, advice: "You need to eat less.", backgroundColor: .systemRed)
        }
    }
}
