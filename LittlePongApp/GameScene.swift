//
//  GameScene.swift
//  LittlePongApp
//
//  Created by Julius Herz on 16.03.21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let gameBall = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))
    
    
    override func didMove (to view: SKView) {
        gameBall.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(gameBall)
        


    }
    
}
   
