//
//  TabBarController.swift
//  Electrolux Test Work
//
//  Created by Рахим Габибли on 05.05.2024.
//

import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        viewControllers = [generateViewController(viewController:
                                                    FirstTabViewController(),
                                                  image: UIImage(systemName: "1.square.fill"),
                                                  title: "First Tab"),
                           generateViewController(viewController:
                                                    SecondTabViewController(),
                                                  image: UIImage(systemName: "2.square.fill"),
                                                  title: "Second Tab")
        ]
    }
    
    private func generateViewController(viewController: UIViewController, image: UIImage?, title: String) -> UIViewController {
        viewController.tabBarItem.image = image
        viewController.tabBarItem.title = title
        return viewController
    }
}
