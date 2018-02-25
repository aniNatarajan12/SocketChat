//
//  Label.swift
//  SocketChat
//
//  Created by Anirudh Natarajan on 2/25/18.
//  Copyright © 2018 Anirudh Natarajan. All rights reserved.
//

import UIKit

class Label: UILabel {

  override func drawText(in rect: CGRect) {
    let insets = UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
    super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
  }
}
