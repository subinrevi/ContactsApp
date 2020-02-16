//
//  ContactListInteractor.swift
//  ContactsApp
//
//  Created by Subin Revi on 16/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class ContactListInteractor: PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol?
    
  
    func retrieveContacts() {
        print("Third call comes to the interactor >>>")
        presenter?.didReceiveContacts()
    }
    
    
    
}
