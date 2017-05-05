//
//  SyButton.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//
// -- 按钮相关 --

import Foundation
import UIKit

func buttonWithTitleFrame(frame: CGRect,
                          title: String,
                          titleColor: UIColor,
                          backgroundColor: UIColor,
                          cornerRadius: CGFloat,
                          tag: NSInteger,
                          target: AnyObject,
                          action: Selector) -> UIButton {
    let button = UIButton.init()
    button.frame = frame
    button.setTitle(title, for: .normal)
    button.setTitleColor(titleColor, for: .normal)
    button.backgroundColor = backgroundColor
    if cornerRadius > 0 {
        button.layer.cornerRadius = cornerRadius
    }
    button.tag = tag
    button.addTarget(target, action: action, for: .touchUpInside)
    return button
}

func buttonWithImageFrame(frame: CGRect,
                          imageName: String,
                          tag: NSInteger,
                          target: AnyObject,
                          action: Selector) -> UIButton {
    let button = UIButton.init()
    button.frame = frame
    button.backgroundColor = UIColor.clear
    button.setBackgroundImage(UIImage.init(named: imageName), for: .normal)
    button.tag = tag
    button.addTarget(target, action: action, for: .touchUpInside)
    return button
}
