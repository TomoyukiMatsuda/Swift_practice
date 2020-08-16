//
//  NextViewController.swift
//  ProtocolBasicApp
//
//  Created by 松田智之 on 2020/08/15.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    
    //規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    var delegate:CatchProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func back(_ sender: Any) {
        
        delegate?.catchData(count: count)
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        count = count + 1
        
        countLabel.text = String(count)
        
    }
    
    
}
