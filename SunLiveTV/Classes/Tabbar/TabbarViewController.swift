//
//  TabbarViewController.swift
//  SunLiveTV
//
//  Created by lee on 2017/6/21.
//  Copyright © 2017年 Lee. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildViewControllers()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func addChildViewControllers(){
        
        addChildViewController(HomeViewController(), title: "首页", imageName: "home_home")
        addChildViewController(StarViewController(), title: "明星", imageName: "home_follow")
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "home_find")
        addChildViewController(MineViewController(), title: "我的", imageName: "home_mine")
        
    }
    
    
    private func addChildViewController(_ childController: UIViewController,title: String,imageName:String) {
        
        childController.title = title
        childController.navigationItem.title = title
        childController.tabBarItem.title = title
        childController.tabBarItem.image = UIImage(named:imageName+"_normal")
        childController.tabBarItem.selectedImage = UIImage(named:imageName+"_select")
        
        addChildViewController(childController)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
