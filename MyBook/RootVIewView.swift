//
//  RootVIewView.swift
//  MyBook
//
//  Created by PIRATE on 10/25/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class RootView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController!.navigationBar.barTintColor = UIColor.white
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //        delegateType!.valueDidChange("PDF")
    }
    
    

}
