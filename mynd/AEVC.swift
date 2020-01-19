//
//  AnxiousVC.swift
//  mynd
//
//  Created by Kisharne Vasikaran on 2020-01-19.
//  Copyright © 2020 Kisharne Vasikaran. All rights reserved.
//

import UIKit

enum Emotion {
    case Anxious, Frustrated, Lonely, Happy;
}
let emotions : [Emotion : (String, String)] = [
    .Anxious : ("",""),
    .Frustrated : ("",""),
    .Lonely: ("",""),
    .Happy: ("","")
]

class AEVC : UIViewController {
    var affirmation: String;
    var exercise: String;
    
    init(emotion: Emotion) {
        self.affirmation = emotions[]
    }
}
