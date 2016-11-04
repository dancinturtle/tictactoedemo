//
//  Game.swift
//  tictactoedemo
//
//  Created by Amy Giver on 11/3/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import Foundation

class Game {
    var board = [[0,0,0],[0,0,0],[0,0,0]]
    func playerMoved(player:Int, positionX:Int, positionY: Int){
        board[positionY][positionX] = player
        print ("Player moved", board)
    }
    func checkForWin()->Bool{
        if board[0][0] != 0 && board[0][0] == board[0][1] && board [0][0] == board[0][2]{
            print("Winner!!!!!!")
            return true
        }
        return false
    }
    func reset(){
        board = [[0,0,0],[0,0,0],[0,0,0]]
    }
}
