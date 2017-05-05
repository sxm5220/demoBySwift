//
//  SyTextField.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//
// -- 文本框 --

import Foundation
import UIKit

func textFieldWithFrame(frame: CGRect,
                        placeHolder: String,
                        isSecure: Bool,
                        delegate: UITextFieldDelegate?) -> UITextField {
    
    let textField = UITextField.init()
    textField.frame = frame
    textField.placeholder = placeHolder
    textField.clearButtonMode = UITextFieldViewMode.whileEditing
    textField.borderStyle = UITextBorderStyle.none
    textField.backgroundColor = rgbWithHexadecimalValue(rgbValue: 0xffffff)
    textField.layer.borderColor = rgbWithHexadecimalValue(rgbValue: 0xd3d3d3).cgColor
    textField.layer.borderWidth = 0.5
    textField.layer.cornerRadius = 8
    textField.font = UIFont.systemFont(ofSize: 14.0)
    textField.textColor = UIColor.black
    textField.isSecureTextEntry = isSecure
    textField.delegate = delegate
    
    let view = UIView.init()
    view.frame = CGRect.init(x: 0, y: 0, width: 16, height: 40)
    view.backgroundColor = UIColor.clear
    textField.leftView = view
    textField.leftViewMode = UITextFieldViewMode.always;
    return textField
}
