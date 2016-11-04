//
//  ViewController.swift
//  tictactoedemo
//
//  Created by Amy Giver on 11/3/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentGame = Game()
    
    @IBOutlet weak var one: UIButton!
    
    @IBOutlet weak var two: UIButton!
    
    @IBOutlet weak var three: UIButton!
    
    var allButtons:[UIButton] = []
   
    var player = 1
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    @IBAction func spaceSelected(sender: UIButton) {
        allButtons.removeAtIndex(0)
        print("After the remove,", allButtons)
        
        
        
        var posX = 0
        var posY = 0
        print("Button pressed!", sender.tag)
        if player == 1 {
            sender.backgroundColor = UIColor.blueColor()
        }
        else {
            sender.backgroundColor = UIColor.yellowColor()
        }
        if sender.tag == 1 || sender.tag == 2 || sender.tag == 3 {
            posY = 0
            
        }
        if sender.tag == 4 || sender.tag == 5 || sender.tag == 6{
            posY = 1
        }
        if sender.tag == 7 || sender.tag == 8 || sender.tag == 9{
            posY = 2
        }
        if sender.tag == 1 || sender.tag == 4 || sender.tag == 7{
            posX = 0
        }
        if sender.tag == 2 || sender.tag == 5 || sender.tag == 8{
            posX = 1
        }
        if sender.tag == 3 || sender.tag == 6 || sender.tag == 9{
            posX = 2
        }
        currentGame.playerMoved(player, positionX: posX, positionY: posY)
        sender.enabled = false
        if currentGame.checkForWin(){
            winnerLabel.text = "Player \(player) won!!"
            disableAllButtons()
        }
        else {
            changePlayer()
        }
        
        
    }
    func disableAllButtons(){
        print("disabling")
    }
    
    func changePlayer(){
        if player == 1 {
            player = 2
        }
        else {
            player = 1
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        allButtons.append(one)
        allButtons.append(two)
        allButtons.append(three)
     //   allButtons.append(four)
       // allButtons.append(five)
       // allButtons.append(six)
        //allButtons.append(seven)
        //allButtons.append(eight)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

