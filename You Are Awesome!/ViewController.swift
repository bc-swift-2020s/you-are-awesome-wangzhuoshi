//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Wangzhuo on 1/19/20.
//  Copyright © 2020 Wangzhuo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    // let awesomeMessage = "You Are Awesome!"
    // let greateMesage = "You Are Great!"
    // let bombMessage = "You Are Da Bomb!"
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    var totalNumberOfSounds = 5
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func playSound (name: String) {
        if let sound = NSDataAsset(name: name){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error :\(error.localizedDescription) Could not ionitialize AVAudioplayer object") }
        } else  {
                print ("Error: could not read data from the file")
            }
    }
    func nonRepeatingRandom (originalNumber : Int, upperLimit : Int) -> Int
      {
        var newNumber : Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber  == newNumber
        return newNumber
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let message = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "Fabulous? That's You!"]
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: message.count-1)
        messageLabel.text = message[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        
        playSound(name: "sound\(soundNumber)")
        
        //messageLabel.text = message[messageNumber]
        //messageNumber += 1
        //if messageNumber == message.count {
        //  messageNumber = 0
        // }
        
        //print (imageNumber)
        // let imageName = "image\(imageNumber)"
        //imageView.image = UIImage(named: imageName)
        //imageNumber += 1
        //if imageNumber == 10 {
        //  imageNumber = 0
        //}
        
        // if messageLabel.text == awesomeMessage {
        //   messageLabel.text = greateMesage
        // imageView.image = UIImage(named:"image1")
        //}else if messageLabel.text == greateMesage {
        //  messageLabel.text = bombMessage
        //imageView.image = UIImage(named:"image2")
        //} else {
        //  messageLabel.text = awesomeMessage
        //imageView.image = UIImage(named:"image0")
        
        //}
    }
    
    
    


}
