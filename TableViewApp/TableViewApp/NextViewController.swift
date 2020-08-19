//
//  NextViewController.swift
//  TableViewApp
//
//  Created by 松田智之 on 2020/08/17.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var todoLabel = String()
    
    @IBOutlet weak var todoString: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todoString.text = todoLabel

    }
    

}
