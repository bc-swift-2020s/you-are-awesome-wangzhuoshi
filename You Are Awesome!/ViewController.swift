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
    let awesomeMessage = "You Are Awesome!"
    let greateMesage = "You Are Great!"
    let bombMessage = "You Are Da Bomb!"
    
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greateMesage
            imageView.image = UIImage(named:"image1")
        }else if messageLabel.text == greateMesage {
            messageLabel.text = bombMessage
            imageView.image = UIImage(named:"image2")
        } else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named:"image0")
            
        }
    }
    
    
    
}

