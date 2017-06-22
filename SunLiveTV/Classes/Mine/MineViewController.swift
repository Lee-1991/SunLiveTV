//
//  MineViewController.swift
//  SunLiveTV
//
//  Created by lee on 2017/6/21.
//  Copyright © 2017年 Lee. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.white
        
        
        let tipsLab = UILabel(frame: self.view.frame)
        tipsLab.text = "我的"
        tipsLab.textAlignment = .center
        self.view.addSubview(tipsLab)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
