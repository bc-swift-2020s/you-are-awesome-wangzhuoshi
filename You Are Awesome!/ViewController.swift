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
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        messageLabel.text = " You Are Awesome!"
        imageView.image = UIImage(named:"image0")
    }
    
}

