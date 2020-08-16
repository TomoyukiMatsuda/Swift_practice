//
//  NextViewController.swift
//  MapAndProtcol
//
//  Created by 松田智之 on 2020/08/16.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

protocol SearchLocationDelegate {
    
    func searchLocation(idoValue: String, keidoValue: String)
    
}

class NextViewController: UIViewController {

    @IBOutlet weak var idoTextField: UITextField!
    
    @IBOutlet weak var keidoTextField: UITextField!
    
    var delegate: SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func okAction(_ sender: Any) {
        
        //テキストフィールドに入力された値を取得
        let idoValue = idoTextField.text!
        let keidoValue = keidoTextField.text!
        
        //両方のTFがからでなければ戻る
        if idoTextField.text != nil && keidoTextField.text != nil {
            
            //自分で定義したデリゲートメソッドの引数に入れる
            delegate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)
            //戻る
            dismiss(animated: true, completion: nil)
        }
    }
    
    
}
