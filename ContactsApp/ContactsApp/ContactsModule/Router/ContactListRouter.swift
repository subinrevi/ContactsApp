//
//  ContactListRouter.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class ContactListRouter: PresenterToContactListRouterProtocol {
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    static func createContactListModule() -> UIViewController {
        
        let navController = storyboard.instantiateViewController(withIdentifier: "NavigationController") as! UINavigationController
        guard let contactListViewController = navController.topViewController as? ContactsListViewController else { fatalError("Invalid View Controller") }

        //Create presenter, interactor and router objects.
        
        let presenter: ContactListViewToPresenterProtocol & InteractorToPresenterProtocol  = ContactListPresenter()
        let interactor: PresenterToInteractorProtocol = ContactListInteractor()
        let router = ContactListRouter()
        
        contactListViewController.presenter = presenter
        presenter.view = contactListViewController
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return navController
        
    }
    
    func presentAddContactScreen(from navigationController: UINavigationController) {
         let addContactNavController = ContactListRouter.storyboard.instantiateViewController(identifier: "AddContactNavigationControler")
         navigationController.present(addContactNavController, animated: true, completion: nil)
    }
}
