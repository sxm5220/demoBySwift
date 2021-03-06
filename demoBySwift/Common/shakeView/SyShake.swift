//
//  SyShake.swift
//  demoBySwift
//
//  Created by 宋晓明 on 28/02/2017.
//  Copyright © 2017 sxm. All rights reserved.
//
//  --- 左右抖动动画 ---

import UIKit

protocol SyShake {
    func shakeAnimation()
}

extension SyShake where Self: UIView {
    func shakeAnimation() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 8.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 8.0, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}
