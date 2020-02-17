//
//  AddContactPresenter.swift
//  ContactsApp
//
//  Created by Subin Revi on 17/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import Foundation

class AddContactPresenter: AddContactViewToPresenterProtocol {
    
    var view: PresenterToAddContactViewProtocol?
    
    var interactor: AddContactPresenterToInteractorProtocol?
    
    var router: PresenterToAddContactRouterProtocol?
    
    func saveContact() {
        
    }

}
