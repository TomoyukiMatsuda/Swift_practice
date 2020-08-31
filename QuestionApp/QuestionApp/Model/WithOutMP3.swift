//
//  WithOutMP3.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/31.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import Foundation

class WithOutMP3: SoundFile {
    
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3" {
            
            print("このファイルは再生できません")
        }
        // playerをストップさせる
        player?.stop()
    }
}
