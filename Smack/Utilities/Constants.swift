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
let TO_AVATAR_PICKER = "toAvatarPicker"

// userDefaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// networking
let API_URL = "https://bc40-chat.herokuapp.com/v1"
let REGISTER_URL = "\(API_URL)/account/register"
let LOGIN_URL = "\(API_URL)/account/login"
let ADD_USER_URL = "\(API_URL)/user/add"
let USER_BY_EMAIL_URL = "\(API_URL)/user/byEmail"
let GET_CHANNELS_URL = "\(API_URL)/channel"
let GET_MESSAGES_URL = "\(API_URL)/message/byChannel"

// headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
    "Authorization": "Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]

// colors
let SMACK_PURPLE_PLACEHOLDER_COLOR = #colorLiteral(red: 0.2395215631, green: 0.3320434093, blue: 0.7513638139, alpha: 1)

// notifications
let NOTIFICATION_USER_DATA_DID_CHANGE = Notification.Name("notificationUserDataChanged")
let NOTIFICATION_CHANNELS_LOADED = Notification.Name("notificationChannelsLoaded")
let NOTIFICATION_CHANNEL_SELECTED = Notification.Name("notificationChannelSelected")
