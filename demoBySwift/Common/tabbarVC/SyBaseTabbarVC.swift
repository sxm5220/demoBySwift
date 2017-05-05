//
//  SyBaseTabbarVC.swift
//  demoBySwift
//
//  Created by sxm on 2017/3/8.
//  Copyright © 2017年 sxm. All rights reserved.
//

import Foundation
import UIKit

class SyBaseTabbarVC: UIViewController,
                    UITableViewDataSource,
                    UITableViewDelegate,
                    UITabBarControllerDelegate{
    
    public var tableView: UITableView!
    public let sectionTitleArray = ["Basic", "Embed", "Animation", "Irregular", "Customize click", "Remind", "Lottie"]
    public let sectionSubtitleArray = ["基本", "嵌套", "动画", "不规则", "自定义点击", "提醒", "Lottie"]
    public let titleArray = [
        [
            "UITabBarController style",
            "ESTabBarController like system style",
            "Mix ESTabBar and UITabBar",
            "UITabBarController style with 'More'",
            "ESTabBarController style with 'More'",
            "Mix ESTabBar and UITabBar with 'More'",
            "UITabBarController style with non-zero default index",
            "ESTabBarController style with non-zero default index"
        ],
        [
            "ESTabBarController embeds the UINavigationController style",
            "UINavigationController embeds the ESTabBarController style",
            ],
        [
            "Customize the selected color style",
            "Spring animation style",
            "Background color change style",
            "With a selected effect style",
            "Suggested clicks style",
            ],
        [
            "In the middle with a larger button style",
            ],
        [
            "Hijack button click event",
            "Add a special reminder box",
            ],
        [
            "System remind style",
            "Imitate system remind style",
            "Remind style with animation",
            "Remind style with animation(2)",
            "Customize remind style",
            ],
        [
            "Lottie",
            ],
        ]
    
    public let subtitleArray = [
        [
            "UITabBarController样式",
            "ESTabBarController仿系统样式",
            "ESTabBar和UITabBar混合样式",
            "带有'More'的UITabBarController样式",
            "带有'More'的ESTabBarController样式",
            "带有'More'的ESTabBar和UITabBar混合样式",
            "默认index非0的UITabBarController样式",
            "默认index非0的ESTabBarController样式"
        ],
        [
            "UINavigationController内嵌UITabBarController样式",
            "UITabBarController内嵌UINavigationController样式",
            ],
        [
            "自定义选中颜色样式",
            "弹簧动画样式",
            "背景颜色变化样式",
            "带有选中效果样式",
            "暗示用户点击样式",
            ],
        [
            "中间带有较大按钮样式",
            ],
        [
            "劫持按钮的点击事件",
            "添加一个特殊的提醒框",
            ],
        [
            "系统提醒样式",
            "仿系统提醒样式",
            "带动画提醒样式",
            "带动画提醒样式(2)",
            "自定义提醒样式",
            ],
        [
            "Lottie",
            ],
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupView() {
        self.view.backgroundColor = UIColor.init(white: 245.0/255.0, alpha: 1.0)
        self.navigationItem.title = "工具栏样式"
        
        self.tableView = UITableView(frame: self.view.frame, style:UITableViewStyle.grouped)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
    }
    // MARK: UITableViewDataSource
    public func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitleArray.count
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray[section].count
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68.0
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 42.0
    }
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitleArray[section] + " " + "(" + sectionSubtitleArray[section] + ")"
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
   public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        //let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell") ?? UITableViewCell.init(style: .subtitle, reuseIdentifier: "UITableViewCell")
    
        let cell = UITableViewCell(style: .subtitle,reuseIdentifier: nil)
        cell.textLabel?.textColor = UIColor.init(white: 0.0, alpha: 0.6)
        cell.textLabel?.font = UIFont.init(name: "ChalkboardSE-Bold", size: 14.0)
        cell.textLabel?.lineBreakMode = .byCharWrapping
        cell.textLabel?.text = "\(indexPath.section + 1).\(indexPath.row + 1) \(titleArray[indexPath.section][indexPath.row])"
        cell.textLabel?.numberOfLines = 2
    
        cell.detailTextLabel?.textColor = UIColor.init(white: 0.0, alpha: 0.5)
        cell.detailTextLabel?.font = UIFont.init(name: "ChalkboardSE-Bold", size: 11.0)
        cell.detailTextLabel?.text = "\(indexPath.section + 1).\(indexPath.row + 1) \(subtitleArray[indexPath.section][indexPath.row])"
        cell.detailTextLabel?.numberOfLines = 2
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.systemStyle(), animated: true, completion: nil)
            case 1:
                self.present(SyExampleProvider.customStyle(), animated: true, completion: nil)
            case 2:
                self.present(SyExampleProvider.mixtureStyle(), animated: true, completion: nil)
            case 3:
                self.present(SyExampleProvider.systemMoreStyle(), animated: true, completion: nil)
            case 4:
                self.present(SyExampleProvider.customMoreStyle(), animated: true, completion: nil)
            case 5:
                self.present(SyExampleProvider.mixtureMoreStyle(), animated: true, completion: nil)
            case 6:
                let tabBarController = SyExampleProvider.systemStyle()
                tabBarController.selectedIndex = 2
                self.present(tabBarController, animated: true, completion: nil)
                
            case 7:
                let tabBarController = SyExampleProvider.customStyle()
                tabBarController.selectedIndex = 2
                self.present(tabBarController, animated: true, completion: nil)
            default:
                break
            }

        case 1:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.navigationWithTabbarStyle(), animated: true, completion: nil)
            case 1:
                self.present(SyExampleProvider.tabbarWithNavigationStyle(), animated: true, completion: nil)
            default:
                break
            }
        case 2:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.customColorStyle(), animated: true, completion: nil)
            case 1:
                self.present(SyExampleProvider.customBouncesStyle(), animated: true, completion: nil)
            case 2:
                self.present(SyExampleProvider.customBackgroundColorStyle(implies: false), animated: true, completion: nil)
            case 3:
                self.present(SyExampleProvider.customHighlightableStyle(), animated: true, completion: nil)
            case 4:
                self.present(SyExampleProvider.customBackgroundColorStyle(implies: true), animated: true, completion: nil)
            default:
                break
            }
        case 3:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.customIrregularityStyle(delegate: self), animated: true, completion: nil)
            default:
                break
            }
        case 4:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.customIrregularityStyle(delegate: self), animated: true, completion: nil)
            case 1:
                self.present(SyExampleProvider.customTipsStyle(delegate: self), animated: true, completion: nil)
            default:
                break;
            }
        case 5:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.systemRemindStyle(), animated: true, completion: nil)
            case 1:
                self.present(SyExampleProvider.customRemindStyle(), animated: true, completion: nil)
            case 2:
                self.present(SyExampleProvider.customAnimateRemindStyle(implies: false), animated: true, completion: nil)
            case 3:
                self.present(SyExampleProvider.customAnimateRemindStyle2(implies: false), animated: true, completion: nil)
            case 4:
                self.present(SyExampleProvider.customAnimateRemindStyle3(implies: false), animated: true, completion: nil)
            default:
                break
            }
        case 6:
            switch indexPath.row {
            case 0:
                self.present(SyExampleProvider.lottieStyle(), animated: true, completion: nil)
            default:
                break
            }
        default:
        break
    }
  }
}
