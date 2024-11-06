//
//  SignInViewController.swift
//  ECommerce
//
//  Created by Jad Rammal on 05/11/2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.setLeftPaddingPoints(20)
        passwordTextField.setLeftPaddingPoints(20)
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func onContinueButtonTap(_ sender: CustomButton) {
        
    }
    
    @IBAction func onCreateAccountTap(_ sender: UIButton) {
        let signUpView = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(signUpView, animated: true)
    }
}
