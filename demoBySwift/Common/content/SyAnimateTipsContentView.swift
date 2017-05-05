//
//  SyAnimateTipsContentView.swift
//  demoBySwift
//
//  Created by sxm on 2017/3/23.
//  Copyright © 2017年 sxm. All rights reserved.
//

import UIKit

class SyAnimateTipsContentView: SyBackgroundContentView {
    var duration = 0.3
    
    override func badgeChangedAnimation(animated: Bool, completion: (() -> ())?) {
        super.badgeChangedAnimation(animated: animated, completion: nil)
        notificationAnimation()
    }
    
    func notificationAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        impliesAnimation.values = [0.0, -8.0, 4.0, -4.0, 3.0, -2.0, 0.0]
        impliesAnimation.duration = duration * 2
        impliesAnimation.calculationMode = kCAAnimationCubic
        imageView.layer.add(impliesAnimation, forKey: nil)
    }
}

class SyAnimateTipsContentView2: SyAnimateTipsContentView {
    override func notificationAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        impliesAnimation.values = [1.0 ,1.4, 0.9, 1.15, 0.95, 1.02, 1.0]
        impliesAnimation.duration = duration * 2
        impliesAnimation.calculationMode = kCAAnimationCubic
        self.badgeView.layer.add(impliesAnimation, forKey: nil)
    }
}

class SyAnimateTipsContentView3: SyAnimateTipsContentView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        badgeColor = UIColor.clear
        badgeView.imageView.image = UIImage.init(named: "tips2")?.resizableImage(withCapInsets: UIEdgeInsets.init(top: 10, left: 10, bottom: 25, right: 25)).withRenderingMode(.alwaysTemplate)
        badgeView.tintColor = UIColor.lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
