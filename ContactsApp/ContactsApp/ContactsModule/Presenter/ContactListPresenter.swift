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
        print("Second call comes to the presenter >>")
        interactor?.retrieveContacts()
    }
}


extension ContactListPresenter: InteractorToPresenterProtocol {
    
    func didReceiveContacts() {
        print("Fourth call comes back to the presenter >>>>")
        view?.showContactList()
    }
}
