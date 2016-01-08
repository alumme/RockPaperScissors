//
//  ThirdViewController.swift
//  RockPaperScissors
//
//  Created by Alumme on 12/7/15.
//  Copyright © 2015 Alumme. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{
   var weaponString = ""
    var shakes = 0
    
    @IBOutlet weak var shakeLabel: UILabel!
    
    


    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func canBecomeFirstResponder() -> Bool
    {
        return true
    }
    
    override func viewDidAppear(animated: Bool)
    {
        [self .becomeFirstResponder()]
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
    {
        if(motion == .MotionShake)
        {
            ++shakes
            if(shakes == 4)
            {
                shakeLabel.text = "Press Me!"
            
            }
        }
    }
    
    
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
    {
        if(shakes == 4)
        {
            return true
            
        }
        else
        {
            return false
        }
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {

        
            let fourthVC = segue.destinationViewController as! FourthViewController
            fourthVC.weaponString = weaponString

            
            
        
        
    }
    



    



}
