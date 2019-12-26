//
//  UpdateProfileFormError.swift
//  Hello MVP
//
//  Created by ahmed elmemy on 12/23/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation

enum UpdateProfileFormError:Error
{
    case emptyName
    case invalidMobileNumber
    case invalidEmailAddress
    case veryYoung
    
    var localizedDescription:String
    {
        switch self {
        case .emptyName:
            return "Please Enter Your Name"
        case .invalidMobileNumber:
            return "Your Mobile Number is invalid"
        case .invalidEmailAddress:
            return "Your Email Address is invalid"
        case .veryYoung:
            return "you are very young"
        }
    }
}
