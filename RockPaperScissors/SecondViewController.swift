//
//  SecondViewController.swift
//  RockPaperScissors
//
//  Created by Alumme on 12/4/15.
//  Copyright © 2015 Alumme. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    var weaponString = ""
   
    @IBOutlet weak var rockText: UILabel!

    @IBOutlet weak var paperText: UILabel!

    @IBOutlet weak var scissText: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()


    }


    @IBAction func ifTapRock(sender: UIButton)
    {
        weaponString = rockText.text!
    }

    @IBAction func ifTapPaper(sender: UIButton)
    {
        weaponString = paperText.text!
    }
    
    
    @IBAction func ifTapSciss(sender: UIButton)
    {
        weaponString = scissText.text!
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let thirdVC = segue.destinationViewController as! ThirdViewController
        thirdVC.weaponString = weaponString
        
        
        
    }
    
    



}
