//
//  TravelsViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class TravelsViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        print("TravelsView viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("TravelsView viewDidAppear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TravelsView")
        view.backgroundColor = .white
    }
    
}

