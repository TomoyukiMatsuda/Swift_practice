//
//  ViewController.swift
//  Swift_TodoApp
//
//  Created by 松田智之 on 2020/08/15.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    var textArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        textField.delegate = self

    }
    
    // 画面遷移の際に繰り返し呼ばれる部分
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // ナビゲーションバーを隠す処理
        navigationController?.isNavigationBarHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //セルのハイライトを消す
        cell.selectionStyle = .none
        
        cell.textLabel?.text = textArray[indexPath.row]
        cell.imageView!.image = UIImage(named: "checkImage")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //タップしたときにその配列の番号の中身を取り出して、値を渡す
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        
        nextVC.todoString = textArray[indexPath.row]
        
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return view.frame.size.height/6
    }
    
    // キーボードのリターンキーを押した時の処理
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //textArrayにテキストフィールド入力値を格納
        textArray.append(textField.text!)
        //キーボードを閉じる？
        textField.resignFirstResponder()
        //テキストフィールドを空にする
        textField.text = ""
        tableView.reloadData()
        
        return true

    }


}

