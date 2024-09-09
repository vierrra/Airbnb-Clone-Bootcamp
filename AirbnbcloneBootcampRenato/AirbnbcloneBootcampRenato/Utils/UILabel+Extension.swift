//
//  UILabel+Extension.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 09/09/24.
//

import UIKit

class PaddedLabel: UILabel {

  var textInsets = UIEdgeInsets.zero {
    didSet {
        invalidateIntrinsicContentSize()
    }
  }

  override func drawText(in rect: CGRect) {
    super.drawText(in: rect.inset(by: textInsets))
  }

  override var intrinsicContentSize: CGSize {
    var size = super.intrinsicContentSize
    size.height += textInsets.top + textInsets.bottom
    size.width += textInsets.left + textInsets.right
    return size
  }
}

