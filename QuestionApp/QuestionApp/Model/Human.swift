//
//  Human.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/31.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import Foundation

class Human: Animal {
    
    override func breth() {
    
        talk()
    }
    
    func talk() {
        print("人間は話すことができます")
    }
}
