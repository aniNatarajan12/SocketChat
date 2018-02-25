//
//  JoinChatViewController.swift
//  SocketChat
//
//  Created by Anirudh Natarajan on 2/25/18.
//  Copyright © 2018 Anirudh Natarajan. All rights reserved.
//

import UIKit

class JoinChatViewController: UIViewController {
    let logoImageView = UIImageView()
    let shadowView = UIView()
    let nameTextField = TextField()
}

extension JoinChatViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let chatRoomVC = ChatRoomViewController()
        if let username = nameTextField.text {
            chatRoomVC.username = username
        }
        navigationController?.pushViewController(chatRoomVC, animated: true)
        return true
    }
}

class TextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 8);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}



