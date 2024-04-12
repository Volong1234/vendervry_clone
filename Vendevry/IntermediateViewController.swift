//
//  IntermediateViewController.swift
//  Vendevry
//
//  Created by Long Hello on 11/04/2024.
//

import UIKit

class IntermediateViewController: BaseVC {
    var isResgiter = false
    @IBOutlet weak var titleHeader: UILabel!
    @IBOutlet weak var consumer: UIButton!
    @IBOutlet weak var reseller: UIButton!
    @IBOutlet weak var vendor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func pushLogin(){
        let vc = UIStoryboard(name: "LoginViewController", bundle: nil).instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        vc.isTrue = false
        Presenter.presentViewController(vc, animated: true)
    }
    
    
    
    func setupUI(){
        if isResgiter {
            titleHeader.text = "What type of user are you?"
            titleHeader.font = UIFont.systemFont(ofSize: 18)
            consumer.setTitle("I want to buy", for: .normal)
            reseller.setTitle("I want reseller", for: .normal)
            vendor.setTitle("I want to sell", for: .normal)
        }
    }
    
    @IBAction func consumerAction(_ sender: Any) {
        pushLogin()

    }
    @IBAction func resellerAction(_ sender: Any) {
        
    }
    
    @IBAction func vederAction(_ sender: Any) {
        
    }
    
}
