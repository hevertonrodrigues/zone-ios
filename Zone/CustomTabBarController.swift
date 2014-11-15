//
//  CustomTabBarController.swift
//  Zone
//
//  Created by Heverton Rodrigues on 15/11/14.
//  Copyright (c) 2014 Heverton Rodrigues. All rights reserved.
//

class CustomTabBarController: UITabBarController
{
    override func viewDidLoad()
    {
        self.tabBar.selectedImageTintColor = UIColor(rgba: "#FFFFFF")
        self.tabBar.barTintColor = UIColor(rgba: "#077777")
    }
    
}
