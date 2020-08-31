//
//  SoundFile.swift
//  QuestionApp
//
//  Created by 松田智之 on 2020/08/31.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile {
    
    var player: AVAudioPlayer?
    
    func playSound(fileName: String, extensionName: String) {
        
        // 再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            // 効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch {
    
            print("エラーです！！！")
        }
    }
}
