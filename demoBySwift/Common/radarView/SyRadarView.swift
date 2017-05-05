//
//  SyRadarView.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//
// -- 雷达效果 --

import Foundation
import UIKit
import QuartzCore

class RButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alpha = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        if self.window != nil {
            UIView.animate(withDuration: 1, animations: { 
                self.alpha = 1
            })
        }
    }
    
    override func removeFromSuperview() {
        UIView.beginAnimations("", context: nil)
        UIView.setAnimationDuration(1)
        self.alpha = 0
        UIView.setAnimationDidStop(Selector(("callSuperRemoveFromSuperview")))
        UIView.commitAnimations()
    }
    
    fileprivate func callSuperRemoveFromSuperview() {
        super.removeFromSuperview()
    }
}

class RLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alpha = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        if self.window != nil {
            UIView.animate(withDuration: 1, animations: { 
                self.alpha = 1
            })
        }
    }
    
    override func removeFromSuperview() {
        UIView.beginAnimations("", context: nil)
        UIView.setAnimationDuration(1)
        self.alpha = 0
        UIView.setAnimationDidStop(Selector(("callSuperRemoveFromSuperview")))
        UIView.commitAnimations()
    }
    
    fileprivate func callSuperRemoveFromSuperview() {
        super.removeFromSuperview()
    }
}

class SyRadarView: UIView {
    let itemSize = CGSize(width: 44, height: 44)
    var items = NSMutableArray()
    weak var animationLayer: CALayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        NotificationCenter.default.addObserver(self, selector: #selector(SyRadarView.resume), name: NSNotification.Name.UIApplicationDidBecomeActive, object: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func resume() {
        if let animationLayer = self.animationLayer {
            animationLayer.removeFromSuperlayer()
            self.setNeedsDisplay()
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func addOrReplaceItem() {
        let maxCount = 3
        let radarButton = RButton(frame: CGRect(x: 0, y: 0, width: itemSize.width, height: itemSize.height))
        radarButton.setImage(UIImage(named: "UK"), for: UIControlState())
        radarButton.target(forAction: #selector(SyRadarView.btnClick(_:)), withSender: self)
        radarButton.addTarget(self, action: #selector(SyRadarView.btnClick(_:)), for: .touchUpInside)
        repeat {
            let center = generateCenterPointInRadar()
            radarButton.center = CGPoint(x: center.x , y: center.y)
        }while (itemFrameIntersectsInOtherItem(radarButton.frame))
        
        self.addSubview(radarButton)
        items.add(radarButton)
        /*
         var radarLabel=PRLabel(frame: CGRectMake(0, 0, itemSize.width+20, itemSize.height))
         radarLabel.text="ninebot";
         do{
         var center = generateCenterPointInRadar()
         radarLabel.center = CGPointMake(center.x, center.y)
         }while(itemFrameIntersectsInOtherItem(radarLabel.frame))
         self.addSubview(radarLabel)
         items.addObject(radarLabel)
         */
        if items.count > maxCount {
            let view = items.object(at: 0) as! UIView
            view.removeFromSuperview()
            items.remove(view)
        }
    }
    
    func btnClick(_ sender: UIButton!) {
        print("\"tappen button \"")
    }
    
    fileprivate func itemFrameIntersectsInOtherItem (_ frame: CGRect) -> Bool {
        for item in items {
            if ((item as AnyObject).frame).intersects(frame) {
                return true
            }
        }
        return false
    }
    
    fileprivate func generateCenterPointInRadar() -> CGPoint {
        let angle = Double(arc4random()).truncatingRemainder(dividingBy: 360)
        let radius = Double(arc4random()).truncatingRemainder(dividingBy: (Double)((self.bounds.size.width - itemSize.width)/2))
        let x = cos(angle) * radius
        let y = sin(angle) * radius
        return CGPoint(x: CGFloat(x) + self.bounds.size.width/2, y: CGFloat(y) + self.bounds.size.height/2)
    }
    
    override func draw(_ rect: CGRect) {
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let pulsingCount = 6
        let animationDuration: Double = 4
        
        let animationLayer = CALayer()
        for i in 0 ..< pulsingCount {
            let pulsingLayer = CALayer()
            pulsingLayer.frame = CGRect(x: 0, y: 0, width:rect.size.width, height: rect.size.height)
            pulsingLayer.borderColor = UIColor.gray.cgColor
            pulsingLayer.borderWidth = 1
            pulsingLayer.cornerRadius = rect.size.height / 2
            
            let defaultCurve = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
            
            let animationGroup = CAAnimationGroup()
            animationGroup.fillMode = kCAFillModeBackwards
            animationGroup.beginTime = CACurrentMediaTime() + Double(i) * animationDuration / Double(pulsingCount)
            animationGroup.duration = animationDuration
            animationGroup.repeatCount = HUGE
            animationGroup.timingFunction = defaultCurve
            
            let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
            scaleAnimation.fromValue = Double(0)
            scaleAnimation.toValue = Double(1.5)
            
            let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
            opacityAnimation.values = [1,0.7,0]
            opacityAnimation.keyTimes = [0,0.5,1]
            
            animationGroup.animations = [scaleAnimation,opacityAnimation]
            pulsingLayer.add(animationGroup, forKey: "pulsing")
            animationLayer.addSublayer(pulsingLayer)
        }
        self.layer.addSublayer(animationLayer)
        self.animationLayer = animationLayer
    }
}
