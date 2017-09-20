//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Jeong Jae Myeong on 15/09/2017.
//  Copyright © 2017 Jimmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let angle:CGFloat = CGFloat((180.0 * Double.pi)/180.0)
        comImageView.transform = CGAffineTransform(rotationAngle: angle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

