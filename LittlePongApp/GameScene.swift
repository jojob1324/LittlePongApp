//
//  GameScene.swift
//  LittlePongApp
//
//  Created by Julius Herz on 16.03.21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let gameBall = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 30, height: 30))
    
    
    override func didMove (to view: SKView) {
        gameBall.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(gameBall)
        
        gameBall.physicsBody = SKPhysicsBody(circleOfRadius: gameBall.size.width/2)
        //default gravity vector
        physicsWorld.gravity = CGVector(dx: 0, dy: -9)
        //after every collision the ball gets additional kinetic energy
        gameBall.physicsBody!.restitution = 1.1
        // the ball is not affect by gravity
        gameBall.physicsBody!.affectedByGravity = false
        //the edgdes of the view are walls
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        gameBall.physicsBody!.allowsRotation = false
        gameBall.physicsBody?.linearDamping = 0
        gameBall.physicsBody?.friction = 0
        //inital velocity of the game ball
        gameBall.physicsBody?.velocity = CGVector(dx:100.0, dy:-100.0)
        


    }
    
}
   
