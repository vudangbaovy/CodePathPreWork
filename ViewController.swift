//
//  ViewController.swift
//  CodePathPreWork
//
//  Created by CamTu-MAC on 12/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(_sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am a \(year!) year student at \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) pet(s). It is \(morePetsSwitch.isOn) that I want more pets!"
        
        let alertController = UIAlertController(title: "Hello World", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "The world says hello!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

