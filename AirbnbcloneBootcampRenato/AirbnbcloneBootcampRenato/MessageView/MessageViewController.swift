//
//  MessageViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class MessageViewController: UIViewController {
    
    var screen: MessageScreen?
    
    override func loadView() {
        screen = MessageScreen()
        view = screen
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MessageView")
    }
}

