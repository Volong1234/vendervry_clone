//
//  LoginViewController.swift
//  Vendevry
//
//  Created by Long Hello on 12/04/2024.
//

import UIKit

class LoginViewController: BaseVC {

    @IBOutlet weak var textfield: FloatingTextFiledPlaceHolder!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textfield.title = "ProductViewController"
        textfield.placeholder = "ProductViewController"
    }
    
    
    @IBAction func pushProduct(_ sender: Any) {
        
        let vc = UIStoryboard(name: "ProductViewController", bundle: nil).instantiateViewController(identifier: "ProductViewController") as! ProductViewController
       // vc.isTrue = false
        Presenter.presentViewController(vc, animated: true)
    }
}
