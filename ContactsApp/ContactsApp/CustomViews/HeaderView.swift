//
//  HeaderView.swift
//  ContactsApp
//
//  Created by subin.revi on 17/02/20.
//  Copyright © 2020 subin.revi. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        //instantiate()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //instantiate()
    }

    static func instantiate() -> HeaderView {
        let view: HeaderView = .initFromNib()
        return view
    }
}


extension UIView {
    class func initFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
}


//Contacts app git testing
