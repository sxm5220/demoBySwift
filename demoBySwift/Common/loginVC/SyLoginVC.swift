//
//  SyLoginVC.swift
//  demoBySwift
//
//  Created by 宋晓明 on 28/02/2017.
//  Copyright © 2017 sxm. All rights reserved.
//

import UIKit
import QuartzCore

class SyLoginVC: UIViewController {

    var imageView: UIImageView!
    var usernameField: SyUITextField!
    var passwordField: SyUITextField!
    var loginButton: UIButton!
    var registerButton: UIButton!
    
    let registerTitleArray = ["You're new?\n","Singup here!"]
    
    var idx: Int = 0
    let backGroundArray = [UIImage(named: "img1"),
                           UIImage(named: "img2"),
                           UIImage(named: "img3")]
    
    func setUp(){
        //背景图片
        self.imageView = UIImageView.init()
        self.imageView.frame = CGRect.init(x: 0, y: 0, width: screenWidth(), height: screenHeight())
        self.imageView.contentMode = UIViewContentMode.scaleAspectFill
        self.imageView.image = backGroundArray[0]
        self.view.addSubview(self.imageView)
        
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.dark)) as UIVisualEffectView
        visualEffectView.frame = self.view.frame
        visualEffectView.alpha = 0.5
         self.imageView.addSubview(visualEffectView)
        
        self.usernameField = SyUITextField.init()
        self.usernameField.frame = CGRect.init(x: 50, y: 200, width: screenWidth() - 50*2, height: 40)
        self.usernameField.backgroundColor = UIColor.lightGray
        self.usernameField.layer.borderWidth = 1.0
        self.usernameField.layer.borderColor = UIColor.clear.cgColor
        self.usernameField.layer.cornerRadius = self.usernameField.bounds.height/2
        self.usernameField.placeholder = "Username"
        self.usernameField.textAlignment = .center
        self.view.addSubview(self.usernameField)
        
        self.passwordField = SyUITextField.init()
        self.passwordField.frame = CGRect.init(x: 50, y: self.usernameField.frame.maxY + 10, width: self.usernameField.bounds.size.width, height: self.usernameField.bounds.size.height)
        self.passwordField.backgroundColor = self.usernameField.backgroundColor
        self.passwordField.layer.borderWidth = self.usernameField.layer.borderWidth
        self.passwordField.layer.borderColor = self.usernameField.layer.borderColor
        self.passwordField.layer.cornerRadius = self.usernameField.layer.cornerRadius
        self.passwordField.placeholder = "Password"
        self.passwordField.isSecureTextEntry = true
        self.passwordField.textAlignment = self.usernameField.textAlignment
        self.view.addSubview(self.passwordField)
        
        self.loginButton = UIButton.init()
        self.loginButton.frame = CGRect.init(x: 50, y: self.passwordField.frame.maxY + 10, width: self.passwordField.bounds.size.width, height: self.passwordField.bounds.size.height)
        self.loginButton.tag = 100
        self.loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.loginButton.setTitle("Login", for: .normal)
        self.loginButton.setTitleColor(UIColor.white, for: .normal)
        self.loginButton.backgroundColor = UIColor.black
        self.loginButton.layer.cornerRadius = self.loginButton.bounds.height/2
        self.loginButton.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        self.view.addSubview(self.loginButton)
        
        let titleStr = changeColorStyleOfString(allString: ("\(registerTitleArray[0]+registerTitleArray[1])" as String), rangeString: (registerTitleArray[1] as String),frontColor: UIColor.white,endColor: UIColor.green)

        self.registerButton = UIButton.init()
        self.registerButton.frame = CGRect.init(x: 50, y: self.loginButton.frame.maxY + 50, width: self.loginButton.bounds.size.width, height: self.loginButton.bounds.size.height*2)
        self.registerButton.tag = 101
        self.registerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        self.registerButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.registerButton.setAttributedTitle(titleStr, for: .normal)
        
        self.registerButton.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        self.view.addSubview(self.registerButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setUp()

        Timer.scheduledTimer(timeInterval: 2,
                             target: self,
                             selector: #selector(changeImage),
                             userInfo: nil,
                             repeats: true)
    }
    
    func buttonAction(sender: UIButton) {
        
        switch sender.tag {
        case 100:
            if (self.usernameField.text?.isEmpty)! {
                self.usernameField.shake()
                self.usernameField.layer.borderColor = UIColor.red.cgColor
                return;
            }else{
                self.usernameField.layer.borderColor = UIColor.clear.cgColor
            }
            if (self.passwordField.text?.isEmpty)! {
                self.passwordField.shake()
                self.passwordField.layer.borderColor = UIColor.red.cgColor
                return;
            }else{
                self.passwordField.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        case 101:
            print("regist ....")
        default:
            break;
        }
    }

    func changeImage() {
        if idx == backGroundArray.count - 1 {
            idx = 0
        }else{
            idx += 1
        }
        
        let toImage = backGroundArray[idx]
        UIView.transition(with: self.imageView,
                          duration: 2,
                          options: .transitionCrossDissolve,
                          animations: {self.imageView.image = toImage},
                          completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

