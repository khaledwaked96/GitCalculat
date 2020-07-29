//
//  MyShadowView.swift
//  calculator
//
//  Created by A on 7/3/18.
//  Copyright © 2018 khaled waked. All rights reserved.
//

import UIKit
class MyShadowView : UIView {
    
    let MyLayer : CAGradientLayer = CAGradientLayer ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.4).cgColor
        self.layer.cornerRadius = 3
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
        self.layer.shadowOpacity = 0.35
        
        
        
        
       
        let FristColor = UIColor.init(red: 152/255, green: 78/255, blue: 160/255, alpha: 1).cgColor
        let SecondColor = UIColor.init(red: 103/255, green: 131/255, blue: 195/255, alpha: 1).cgColor
        MyLayer.startPoint = CGPoint(x: 0, y: 0.1)
        MyLayer.endPoint = CGPoint(x: 0, y: 0.7)
        MyLayer.colors = [FristColor , SecondColor ]
        MyLayer.zPosition = -1
        self.layer.addSublayer(MyLayer)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
         MyLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
    }
    
}


