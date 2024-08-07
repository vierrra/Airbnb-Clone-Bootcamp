//
//  MainTabBarViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
      super.viewDidLoad()

    let explorerViewController = createNavController(viewController: ExplorerViewController(), title: "Explorar", imageName: "magnifyingglass")
    let favoriteViewController = createNavController(viewController: FavoriteViewController(), title: "Favoritos", imageName: "heart")
    let travelsViewController = createNavController(viewController: TravelsViewController(), title: "Viagens", imageName: "star")
    let messageViewController = createNavController(viewController: MessageViewController(), title: "Mensagens", imageName: "message")
    let profileViewController = createNavController(viewController: ProfileViewController(), title: "Perfil", imageName: "person.crop.circle")

      viewControllers = [explorerViewController, favoriteViewController, travelsViewController, messageViewController, profileViewController]
      customizeTabBarAppearance()
    }

    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
      let navController = UINavigationController(rootViewController: viewController)
      navController.tabBarItem.title = title
      navController.tabBarItem.image = UIImage(systemName: imageName)
      return navController
    }

    private func customizeTabBarAppearance() {
      tabBar.tintColor = .red
      tabBar.unselectedItemTintColor = .lightGray
      tabBar.backgroundColor = .white
      tabBar.isTranslucent = false
      tabBar.layer.borderColor = UIColor.lightGray.cgColor
      tabBar.layer.borderWidth = 0.5
    }
}

