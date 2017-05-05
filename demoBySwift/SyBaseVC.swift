//
//  SyBaseVC.swift
//  demoBySwift
//
//  Created by sxm on 2017/3/8.
//  Copyright © 2017年 sxm. All rights reserved.
//

import Foundation
import UIKit

class SyBaseVC: UIViewController,
                UITableViewDelegate,
                UITableViewDataSource {
    
    let cellIdentifier = "cellIdentifier"
    
    var tableView: UITableView!
    var dataSource: NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        self.dataSource = NSMutableArray.init(array: ["登陆","工具栏"])
        
        self.tableView = UITableView.init()
        self.tableView.frame = CGRect.init(x: 0, y: 0, width: screenWidth(), height: screenHeight())
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = String(describing:self.dataSource[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let loginVC = SyLoginVC()
            self.navigationController?.pushViewController(loginVC, animated: true)
        case 1:
            let loginVC = SyBaseTabbarVC()
            self.navigationController?.pushViewController(loginVC, animated: true)
        default:
            break;
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
