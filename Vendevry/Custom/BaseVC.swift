//
//  BaseVC.swift
//  Vendevry
//
//  Created by Long Hello on 11/04/2024.
//

import UIKit

class BaseVC: UIViewController {
    var isTrue = true

    override func viewDidLoad() {
        super.viewDidLoad()

        createBackDefault()
    }
    
    func createBackDefault() {
        let button = UIButton(type: .system)
        let imageName = isTrue ? "Icon_back" : "Icon _close"
        if let image = UIImage(named: imageName) {
                    let templateImage = image.withRenderingMode(.alwaysTemplate)
                    button.setImage(templateImage, for: .normal)
                    button.tintColor = .white
                }
        button.frame = CGRect(x: 8, y: 32, width: 40, height: 40)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func buttonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
