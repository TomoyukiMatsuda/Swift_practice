//
//  ViewController.swift
//  ProtocolBasicApp
//
//  Created by 松田智之 on 2020/08/15.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

//Protocolを宣言
class ViewController: UIViewController, CatchProtocol {

    @IBOutlet weak var label: UILabel!
    
    var count = Int()
    
    // ここは最初に呼ばれるところ
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func catchData(count: Int) {
        
        label.text = String(count)
    }
    
    
    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // セグエで画面遷移
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
        
    }
    

}

