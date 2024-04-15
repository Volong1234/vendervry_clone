//
//  ProductViewController.swift
//  Vendevry
//
//  Created by Long Hello on 15/04/2024.
//
import UIKit

class ProductViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC = HomeVC()
        let favoriteVC = FavoriteVC()
        let notifyVC = NotifyVC()
        self.setViewControllers([homeVC, favoriteVC, notifyVC], animated: false)
        
        // Thiết lập màu của các item trên tab bar
        self.tabBar.tintColor = .black
        
        // Thiết lập màu nền của tab bar
        self.tabBar.barTintColor = .white
        
        // Thiết lập chiều cao của tab bar
        self.tabBar.frame.size.height = 60
        tabBar.backgroundColor = .white
        
        // Thiết lập hình ảnh cho các item trên tab bar
        guard let items = self.tabBar.items else { return }
        let images = ["house", "star", "bell"]
        for (index, imageName) in images.enumerated() {
            items[index].image = UIImage(systemName: imageName)
        }
    }
}

class HomeVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}


class FavoriteVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

class NotifyVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
