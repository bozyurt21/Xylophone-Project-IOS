//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    func playSound(keyName: String) {
        let url = Bundle.main.url(forResource: keyName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(keyName: sender.currentTitle!)
        sender.alpha = 0.5 // equal the opacity to the half
        // After 0.2 second in delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0 //make it back to the way it is
        }
        
    }
    
    
    

}

