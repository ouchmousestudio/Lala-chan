//
//  ViewController.swift
//  Lala-chan
//
//  Created by Miles Fearnall-Williams on 2019/08/01.
//  Copyright © 2019 Miles Fearnall-Williams. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["Rarachan01", "Rarachan02", "Rarachan03", "Rarachan04", "Rarachan05", "Rarachan06", "Rarachan07", "Rarachan08", "Rarachan09", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func pressLala(_ sender: UIButton) {
        playSound(soundFileName : soundArray[Int.random(in: 0 ... 8)])
    }
    
    
    //soundplayer
    func playSound(soundFileName : String) {
        let soundUrl = Bundle.main.url(forResource: soundFileName, withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
}

