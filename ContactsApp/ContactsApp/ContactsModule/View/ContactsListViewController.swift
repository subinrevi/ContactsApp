//
//  ContactsListViewController.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class ContactsListViewController: UIViewController {

    @IBOutlet weak var contactsTableView: UITableView!
    
    var presenter: ContactListViewToPresenterProtocol?
    
    var contacts: [Contact] = [] {
        didSet {
            contactsTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("First call comes here >")
        presenter?.fetchContactList()
    }
}


extension ContactsListViewController: PresenterToContactListViewProtocol {
    
    func showContactList() {
        print("Fifth call finally comes back to the view controller >>>>>")
    }
    
}


