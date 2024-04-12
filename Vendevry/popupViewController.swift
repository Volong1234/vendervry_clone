//
//  popupViewController.swift
//  Vendevry
//
//  Created by Long Hello on 12/04/2024.
//

import UIKit

class popupViewController: BasePopup {
    
    var enumCheck: Int?;

    @IBOutlet weak var titleHeader: UILabel!
    @IBOutlet weak var body: UILabel!
    
    @IBOutlet weak var dissmiss: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI(){
        if let unwrappedValue = enumCheck {
            switch unwrappedValue {
            case 0:
                titleHeader.text = "You’re a Consumer"
                body.text = "As a consumer, you want to shop the marketplace and see what Vendevry has to offer. Browse the marketplace on your own or use a referral code to access a specific reseller’s store."
            case 1 :
                titleHeader.text = "You’re a Reseller"
                body.text = "As a reseller, join Vendevry to create your own branded store and select from our range of products and services. Opt for our enterprise plan to add team members and earn from their sales and monthly membership fees."
            case 2 :
                titleHeader.text = "You’re a Vendor"
                body.text = "As a vendor, joining Vendevry allows you to list your products and services on our marketplace. This grants you access to our extensive network of resellers who will promote and sell your offerings. You have the control to set the commission for these resellers, effectively managing how your products and services are marketed and sold through our platform."
            default:
                break
            }
            
            
        }
    }
    
    @IBAction func dissmiss(_ sender: Any) {
        dismiss(animated: true)
    }
}
