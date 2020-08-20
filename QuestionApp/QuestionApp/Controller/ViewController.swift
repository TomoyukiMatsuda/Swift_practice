//
//  ViewController.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/16.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    //IBActionで検知した正答がどちらなのかを取得する変数
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //画面に表示される直前に呼ばれ、viewDidLoadとは異なり毎回呼ばれる
    override func viewWillAppear(_ animated: Bool) {
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        //最初に表示する画像
        imageView.image = UIImage(named: imagesList.list[0].imageText)
    }

    @IBAction func answer(_ sender: Any) {
        
        //押されたボタンが○か✖️かどちらかを条件分岐
        if (sender as AnyObject).tag == 1 {
            
            pickedAnswer = true
            //丸ボタンが押された時
            
            //ユーザが押したボタンがまるボタンだった
            
            //丸ボタンの音声を流す
            
            
        } else if (sender as AnyObject).tag == 2 {
            
            pickedAnswer = false
            
            //ばつボタンが押された時
            
            //ユーザが押したボタンがばつボタンだった
            
            //ばつボタンの音声を流す
            
        }
        
        check()
        nextQuestions()
        
    }
    
    func check() {
        
        let correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            
            print("正解")
            correctCount = correctCount + 1
            
        } else {
            
            print("不正解")
            wrongCount = wrongCount + 1
        }
    }
    
    func nextQuestions() {
        
        if questionNumber <= 9 {
            
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
            
        } else {
            print("問題終了")
            
            //画面遷移
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next" {
            // セグエでVC取得
            let nextVC = segue.destination as! NextViewController
            
            // 画面遷移
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
        }
    }
    
}

