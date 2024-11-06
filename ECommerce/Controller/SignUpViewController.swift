//
//  SignUpViewController.swift
//  ECommerce
//
//  Created by Jad Rammal on 05/11/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = CustomBackButton(target: self, action: #selector(backButtonTapped))
        let barButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = barButtonItem
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onContinueButtonTap(_ sender: CustomButton) {
        guard let firstName = firstnameTextField.text, !firstName.isEmpty,
              let lastName = lastnameTextField.text, !lastName.isEmpty,
              let emailAddress = emailAddressTextField.text, !emailAddress.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "All fields are required.")
            return
        }
        
        if !ValidationUtils.isValidEmail(emailAddress) {
            showAlert(message: "Please enter a valid email address.")
            return
        }
        
        if !ValidationUtils.isValidPassword(password) {
            showAlert(message: "Password must be at least 8 characters long, contain one uppercase letter, one number, and one special character.")
            return
        }
        
        register()
    }
    
    private func register() {
        print("Registration successful")
    }
}
