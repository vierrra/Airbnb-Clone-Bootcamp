//
//  MessageViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class MessageViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        print("MessageView viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("MessageView viewDidAppear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MessageView")
        view.backgroundColor = .white
    }
    
}

