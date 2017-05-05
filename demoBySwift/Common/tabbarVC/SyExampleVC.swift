//
//  SyExampleVC.swift
//  demoBySwift
//
//  Created by sxm on 2017/3/10.
//  Copyright © 2017年 sxm. All rights reserved.
//

import Foundation
import UIKit

public class SyExampleVC: UIViewController {
    
    static let textArray = ["Genius only means hard-working all one's life.",
                            "The man who has made up his mind to win will never say \"impossible \".",
                            "There is no such thing as a great talent without great will - power.",
                            "Cease to struggle and you cease to live.",
                            "A strong man will struggle with the storms of fate.",
                            "Living without an aim is like sailing without a compass.",
                            "Live a noble and honest life. Reviving past times in your old age will help you to enjoy your life again.",
                            "Accept what was and what is, and you’ll have more positive energy to pursue what will be.",
                            "Behind every successful man there's a lot u unsuccessful years.",
                            "Enrich your life today, yesterday is history, tomorrow is mystery.",
                            "The secret of success is constancy to purpose.",
                            "Between two stools one falls to the ground.",
                            "You have to believe in yourself. That's the secret of success.",
                            "Success grows out of struggles to overcome difficulties.",
                            "The dictionary is the only place where success comes before work.",
                            "There are no shortcuts to any place worth going.",
                            "You're uinique, nothing can replace you.",
                            "Great works are performed not by strengh, but by perseverance.",
                            "Until you make peace with who you are, you’ll never be content with what you have.",
                            "Keep trying no matter how hard it seems. it will get easier."]
    static var index = 0
    let tip: UILabel = UILabel()
    let button: UIButton = UIButton()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 244.0 / 255.0, green: 245.0 / 255.0, blue: 245.0 / 255.0, alpha: 1.0)
        self.tip.textColor = UIColor.gray
        self.tip.text = SyExampleVC.textArray[SyExampleVC.index]
        SyExampleVC.index = (SyExampleVC.index < SyExampleVC.textArray.count - 1) ? SyExampleVC.index + 1 : 0
        self.tip.numberOfLines = -1
        self.tip.textAlignment = .center
        
        self.button.setTitle("返回", for: .normal)
        self.button.backgroundColor = self.view.backgroundColor
        self.button.layer.borderWidth = 2
        self.button.layer.borderColor = UIColor(white: 100.0 / 255.0, alpha: 1.0).cgColor
        self.button.layer.cornerRadius = 16.0
        self.button.setTitleColor(UIColor(white: 100.0 / 255.0, alpha: 1.0), for: .normal)
        self.button.addTarget(self, action: #selector(SyExampleVC.backAction), for: .touchUpInside)
        self.view.addSubview(self.tip)
        self.view.addSubview(self.button)
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tip.frame = self.view.bounds.insetBy(dx: 12, dy: 0)
        let size = self.button.sizeThatFits(self.view.bounds.size)
        self.button.frame = CGRect.init(x: (self.view.bounds.size.width - size.width) / 2.0, y: self.view.bounds.size.height - 120, width: size.width, height: 42.0)
    }
    
    public func backAction() {
        if let navigationController = navigationController {
            if navigationController.viewControllers.count > 1 {
                navigationController.popViewController(animated: true)
                return
            }
        }
        dismiss(animated: true, completion: nil)
    }
}
