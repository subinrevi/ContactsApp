//
//  AddContactViewController.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {

    @IBOutlet weak var addContactTableView: UITableView!
    let headerView = HeaderView.instantiate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaderView()
       
    }
    
    func setupHeaderView() {
        addContactTableView.estimatedRowHeight = 50
        addContactTableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
        addContactTableView.backgroundColor = .lightGray
    
        headerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        headerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        headerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    

    //MARK: Button Actions
    @IBAction func doneButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}


extension AddContactViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Test \(indexPath.row)"
        return cell
    }
}
