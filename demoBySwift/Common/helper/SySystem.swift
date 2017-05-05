//
//  SySystem.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//
// -- 系统相关 --

import Foundation
import UIKit

//用于版本比较
func isNewVersion() -> Bool {
    let defau = UserDefaults.standard
    let lastVersion = defau.string(forKey: "kAppLastVersion")
    //print("当前版本\(currentVersion());,前一版本\(lastVersion)")
    if (lastVersion == nil) || (currentVersion() > lastVersion!){
        defau.set(currentVersion(), forKey: "kAppLastVersion")
        return true
    }
    return false
}

//当前app版本号
func currentVersion() -> String {
    let version: String! = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    return version
}

//屏幕宽
func screenWidth() -> CGFloat {
    return UIScreen.main.bounds.width
}


//屏幕高
func screenHeight() -> CGFloat {
    return UIScreen.main.bounds.height
}

//距离顶部（导航栏）的距离
func navigationBarWithHeight() -> CGFloat {
    return 64
}

