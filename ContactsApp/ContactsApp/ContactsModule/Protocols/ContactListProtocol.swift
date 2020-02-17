//
//  ContactListProtocol.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

// VIEW -> PRESENTER
protocol ContactListViewToPresenterProtocol: AnyObject {
    var view: PresenterToContactListViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    var router: PresenterToContactListRouterProtocol? { get set }
    
    func fetchContactList()
    func showAddContactController(from navigationController: UINavigationController)
}

// PRESENTER -> VIEW
protocol PresenterToContactListViewProtocol: AnyObject {
    
     var presenter: ContactListViewToPresenterProtocol? { get set }
    
     func showContactList(info: [Contact])
}

// PRESENTER -> ROUTER
protocol PresenterToContactListRouterProtocol: AnyObject {
    
    static func createContactListModule() -> UIViewController
    func presentAddContactScreen(from navigationController: UINavigationController)
}

// PRESENTER -> INTERACTOR
protocol PresenterToInteractorProtocol: AnyObject {
    
    var presenter: InteractorToPresenterProtocol? { get set }
       
    func retrieveContacts()
}

// INTERACTOR -> PRESENTER
protocol InteractorToPresenterProtocol: AnyObject {
    func didReceiveContacts(list: [Contact])
}

