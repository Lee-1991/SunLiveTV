//
//  HomeViewController.swift
//  SunLiveTV
//
//  Created by lee on 2017/6/21.
//  Copyright © 2017年 Lee. All rights reserved.
//

import UIKit

//1.创建发射器
let emitter = CAEmitterLayer()

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        
        let tipsLab = UILabel(frame: self.view.frame)
        tipsLab.text = "首页"
        tipsLab.textAlignment = .center
        self.view.addSubview(tipsLab)
        
        //动画按钮
        let animatedBtn = UIButton(frame: CGRect(x: 200, y: 100, width: 100, height: 50))
        animatedBtn.setTitle("animation", for: .normal)
        animatedBtn.backgroundColor = UIColor.red
        animatedBtn.addTarget(self, action:#selector(HomeViewController.clickedAnimatesBtn), for: UIControlEvents.touchUpInside)
        self.view.addSubview(animatedBtn)
        
        animation()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clickedAnimatesBtn() {
        if emitter.birthRate == 0 {
            emitter.birthRate = 1
        }
        else
        {
            emitter.birthRate = 0
        }
    }
    

    func animation() {
        
        
        //2.设置发射器的位置
        emitter.emitterPosition=CGPoint(x:self.view.bounds.width*0.5, y:self.view.bounds.height/2)
        
//        emitter.emitterSize = CGSize(width:100,height:100)
        //3.开启三维效果
        emitter.preservesDepth=true
        
        let cellHome = getEmitterCell("home_home_select")
        let cellStar = getEmitterCell("home_follow_select")
        let cellFind = getEmitterCell("home_find_select")
        let cellMine = getEmitterCell("home_mine_select")
        
        //将粒子加入发射器中
//        let rect = CGRect(x: self.view.bounds.width/2, y: self.view.bounds.height/2, width: 100, height: 100)
//        
//        let disPlayView = UIView(frame:rect)
//        disPlayView.layer.frame = rect;
//        //将发射器的层加入父类layer的层上
        self.view.layer.addSublayer(emitter)
//        self.view.addSubview(disPlayView)
        emitter.emitterCells = [cellHome,cellStar,cellFind,cellMine]
        
    }
    
    
    func getEmitterCell(_ imageName: NSString) -> CAEmitterCell {
        
        //4.创建粒子，设置相关属性
        let cell = CAEmitterCell()
        
        //速度
        cell.velocity=150
        
        //速度范围的波动
        cell.velocityRange=100
        
        //设置粒子的大小
        cell.scale=1.0
        cell.scaleRange=0.3
        
        //设置粒子的方向
        cell.emissionLongitude = -(.pi)
        cell.emissionRange = .pi
        
        //设置粒子的存活时间
        cell.lifetime = 0.5
        cell.lifetimeRange = 0.5
        
        //设置粒子每秒弹出的个数
        cell.birthRate=1
        
        //设置粒子展示的图片
        cell.contents=UIImage(named:imageName as String)?.cgImage
        
        return cell
    }

}
