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
        
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
        
    }
    

}

