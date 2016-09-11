//
//  ViewController.swift
//  C1
//
//  Created by Lopsan antonio Molina Osoio on 11/09/16.
//  Copyright © 2016 OMLODI. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet var distanceTextField: UITextField!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @IBOutlet var resultLabel: UILabel!
    
    let mileUnit : Double = 1.609
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultLabel.text = "Escribe la distancia a convertir"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func convertPressed(_ sender: UIButton) {
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        
        let textFieldVal = Double(distanceTextField.text!)!
        
        if selectedIndex == 0 {
            let converterValue = textFieldVal / mileUnit
            reloadView(textFieldVal: textFieldVal, converterValue: converterValue)
        }
        else {
            let converterValue = textFieldVal * mileUnit
            reloadView(textFieldVal: textFieldVal, converterValue: converterValue)
        }
    }
    
    func reloadView(textFieldVal : Double, converterValue : Double) {
        let initValue = String(format: "%.2f", textFieldVal)
        let endValue = String(format: "%.2f", converterValue)
        
        if segmentedControl.selectedSegmentIndex == 0 {
            resultLabel.text = "\(initValue) km = \(endValue) millas"
        }
        else {
            resultLabel.text = "\(initValue) millas = \(endValue) km "
        }
    }
    
    override var prefersStatusBarHidden : Bool {
        get {
            return true
        }
    }

}
