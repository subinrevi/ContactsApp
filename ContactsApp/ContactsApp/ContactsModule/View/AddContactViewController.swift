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
    var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaderView()
        
    }
    
    func setupHeaderView() {
        addContactTableView.estimatedRowHeight = 50
        addContactTableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
        addContactTableView.backgroundColor = .lightGray
//        headerView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(headerView)
//        headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
//        headerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        headerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        headerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0).isActive = true
//        heightConstraint = headerView.heightAnchor.constraint(equalToConstant: 300)
//        heightConstraint.isActive = true
        
        headerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 300)
        headerView.contentMode = .scaleAspectFill
        headerView.clipsToBounds = true
        view.addSubview(headerView)
    }
    
    
    //MARK: Button Actions
    @IBAction func doneButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Content offset = \(scrollView.contentOffset)")
        let y = 300 - (scrollView.contentOffset.y + 300)
        let height = min(max(y, 60), 400)
        headerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height)
//        addContactTableView.contentInset = UIEdgeInsets(top: height, left: 0, bottom: 0, right: 0)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
}
