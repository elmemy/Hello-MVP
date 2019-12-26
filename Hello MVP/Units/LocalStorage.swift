//
//  LocalStorage.swift
//  Hello MVP
//
//  Created by ahmed elmemy on 12/23/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation

class LocalStorage {
    
    var user: User?
    static let `default` = LocalStorage()
    
    private init() {
        
        user = getUser()
    }
    
    // get the user from remote or from local, based on your business
    private func getUser() -> User? {

        return User(name: "elmemy", email: "ahmed.elmemy21@gmail.com", mobileNumber: "01092407763", age: 26, gender: .male)
    }
}
