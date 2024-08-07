//
//  FavoriteViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    var screen: FavoriteScreen?
    
    override func loadView() {
        screen = FavoriteScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FavoriteView")
    }
    
}

