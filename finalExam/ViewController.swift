//
//  ViewController.swift
//  finalExam
//
//  Created by Duyi Li on 5/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtWeight: UITextField!
    
    
    @IBOutlet weak var txtFeet: UITextField!
    
    
   
    @IBOutlet weak var txtInch: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func calculateBMIAction(_ sender: Any) {
        
        var weight = Double(txtWeight.text ?? "") ?? 0.0
        var feet = Double(txtFeet.text ?? "") ?? 0.0
        
        var inch = Double(txtInch.text ?? "") ?? 0.0
        
        var BMI = weight/(feet*12+inch)/(feet*12+inch)*703
        
        if (BMI < 18.5){

            lblBMI.text = "UnderWeight"

        } else if (BMI > 18.5 && BMI < 25){

            lblBMI.text = "Healthy weight"

        }else if (BMI > 25 && BMI < 30){

            lblBMI.text = "OverWeight"
        } else {

            lblBMI.text = "Obese"

        }
        
        
    }
    
    
    @IBOutlet weak var lblBMI: UILabel!
}

