//
//  ProfileViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var screen: ProfileScreen?
    
    override func loadView() {
        screen = ProfileScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MessageView")
       
    }
    
}
