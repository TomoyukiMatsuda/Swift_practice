//
//  NextViewController.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/16.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

protocol NowScoreDelegate {
    
    func nowSore(score: Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var delegate: NowScoreDelegate?
    
    var correctedCount = Int()
    var wrongCount = Int()
    var beforeCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        // UserDefaultsの値が空でなければ、変数に値を格納する
        if UserDefaults.standard.object(forKey: "beforeCount") != nil {
            
            beforeCount = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
    }
    
    @IBAction func back(_ sender: Any) {
        
      // 正当数が最高得点であれば、ホームの得点と入れ替え
        if beforeCount < correctedCount {
            
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            delegate?.nowSore(score: correctedCount)
            
        } else if beforeCount > correctedCount {
            // そうでなければbeforeCountをUserDefaultsにそのままセットする
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
        }
    
        dismiss(animated: true)
    }
}
