//
//  BasePopup.swift
//  Vendevry
//
//  Created by Long Hello on 12/04/2024.
//

import UIKit

class BasePopup: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        createBackDefault()
    }
    
    func createBackDefault() {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func buttonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
