//
//  AddContactProtocol.swift
//  ContactsApp
//  Created by Subin Revi on 17/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import Foundation

//VIEW -> PRESENTER
protocol AddContactViewToPresenterProtocol: AnyObject {
    var view: PresenterToAddContactViewProtocol? { get set }
    var interactor: AddContactPresenterToInteractorProtocol? { get set }
    var router: PresenterToAddContactRouterProtocol? { get set }
    
    func saveContact()
}

// PRESENTER -> VIEW
protocol PresenterToAddContactViewProtocol: AnyObject {
    var presenter: AddContactViewToPresenterProtocol? { get set }
}

// PRESENTER -> ROUTER
protocol PresenterToAddContactRouterProtocol: AnyObject {
    
}

// PRESENTER -> INTERACTOR
protocol AddContactPresenterToInteractorProtocol: AnyObject {
    
    var presenter: AddContactInteractorToPresenterProtocol? { get set }
    func saveContact()
}

// INTERACTOR -> PRESENTER
protocol AddContactInteractorToPresenterProtocol: AnyObject {
    func didSaveContact()
}

