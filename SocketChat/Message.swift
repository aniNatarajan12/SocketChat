//
//  Message.swift
//  SocketChat
//
//  Created by Anirudh Natarajan on 2/25/18.
//  Copyright © 2018 Anirudh Natarajan. All rights reserved.
//

import Foundation

struct Message {
  let message: String
  let senderUsername: String
  let messageSender: MessageSender
  
  init(message: String, messageSender: MessageSender, username: String) {
    self.message = message.withoutWhitespace()
    self.messageSender = messageSender
    self.senderUsername = username
  }
}
