//
//  NextViewController.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/16.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
    
    
    }
    

    

}
