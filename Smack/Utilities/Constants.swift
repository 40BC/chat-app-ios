//
//  Constants.swift
//  Smack
//
//  Created by Brandon Criss on 4/23/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import Foundation

// makes type CompletionHandler type Success which is a bool
typealias CompletionHandler = (_ Success: Bool) -> ()

// test@register.com, 12345
// segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// userDefaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// networking
let API_URL = "https://bc40-chat.herokuapp.com/v1"
let REGISTER_URL = "\(API_URL)/account/register"
let LOGIN_URL = "\(API_URL)/account/login"

// headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

