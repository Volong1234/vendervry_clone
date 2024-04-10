//
//  ViewController.swift
//  Vendevry
//
//  Created by Long Hello on 10/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        //bodyView.layer.borderWidth = 1
        bodyView.layer.cornerRadius = 16
        bodyView.layer.borderColor = .none
        buttonView.layer.cornerRadius = 22
        loginButton.layer.cornerRadius = 22
        signupButton.layer.cornerRadius = 22
    }
    
    
    @IBAction func login(_ sender: Any) {
        loginButton.backgroundColor = .white
        loginButton.setTitleColor(.black, for: .normal)
        signupButton.backgroundColor = nil
        signupButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func sign_up(_ sender: Any) {
        signupButton.backgroundColor = .white
        signupButton.setTitleColor(.black, for: .normal)
        loginButton.backgroundColor = nil
        loginButton.setTitleColor(.white, for: .normal)
    }
}

