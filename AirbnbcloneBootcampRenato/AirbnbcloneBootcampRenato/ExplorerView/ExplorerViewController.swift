//
//  ExplorerViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class ExplorerViewController: UIViewController {
    
    var screen: ExplorerScreen?
    
    override func loadView() {
        screen = ExplorerScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ExplorerView")
    }
    
}
