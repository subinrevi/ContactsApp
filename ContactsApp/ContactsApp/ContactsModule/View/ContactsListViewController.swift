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
        registerTableViewCell()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        presenter?.fetchContactList()
    }
    
    func registerTableViewCell() {
        contactsTableView.estimatedRowHeight = 50
        contactsTableView.rowHeight = UITableView.automaticDimension
        
        let contactsNib = UINib(nibName: "ContactCell", bundle: nil)
        contactsTableView.register(contactsNib, forCellReuseIdentifier: "ContactCell")
    }
    
    //MARK: Button Actions Methods
    
    @IBAction func addContactButtonTapped(_ sender: Any) {
        guard let navController = self.navigationController else {
            return
        }
        presenter?.showAddContactController(from: navController)
    }
}

//MARK: PresenterToContactListViewProtocol Methods

extension ContactsListViewController: PresenterToContactListViewProtocol {
    
    func showContactList(info: [Contact]) {
        self.contacts = info
    }
}

//MARK: Table View Delegate Methods

extension ContactsListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactCell
        let contactInfo = contacts[indexPath.row]
        cell.displayContactInfo(model: contactInfo)
        return cell
    }
}

//I am making some changes in dev branch

