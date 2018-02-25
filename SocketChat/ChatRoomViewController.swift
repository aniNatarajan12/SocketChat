//
//  ChatRoomViewController.swift
//  SocketChat
//
//  Created by Anirudh Natarajan on 2/25/18.
//  Copyright © 2018 Anirudh Natarajan. All rights reserved.
//

import UIKit

class ChatRoomViewController: UIViewController {
    let tableView = UITableView()
    let messageInputBar = MessageInputView()
    
    let chatRoom = ChatRoom()
    
    var messages = [Message]()
    
    var username = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        chatRoom.delegate = self
        chatRoom.setupNetworkCommunication()
        chatRoom.joinChat(username: username)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        chatRoom.stopChatSession()
    }
}

//MARK - Message Input Bar
extension ChatRoomViewController: MessageInputDelegate {
    func sendWasTapped(message: String) {
        chatRoom.sendMessage(message: message)
    }
}

//MARK - Chat Room
extension ChatRoomViewController: ChatRoomDelegate {
    func receivedMessage(message: Message) {
        insertNewMessageCell(message)
    }
}

