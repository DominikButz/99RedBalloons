//
//  ViewController.swift
//  99RedBaloons
//
//  Created by Dominik Butz on 08/10/14.
//  Copyright (c) 2014 Duoyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var balloons:[Balloon] = []
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    self.createBalloons()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        var randomIndex = Int(arc4random_uniform(UInt32(100))) 
        
        let balloon = self.balloons[randomIndex];
        
        self.numberLabel.text = "Balloon number: \(balloon.number)"
        if self.numberLabel.hidden == true {
            
            self.numberLabel.hidden = false;
        }
        
        self.backgroundImage.image = balloon.image
        

        
        
    }
    
// MARK helper functions
    
    func createBalloons() {
        
        for var i = 1; i <= 99; i++ {
            
            var balloon = Balloon()
            balloon.number = i
            balloon.assignRandomImage()
            
            self.balloons.append(balloon)
            
            
        }
        
        
        
    }

}

