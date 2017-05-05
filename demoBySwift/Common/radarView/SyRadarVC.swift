//
//  SyRadarVC.swift
//  demoBySwift
//
//  Created by sxm on 2017/5/5.
//  Copyright © 2017年 sxm. All rights reserved.
//

import Foundation
import UIKit

class SyRadarVC: UIViewController {
    var radarView: SyRadarView!
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let radarSize = CGSize(width: screenWidth(), height: screenWidth())
        radarView = SyRadarView(frame: CGRect(x: 0, y: (screenHeight() - radarSize.height)/2,width: radarSize.width, height: radarSize.height))
        self.view.addSubview(radarView)
        
        runTimer()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: radarView, selector: Selector(("addOrReplaceItem")), userInfo: nil, repeats: true)
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
        print("deallocated!!!!")
        stopTimer()
    }
}
