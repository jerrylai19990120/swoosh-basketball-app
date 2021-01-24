//
//  BorderButton.swift
//  Swoosh
//
//  Created by Jerry Lai on 2021-01-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
