//
//  SadVC.swift
//  mynd
//
//  Created by Kisharne Vasikaran on 2020-01-18.
//  Copyright © 2020 Kisharne Vasikaran. All rights reserved.
//

import UIKit
class SadVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 255, green: 255, blue: 255, alpha: 1))
        
        let sad2 = UIImageView(image: UIImage(named: "sad"))
        sad2.frame = CGRect(x: 150, y: 100, width: 100, height: 00 )
        self.view.addSubview(sad2);
        
        let anxious = UILabel()
        anxious.text = "anxious";
        anxious.textColor = UIColor(cgColor: CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1))
        let anxiousTap = UITapGestureRecognizer(target: self, action: #selector(anxiousTapped));
        anxious.isUserInteractionEnabled = true;
        anxious.frame = CGRect(x: 40, y: 220, width: 300, height: 60)
        anxious.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.3))
        anxious.textAlignment = .center
        self.view.addSubview(anxious);
        anxious.addGestureRecognizer(anxiousTap);
        
        let lonely = UILabel()
        lonely.text = "lonely";
        lonely.textColor = UIColor(cgColor: CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1))
        lonely.frame = CGRect(x: 40, y: 330, width: 300, height: 60)
        lonely.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.3))
        lonely.textAlignment = .center
        self.view.addSubview(lonely);

        let frustrated = UILabel()
        frustrated.text = "frustrated";
        frustrated.textColor = UIColor(cgColor: CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1))
        frustrated.frame = CGRect(x: 40, y: 440, width: 300, height: 60)
        frustrated.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 0.38, green: 0.67, blue: 0.70, alpha: 0.3))
        frustrated.textAlignment = .center
        self.view.addSubview(frustrated);
      
    }
    @objc func anxiousTapped() {
        self.navigationController?.pushViewController(AnxiousVC(), animated: false)
    }

}

