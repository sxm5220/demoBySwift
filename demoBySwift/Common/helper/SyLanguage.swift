//
//  SyLanguage.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//

import Foundation
import UIKit

//多语言
func strLocalizable(key: String) -> String {
    return NSLocalizedString(key, comment: "comment")
}

//系统当前语言
func language() -> String {
    let languageFirstFromLocale: String = Locale.preferredLanguages.first!
    return languageFirstFromLocale
}

//中文
func isChinese() -> Bool {
    if language().hasPrefix("zh") {
        return true
    }
    return false
}

//英语
func isEnglish() -> Bool {
    if language().hasPrefix("en") {
        return true
    }
    return false
}

//法语
func isFrancais() -> Bool {
    if language().hasPrefix("fr") {
        return true
    }
    return false
}

//日语
func isJapanese() -> Bool {
    if language().hasPrefix("ja") {
        return true
    }
    return false
}

//韩语
func isKorean() -> Bool {
    if language().hasPrefix("ko") {
        return true
    }
    return false
}

//阿拉伯语
func isArabic() -> Bool {
    if language().hasPrefix("ar") {
        return true
    }
    return false
}




