//
//  FourthViewController.swift
//  RockPaperScissors
//
//  Created by Alumme on 12/9/15.
//  Copyright © 2015 Alumme. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController
{

    @IBOutlet weak var yourWeapon: UILabel!
    
    @IBOutlet weak var yourView: UIView!
    
    @IBOutlet weak var cpuWeapon: UILabel!
    
    @IBOutlet weak var cpuView: UIView!
    
    var weaponString = ""
    var computerWeaponString = ""
    var shakes = 0
    
    var weapons : [String] = ["✌🏼", "👊🏼", "🖐🏼"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        yourWeapon.text = weaponString
        computerWeapon()
        cpuWeapon.text = computerWeaponString
        
        
    }
    override func viewDidAppear(animated: Bool)
    {
        [self .becomeFirstResponder()]
        youWin()
    }
    
    
    

    
    func computerWeapon()
    {
        let random = Int(arc4random_uniform(UInt32(weapons.count)))
        computerWeaponString = weapons[random]
    }
    
    
    func youWin()
    {
        if(yourWeapon.text == "🖐🏼" && cpuWeapon.text == "👊🏼")
        {
            yourView.backgroundColor = UIColor.greenColor()
            cpuView.backgroundColor = UIColor.redColor()
            let alert = UIAlertController(title: "Winner", message: "Nice Job!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetGame = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.Default, handler:
                {sender in
                self.computerWeaponString = ""
                self.cpuWeapon.text = ""
                self.yourView.backgroundColor = UIColor.whiteColor()
                self.cpuView.backgroundColor = UIColor.whiteColor()
                self.shakes = 0

            })
            alert.addAction(resetGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        else if(yourWeapon.text == "👊🏼" && cpuWeapon.text == "✌🏼")
        {
            yourView.backgroundColor = UIColor.greenColor()
            cpuView.backgroundColor = UIColor.redColor()
            let alert = UIAlertController(title: "Winner!", message: "Nice Job!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetGame = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.Default, handler:
                {sender in
                    self.computerWeaponString = ""
                    self.cpuWeapon.text = ""
                    self.yourView.backgroundColor = UIColor.whiteColor()
                    self.cpuView.backgroundColor = UIColor.whiteColor()
                    self.shakes = 0
            })
            alert.addAction(resetGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        else if(yourWeapon.text == "✌🏼" && cpuWeapon.text == "🖐🏼")
        {
            yourView.backgroundColor = UIColor.greenColor()
            cpuView.backgroundColor = UIColor.redColor()
            let alert = UIAlertController(title: "Winner!", message: "Nice Job!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetGame = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.Default, handler:
                {sender in
                    self.computerWeaponString = ""
                    self.cpuWeapon.text = ""
                    self.yourView.backgroundColor = UIColor.whiteColor()
                    self.cpuView.backgroundColor = UIColor.whiteColor()
                    self.shakes = 0

            })
            alert.addAction(resetGame)
            presentViewController(alert, animated: true, completion: nil)
        }
        else if( yourWeapon.text == cpuWeapon.text)
        {
            let alert = UIAlertController(title: "It's a tie!", message: "Computers can read minds... I wonder what's next.", preferredStyle: UIAlertControllerStyle.Alert)
            let resetGame = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.Default, handler:
                {sender in
                    self.computerWeaponString = ""
                    self.cpuWeapon.text = ""
                    self.yourView.backgroundColor = UIColor.whiteColor()
                    self.cpuView.backgroundColor = UIColor.whiteColor()
                    self.shakes = 0

            })
            alert.addAction(resetGame)
            presentViewController(alert, animated: true, completion: nil)
        }
        else
        {
            yourView.backgroundColor = UIColor.redColor()
            cpuView.backgroundColor = UIColor.greenColor()
            let alert = UIAlertController(title: "You Lose :(", message: "You'll get 'em next time!", preferredStyle: UIAlertControllerStyle.Alert)
            let resetGame = UIAlertAction(title: "Play Again?", style: UIAlertActionStyle.Default, handler:
                {sender in
                    self.computerWeaponString = ""
                    self.cpuWeapon.text = ""
                    self.yourView.backgroundColor = UIColor.whiteColor()
                    self.cpuView.backgroundColor = UIColor.whiteColor()
                    self.shakes = 0
                  

            })
            alert.addAction(resetGame)
            presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    override func canBecomeFirstResponder() -> Bool
    {
        return true
    }

    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
    {
        if(motion == .MotionShake)
        {
            ++shakes
            if(shakes == 4)
            {
                computerWeapon()
                cpuWeapon.text = computerWeaponString
                youWin()
                
            }
        }
    }

    

    

    

    

    
    
    
    
    
    



    


}
