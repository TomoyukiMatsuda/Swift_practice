//
//  imagesList.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/17.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import Foundation

class ImagesList {
    
    var list = [ImagesModel]()
    
    init() {
        
        list.append(ImagesModel(imageName: "0", correctOrNot: true))
        list.append(ImagesModel(imageName: "1", correctOrNot: false))
        list.append(ImagesModel(imageName: "2", correctOrNot: false))
        list.append(ImagesModel(imageName: "3", correctOrNot: false))
        list.append(ImagesModel(imageName: "4", correctOrNot: true))
        list.append(ImagesModel(imageName: "5", correctOrNot: false))
        list.append(ImagesModel(imageName: "6", correctOrNot: true))
        list.append(ImagesModel(imageName: "7", correctOrNot: true))
        list.append(ImagesModel(imageName: "8", correctOrNot: false))
        list.append(ImagesModel(imageName: "9", correctOrNot: true))
        list.append(ImagesModel(imageName: "10", correctOrNot: true))
        
    }
}
