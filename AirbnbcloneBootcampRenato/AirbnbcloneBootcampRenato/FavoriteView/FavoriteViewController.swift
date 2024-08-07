//
//  FavoriteViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        print("FavoriteView viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("FavoriteView viewDidAppear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FavoriteView")
        view.backgroundColor = .white
    }
    
}

