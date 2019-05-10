//
//  MessageService.swift
//  Smack
//
//  Created by Brandon Criss on 5/9/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    static let instance = MessageService()
    
    var channels = [Channel]()
    var selectedChannel: Channel?
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(GET_CHANNELS_URL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }
                if let json = JSON(data: data).array {
                    for item in json {
                        let channelTitle = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item["_id"].stringValue

                        let channel = Channel(channelTitle: channelTitle, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                    }
                    NotificationCenter.default.post(name: NOTIFICATION_CHANNELS_LOADED, object: nil)
                    completion(true)
                }
                
//                Swift 4 Decodable
//                do {
//                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
//                    completion(true)
//                } catch let error {
//                    debugPrint(error as Any)
//                    completion(false)
//                }
            } else {
                debugPrint(response.result.error as Any)
                completion(false)
            }
        }
    }
    
    func clearChannels() {
        channels.removeAll()
    }
    
}
