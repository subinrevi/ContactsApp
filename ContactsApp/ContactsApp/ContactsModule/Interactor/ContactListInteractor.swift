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
        let contact1 = Contact(name: "Subin Revi", mobileNumber: 9987456234)
        let contact2 = Contact(name: "Lebron James", mobileNumber: 9967456234)
        let contact3 = Contact(name: "Lionel Messi", mobileNumber: 9987666234)
        presenter?.didReceiveContacts(list: [contact1, contact2, contact3])
    }
}
