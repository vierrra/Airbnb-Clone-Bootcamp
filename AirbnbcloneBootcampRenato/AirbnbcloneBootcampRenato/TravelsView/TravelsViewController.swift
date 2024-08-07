//
//  TravelsViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class TravelsViewController: UIViewController {
    
    var screen: TravelsScreen?
    
    override func loadView() {
        screen = TravelsScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TravelsView")
    }
    
}

