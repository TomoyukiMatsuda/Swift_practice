//
//  ImagesModel.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/16.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import Foundation


class ImagesModel {
    
    //画像名を取得して、その画像名が人間んかそうでないかをフラグによって判定するための機能
    
    let imageText:String
    let answer:Bool
    
    init(imageName: String, correctOrNot: Bool) {
        
        imageText = imageName
        answer = correctOrNot
    }
}
