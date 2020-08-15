//
//  NextViewController.swift
//  Swift_TodoApp
//
//  Created by 松田智之 on 2020/08/15.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var todoString = String()
    
    @IBOutlet weak var todoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoLabel.text = todoString
    
    }
    
    //最初の画面でナビバーを非表示にしたものを表示するように戻す処理
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //表示に戻す処理 false
        navigationController?.isNavigationBarHidden = false
    }
    

    
}
