//
//  SyString.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//
// -- 字符串 --

import Foundation
import UIKit

//字符串显示不同颜色
func changeColorStyleOfString(allString: String,rangeString: String,frontColor: UIColor,endColor: UIColor) ->NSMutableAttributedString {
    let attriStr:NSMutableAttributedString = NSMutableAttributedString(string: allString)
    let range = NSMakeRange(NSString(string: allString).range(of: rangeString).location, NSString(string: allString).range(of: rangeString).length)
    //前面的颜色 frontColor
    attriStr.addAttribute(NSForegroundColorAttributeName, value: frontColor, range: NSMakeRange(0, range.location))
    //后面的颜色 endColor
    attriStr.addAttribute(NSForegroundColorAttributeName, value: endColor, range: range)
    return attriStr
}

//带下划线的字符串
func underlineStyleOfString(string: String) -> NSMutableAttributedString {
    let strings = NSMutableAttributedString.init(string: string)
    let strRange = NSRange.init(location: 0, length: strings.length)
    strings.addAttribute(NSUnderlineStyleAttributeName, value: 1, range: strRange)
    return strings
}
