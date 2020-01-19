//
//  HomeVC.swift
//  mynd
//
//  Created by Kisharne Vasikaran on 2020-01-18.
//  Copyright © 2020 Kisharne Vasikaran. All rights reserved.
//

import UIKit
import SwiftUI

class HomeVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Programmatic layout
        UILabel.appearance().font = UIFont(name: "Verdana", size: 30)
        self.view.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 255, green: 255, blue: 255, alpha: 1))
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.3))
        let top = self.navigationController?.navigationBar.frame.height ?? 0;
        let width: CGFloat = self.view.frame.width;
        
        let hello = UILabel()
//        hello.font = UIFont(name: "Chalkboard", size: 30)
//        hello.font = UIFont(name: "Verdana", size: 25)
        hello.textColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.8))
        hello.text = "Good afternoon, Aileen.";
        hello.frame = CGRect(x: 25, y: top + 50, width: width-50, height: 200)
        hello.adjustsFontSizeToFitWidth = true;
        hello.textAlignment = .center
        self.view.addSubview(hello);
        
        let quest = UILabel()
        quest.text = "How are you feeling?";
        quest.textColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.8))
        quest.frame = CGRect(x: width / 4, y: top + 90, width: width / 2, height: 200)
        quest.font = UIFont(name: "Verdana", size:30)
        quest.textAlignment = .center
        quest.adjustsFontSizeToFitWidth = true;
        self.view.addSubview(quest);

        let centreX = self.view.center.x
        let imageSpace: CGFloat = 5;
        let imageWidth: CGFloat = 165;
        let happy = UIImageView(image: UIImage(named: "Image"))
        let happyTap = UITapGestureRecognizer(target: self, action: #selector(happyTapped));
        happy.frame = CGRect(x: centreX - imageSpace / 2 - imageWidth, y: 255, width: 165, height: 330 )
        happy.isUserInteractionEnabled = true;
        happy.addGestureRecognizer(happyTap);
        self.view.addSubview(happy);
        
        let sad = UIImageView(image: UIImage(named: "sad"))
        let sadTap = UITapGestureRecognizer(target: self, action: #selector(sadTapped));
        sad.frame = CGRect(x: 190, y: 255, width: 165, height: 330 )
        sad.isUserInteractionEnabled = true;
        sad.addGestureRecognizer(sadTap);
        self.view.addSubview(sad);
    }
    
    @objc func happyTapped() {
        self.navigationController?.pushViewController(HappyVC(), animated: false)
        }
            
    @objc func sadTapped() {
        self.navigationController?.pushViewController(SadVC(), animated: false)
        }
}

