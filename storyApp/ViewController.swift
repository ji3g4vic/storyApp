//
//  ViewController.swift
//  storyApp
//
//  Created by 王衍智 on 2023/1/4.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let synthesizer = AVSpeechSynthesizer()

    @IBOutlet weak var main: UITextField!
    @IBOutlet weak var supportingRole: UITextField!
    @IBOutlet weak var supportingItem: UITextField!
    @IBOutlet weak var contentView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func speak(_ sender: Any) {
        let message = ("從前有一隻\(main.text!)，他開車出去玩的時候，遇到了苦惱的\(supportingRole.text!)，原來是\(supportingRole.text!)的\(supportingItem.text!)壞掉了，於是\(main.text!)幫忙\(supportingRole.text!)把\(supportingItem.text!)修理好了，最後\(supportingRole.text!)開心地離開。")
        let utterance = AVSpeechUtterance(string:message)
        
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = 0.35
        utterance.pitchMultiplier = 0.8
        synthesizer.speak(utterance)
        
        contentView.text = message
        
    }
    
    
}

