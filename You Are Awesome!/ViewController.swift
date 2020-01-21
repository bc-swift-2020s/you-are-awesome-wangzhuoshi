//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Wangzhuo on 1/19/20.
//  Copyright © 2020 Wangzhuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    // let awesomeMessage = "You Are Awesome!"
   // let greateMesage = "You Are Great!"
   // let bombMessage = "You Are Da Bomb!"
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let message = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "Fabulous? That's You!"]
        messageLabel.text = message[Int.random(in: 0...message.count-1)]
        imageView.image = UIImage(named:"image\(Int.random(in:0...totalNumberOfImages))")
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

