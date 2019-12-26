//
//  UserProfileViewProtocol.swift
//  Hello MVP
//
//  Created by ahmed elmemy on 12/23/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation

protocol UserProfileViewProtocol: class{

    func setName(_ name: String)
    func setMobile(_ mobile: String)
    func setEmail(_ email: String)
    func setAge(_ age: Int)
    func setGender(atIndex index: Int)
    func getName() -> String
    func getMobileNumber() -> String
    func getEmail() -> String
    func getAge() -> Int
    func getGenderIndex() -> Int
    func showAlert(withTitle title: String, andErrorMessage message: String)
}
