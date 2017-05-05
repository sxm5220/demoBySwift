//
//  SyExampleProvider.swift
//  demoBySwift
//
//  Created by sxm on 2017/3/9.
//  Copyright © 2017年 sxm. All rights reserved.
//

import Foundation
import UIKit
import ESTabBarController_swift

let titleArray = ["主页",
                  "发现",
                  "拍照",
                  "喜欢",
                  "我"]

let titleMoreArray = ["主页",
                      "发现",
                      "拍照",
                      "喜欢",
                      "我",
                      "消息",
                      "商店",
                      "卡板"]

let imageArray = ["home",
                  "find",
                  "photo",
                  "favor",
                  "me"]

let imageMoreArray = ["home",
                      "find",
                      "photo",
                      "favor",
                      "me",
                      "message",
                      "shop",
                      "cardboard"]

enum SyExampleProvider {
    
    static func systemStyle() -> UITabBarController {
        let tabBarController = UITabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = UITabBarItem.init(title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = UITabBarItem.init(title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = UITabBarItem.init(title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = UITabBarItem.init(title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = UITabBarItem.init(title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        return tabBarController
    }
    
    static func customStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        v1.tabBarItem = ESTabBarItem(title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem(title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem(title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem(title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem(title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4 ])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        return tabBarController
    }
    
    static func mixtureStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        v1.tabBarItem = ESTabBarItem.init(title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = UITabBarItem.init(title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = UITabBarItem.init(title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        return tabBarController
    }
    
    static func systemMoreStyle() -> UITabBarController {
        let tabBarController = UITabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        let v6 = SyExampleVC()
        let v7 = SyExampleVC()
        let v8 = SyExampleVC()
        
        v1.tabBarItem = UITabBarItem.init(title: titleMoreArray[0], image: UIImage(named: imageMoreArray[0]), selectedImage: UIImage(named: "\(imageMoreArray[0])_1"))
        v2.tabBarItem = UITabBarItem.init(title: titleMoreArray[1], image: UIImage(named: imageMoreArray[1]), selectedImage: UIImage(named: "\(imageMoreArray[1])_1"))
        v3.tabBarItem = UITabBarItem.init(title: titleMoreArray[2], image: UIImage(named: imageMoreArray[2]), selectedImage: UIImage(named: "\(imageMoreArray[2])_1"))
        v4.tabBarItem = UITabBarItem.init(title: titleMoreArray[3], image: UIImage(named: imageMoreArray[3]), selectedImage: UIImage(named: "\(imageMoreArray[3])_1"))
        v5.tabBarItem = UITabBarItem.init(title: titleMoreArray[4], image: UIImage(named: imageMoreArray[4]), selectedImage: UIImage(named: "\(imageMoreArray[4])_1"))
        v6.tabBarItem = UITabBarItem.init(title: titleMoreArray[5], image: UIImage(named: imageMoreArray[5]), selectedImage: UIImage(named: "\(imageMoreArray[5])_1"))
        v7.tabBarItem = UITabBarItem.init(title: titleMoreArray[6], image: UIImage(named: imageMoreArray[6]), selectedImage: UIImage(named: "\(imageMoreArray[6])_1"))
        v8.tabBarItem = UITabBarItem.init(title: titleMoreArray[7], image: UIImage(named: imageMoreArray[7]), selectedImage: UIImage(named: "\(imageMoreArray[7])_1"))
      
        tabBarController.viewControllers = [v1,v2,v3,v4,v5,v6,v7,v8]
        return tabBarController
    }
    
    static func customMoreStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        let v6 = SyExampleVC()
        let v7 = SyExampleVC()
        let v8 = SyExampleVC()
        v1.tabBarItem = ESTabBarItem.init(title: titleMoreArray[0], image: UIImage(named: imageMoreArray[0]), selectedImage: UIImage(named: "\(imageMoreArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(title: titleMoreArray[1], image: UIImage(named: imageMoreArray[1]), selectedImage: UIImage(named: "\(imageMoreArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(title: titleMoreArray[2], image: UIImage(named: imageMoreArray[2]), selectedImage: UIImage(named: "\(imageMoreArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(title: titleMoreArray[3], image: UIImage(named: imageMoreArray[3]), selectedImage: UIImage(named: "\(imageMoreArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(title: titleMoreArray[4], image: UIImage(named: imageMoreArray[4]), selectedImage: UIImage(named: "\(imageMoreArray[4])_1"))
        v6.tabBarItem = ESTabBarItem.init(title: titleMoreArray[5], image: UIImage(named: imageMoreArray[5]), selectedImage: UIImage(named: "\(imageMoreArray[5])_1"))
        v7.tabBarItem = ESTabBarItem.init(title: titleMoreArray[6], image: UIImage(named: imageMoreArray[6]), selectedImage: UIImage(named: "\(imageMoreArray[6])_1"))
        v8.tabBarItem = ESTabBarItem.init(title: titleMoreArray[7], image: UIImage(named: imageMoreArray[7]), selectedImage: UIImage(named: "\(imageMoreArray[7])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5,v6,v7,v8]
        return tabBarController
    }
    
    static func mixtureMoreStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        let v6 = SyExampleVC()
        let v7 = SyExampleVC()
        let v8 = SyExampleVC()
        v1.tabBarItem = ESTabBarItem.init(title: titleMoreArray[0], image: UIImage(named: imageMoreArray[0]), selectedImage: UIImage(named: "\(imageMoreArray[0])_1"))
        v2.tabBarItem = UITabBarItem.init(title: titleMoreArray[1], image: UIImage(named: imageMoreArray[1]), selectedImage: UIImage(named: "\(imageMoreArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(title: titleMoreArray[2], image: UIImage(named: imageMoreArray[2]), selectedImage: UIImage(named: "\(imageMoreArray[2])_1"))
        v4.tabBarItem = UITabBarItem.init(title: titleMoreArray[3], image: UIImage(named: imageMoreArray[3]), selectedImage: UIImage(named: "\(imageMoreArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(title: titleMoreArray[4], image: UIImage(named: imageMoreArray[4]), selectedImage: UIImage(named: "\(imageMoreArray[4])_1"))
        v6.tabBarItem = UITabBarItem.init(title: titleMoreArray[5], image: UIImage(named: imageMoreArray[5]), selectedImage: UIImage(named: "\(imageMoreArray[5])_1"))
        v7.tabBarItem = ESTabBarItem.init(title: titleMoreArray[6], image: UIImage(named: imageMoreArray[6]), selectedImage: UIImage(named: "\(imageMoreArray[6])_1"))
        v8.tabBarItem = UITabBarItem.init(title: titleMoreArray[7], image: UIImage(named: imageMoreArray[7]), selectedImage: UIImage(named: "\(imageMoreArray[7])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5,v6,v7,v8]
        return tabBarController

    }
    
    //navigationWithTabbar
    static func navigationWithTabbarStyle() -> SyBaseNavigationController {
        let tabBarController = SyExampleProvider.customStyle()
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func tabbarWithNavigationStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        v1.tabBarItem = ESTabBarItem(title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem(title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem(title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem(title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem(title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4 ])_1"))
        
        let n1 = SyBaseNavigationController.init(rootViewController: v1)
        n1.title = titleArray[0]
        let n2 = SyBaseNavigationController.init(rootViewController: v2)
        n2.title = titleArray[1]
        let n3 = SyBaseNavigationController.init(rootViewController: v3)
        n3.title = titleArray[2]
        let n4 = SyBaseNavigationController.init(rootViewController: v4)
        n4.title = titleArray[3]
        let n5 = SyBaseNavigationController.init(rootViewController: v5)
        n5.title = titleArray[4]
        
        tabBarController.viewControllers = [n1,n2,n3,n4,n5]
        return tabBarController
    }
    
    static func customColorStyle() -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyBasicContentView(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyBasicContentView(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyBasicContentView(), title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyBasicContentView(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyBasicContentView(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func customBouncesStyle() -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyBouncesContentView(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyBouncesContentView(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyBouncesContentView(), title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyBouncesContentView(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyBouncesContentView(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func customBackgroundColorStyle(implies: Bool) -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        if let tabBar = tabBarController.tabBar as? ESTabBar {
            tabBar.itemCustomPositioning = .fillIncludeSeparator
        }
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyBackgroundContentView(), title: nil, image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyBackgroundContentView(), title: nil, image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyBackgroundContentView(), title: nil, image: UIImage(named: "\(imageArray[2])_big"), selectedImage: UIImage(named: "\(imageArray[2])_big_1"))
        v4.tabBarItem = ESTabBarItem.init(SyBackgroundContentView(), title: nil, image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyBackgroundContentView(), title: nil, image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func customHighlightableStyle() -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        if let tabBar = tabBarController.tabBar as? ESTabBar {
            tabBar.itemCustomPositioning = .fillIncludeSeparator
        }
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyHighlightableContentView(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyHighlightableContentView(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyHighlightableContentView(), title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyHighlightableContentView(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyHighlightableContentView(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func customIrregularityStyle(delegate: UITabBarControllerDelegate) -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate
        tabBarController.title = "Irregularity"
        tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
        tabBarController.tabBar.backgroundImage = UIImage(named: "background_dark")
        tabBarController.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return true
            }
            return false
        }
        
        tabBarController.didHijackHandler = {
            [weak tabBarController] tabbarController, viewController, index in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                
                let alertController = UIAlertController.init(title: nil, message: nil, preferredStyle: .actionSheet)
                
                let takePhotoAction = UIAlertAction(title: "拍照", style:.default, handler: nil)
                alertController.addAction(takePhotoAction)
                
                let selectFromAlbumAction = UIAlertAction(title: "相册", style:.default, handler: nil)
                alertController.addAction(selectFromAlbumAction)
                
                let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                tabBarController?.present(alertController, animated:  true, completion: nil)
            }
        }
        
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyIrregularityBasicContentView(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyIrregularityBasicContentView(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyIrregularityContentView(), title: nil, image: UIImage(named: "\(imageArray[2])_verybig"), selectedImage: UIImage(named: "\(imageArray[2])_verybig"))
        v4.tabBarItem = ESTabBarItem.init(SyIrregularityBasicContentView(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyIrregularityBasicContentView(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func customTipsStyle(delegate: UITabBarControllerDelegate?) ->SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate
        tabBarController.title = "Trregularity"
        tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
        tabBarController.tabBar.backgroundImage = UIImage(named: "background_dark")
        
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyTipsBasicContentView(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyTipsBasicContentView(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyTipsBasicContentView(), title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyTipsBasicContentView(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyTipsContentView(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
        
    }
    
    static func systemRemindStyle() -> UITabBarController {
        let tabBarController = UITabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = UITabBarItem.init(title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = UITabBarItem.init(title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = UITabBarItem.init(title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = UITabBarItem.init(title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = UITabBarItem.init(title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        v1.tabBarItem.badgeValue = "New"
        v2.tabBarItem.badgeValue = "99+"
        v3.tabBarItem.badgeValue = "1"
        
        if let tabBarItem = v3.tabBarItem as? ESTabBarItem {
            tabBarItem.badgeColor = UIColor.blue
        }
        v4.tabBarItem.badgeValue = ""
        v5.tabBarItem.badgeValue = nil
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        return tabBarController
    }
    
    static func customRemindStyle() -> UITabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        
        if let tabBarItem = v1.tabBarItem as? ESTabBarItem {
            tabBarItem.badgeValue = "New"
        }
        if let tabBarItem = v2.tabBarItem as? ESTabBarItem {
            tabBarItem.badgeValue = "99+"
        }
        if let tabBarItem = v3.tabBarItem as? ESTabBarItem {
            tabBarItem.badgeValue = "1"
            tabBarItem.badgeColor = UIColor.blue
        }
        if let tabBarItem = v4.tabBarItem as? ESTabBarItem {
            tabBarItem.badgeValue = ""
        }
        if let tabBarItem = v5.tabBarItem as? ESTabBarItem {
            tabBarItem.badgeValue = nil
        }
        
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        
        return tabBarController
    }
    
    static func customAnimateRemindStyle(implies: Bool) -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        if let tabBar = tabBarController.tabBar as? ESTabBar {
            tabBar.itemCustomPositioning = .fillIncludeSeparator
        }
        
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView(), title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        if let tabBarItem = v2.tabBarItem as? ESTabBarItem {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                tabBarItem.badgeValue = "1"
            }
        }
        
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func customAnimateRemindStyle2(implies: Bool) -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        if let tabBar = tabBarController.tabBar as? ESTabBar {
            tabBar.itemCustomPositioning = .fillIncludeSeparator
        }
        
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView2(), title: titleArray[0], image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView2(), title: titleArray[1], image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView2(), title: titleArray[2], image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView2(), title: titleArray[3], image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView2(), title: titleArray[4], image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        if let tabBarItem = v2.tabBarItem as? ESTabBarItem {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                tabBarItem.badgeValue = "1"
            }
        }
        
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }

    static func customAnimateRemindStyle3(implies: Bool) -> SyBaseNavigationController {
        let tabBarController = ESTabBarController()
        if let tabBar = tabBarController.tabBar as? ESTabBar {
            tabBar.itemCustomPositioning = .fillIncludeSeparator
        }
        
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView3(), title: nil, image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView3(), title: nil, image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView3(), title: nil, image: UIImage(named: imageArray[2]), selectedImage: UIImage(named: "\(imageArray[2])_1"))
        v4.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView3(), title: nil, image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyAnimateTipsContentView3(), title: nil, image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        if let tabBarItem = v2.tabBarItem as? ESTabBarItem {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                tabBarItem.badgeValue = "1"
            }
        }
        
        let navigationController = SyBaseNavigationController.init(rootViewController: tabBarController)
        tabBarController.title = "例子"
        return navigationController
    }
    
    static func lottieStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = SyExampleVC()
        let v2 = SyExampleVC()
        let v3 = SyExampleVC()
        let v4 = SyExampleVC()
        let v5 = SyExampleVC()
        
        v1.tabBarItem = ESTabBarItem.init(SyLottieAnimateBasicContentView(), title: nil, image: UIImage(named: imageArray[0]), selectedImage: UIImage(named: "\(imageArray[0])_1"))
        v2.tabBarItem = ESTabBarItem.init(SyLottieAnimateBasicContentView(), title: nil, image: UIImage(named: imageArray[1]), selectedImage: UIImage(named: "\(imageArray[1])_1"))
        v3.tabBarItem = ESTabBarItem.init(SyLottieAnimateContentView(), title: nil, image: nil, selectedImage: nil)
        v4.tabBarItem = ESTabBarItem.init(SyLottieAnimateBasicContentView(), title: nil, image: UIImage(named: imageArray[3]), selectedImage: UIImage(named: "\(imageArray[3])_1"))
        v5.tabBarItem = ESTabBarItem.init(SyLottieAnimateBasicContentView(), title: nil, image: UIImage(named: imageArray[4]), selectedImage: UIImage(named: "\(imageArray[4])_1"))
        tabBarController.viewControllers = [v1,v2,v3,v4,v5]
        
        return tabBarController
    }

}
