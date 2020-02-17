//
//  ContactListPresenter.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class ContactListPresenter: ContactListViewToPresenterProtocol {
    
    var view: PresenterToContactListViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    var router: PresenterToContactListRouterProtocol?
    
    func fetchContactList() {
        interactor?.retrieveContacts()
    }
    
    func showAddContactController(from navigationController: UINavigationController) {
        router?.presentAddContactScreen(from: navigationController)
    }
}


extension ContactListPresenter: InteractorToPresenterProtocol {
    
    func didReceiveContacts(list: [Contact]) {
        view?.showContactList(info: list)
    }
}
