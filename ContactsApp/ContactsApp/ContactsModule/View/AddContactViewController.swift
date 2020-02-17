//
//  AddContactViewController.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: Button Actions
    @IBAction func doneButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
