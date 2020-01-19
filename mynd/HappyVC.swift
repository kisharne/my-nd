//
//  HappyVC.swift
//  mynd
//
//  Created by Kisharne Vasikaran on 2020-01-18.
//  Copyright © 2020 Kisharne Vasikaran. All rights reserved.
//

import UIKit

class HappyVC : UIViewController {
    override func viewDidLoad() {
       super.viewDidLoad()
    self.view.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 255, green: 255, blue: 255, alpha: 1))
        
    let top = self.navigationController?.navigationBar.frame.height ?? 0;
    let width: CGFloat = self.view.frame.width;

    let aff = UILabel()
    aff.text = "affirmation:";
    aff.frame = CGRect(x: width / 4 , y: top + 50, width: width / 2, height: 200)
    aff.textAlignment = .center
    aff.adjustsFontSizeToFitWidth = true;
    aff.font = UIFont(name: "Verdana", size: 30)
    aff.textColor = UIColor( cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.5))
    self.view.addSubview(aff)

    let ex = UILabel()
    ex.text = "exercise:";
    ex.frame = CGRect(x: width / 4 , y: top + 200, width: width / 2, height: 200)
    ex.textAlignment = .center
    ex.adjustsFontSizeToFitWidth = true;
    ex.font = UIFont(name: "Verdana", size: 30)
    ex.textColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.5))
    self.view.addSubview(ex)

    let fullaff = UILabel()
    fullaff.text = "i have the freedom and power to create!";
    fullaff.frame = CGRect(x: width / 4 , y: top + 120, width: width / 2, height: 200)
    fullaff.textAlignment = .center
    fullaff.font = UIFont(name: "Verdana", size: 20)
    fullaff.textColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.45))
    self.view.addSubview(fullaff)
    fullaff.lineBreakMode = .byWordWrapping;
    fullaff.numberOfLines = 0;

    let fullex = UILabel()
    fullex.text = "write three things you're grateful about today.";
    fullex.frame = CGRect(x: width / 4 , y: top + 260, width: width / 2, height: 200)
    fullex.textAlignment = .center
    fullex.font = UIFont(name: "Verdana", size: 20)
    fullex.textColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.45))
    self.view.addSubview(fullex)
    fullex.lineBreakMode = .byWordWrapping;
    fullex.numberOfLines = 0;
    
}
}
