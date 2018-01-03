//
//  Constants.swift
//  Smack
//
//  Created by Octavian on 03/01/2018.
//  Copyright © 2018 Octavian. All rights reserved.
//

import Foundation

//typealias is simply renaming a type
//typealias Octavian = String
//let name: Octavian = "Octavian"
//(_ Success: Bool) -> () - closure, first class function that can be passed around in code
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://octaviansmack.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register/"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
