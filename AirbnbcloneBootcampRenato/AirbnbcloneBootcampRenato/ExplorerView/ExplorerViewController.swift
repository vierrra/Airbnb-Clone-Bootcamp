//
//  ExplorerViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class ExplorerViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        print("ExplorerView viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ExplorerView viewDidAppear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ExplorerView")
        view.backgroundColor = .white
    }
    
}
