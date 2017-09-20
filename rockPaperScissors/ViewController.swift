//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Jeong Jae Myeong on 15/09/2017.
//  Copyright © 2017 Jimmy. All rights reserved.
//

import UIKit
import GameplayKit //for randomSource

class ViewController: UIViewController {
    let randomSource = GKARC4RandomSource()
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    
    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let angle:CGFloat = CGFloat((180.0 * Double.pi)/180.0) //first 180 can be edited to rotate the item
        comImageView.transform = CGAffineTransform(rotationAngle: angle)
    }

    @IBAction func tabStart() {
        comImageView.image = UIImage(named: "rock.png")
        playerImageView.image = UIImage(named: "rock.png")
        
        messageLabel.text = "가위 바위 ..."
    }
    
    @IBAction func tabScissors() {
        playerImageView.image = UIImage(named: "scissors.png")
        doComputer(player: 0)
    }
    @IBAction func tabRock() {
        playerImageView.image = UIImage(named: "rock.png")
        doComputer(player: 1)
    }
    @IBAction func tabPaper() {
        playerImageView.image = UIImage(named: "paper.png")
        doComputer(player: 2)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func doComputer(player: Int){
        let computer = randomSource.nextInt(upperBound: 3)
        var msg = ""
        
        switch computer{
        case 0:
            comImageView.image = UIImage(named: "scissors.png")
            
            switch player{
            case 0://scissors
                msg = "even!"
            case 1://rock
                msg = "You Win!"
            case 2://paper
                msg = "You Lose~ :("
            default:
                break
            }
        case 1:
            comImageView.image = UIImage(named: "rock.png")
            
            switch player{
            case 0://scissors
                msg = "You Lose~ :("
            case 1://rock
                msg = "even!"
            case 2://paper
                msg = "You Win!"
            default:
                break
            }
        case 2:
            comImageView.image = UIImage(named: "paper.png")
            
            switch player{
            case 0://scissors
                msg = "You Win!"
            case 1://rock
                msg = "You Lose~ :("
            case 2://paper
                msg = "even!"
            default:
                break
            }
        default:
            break
        }
        messageLabel.text = msg
    }
    
    
}

