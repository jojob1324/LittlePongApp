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
    let racket = SKSpriteNode (color: UIColor.red, size: CGSize(width: 100, height: 20))
    
    
    override func didMove (to view: SKView) {
        gameBall.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(gameBall)
        
        racket.position = CGPoint(x: frame.midX, y: frame.maxY/100)
        addChild(racket)
        
        
        
        gameBall.physicsBody = SKPhysicsBody(circleOfRadius: gameBall.size.width/2)
        
        
        //default gravity vector
        physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
        
        //after every collision the ball gets additional kinetic energy
        gameBall.physicsBody!.restitution = 1
        
        // the ball is not affect by gravity
        gameBall.physicsBody!.affectedByGravity = false
        
        //the edgdes of the view are walls
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        // set the racket as a physics body
        
        racket.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: racket.size.width, height: racket.size.height))
        racket.physicsBody!.isDynamic = false
        
        
        //no damping and friction
        gameBall.physicsBody!.allowsRotation = false
        gameBall.physicsBody?.linearDamping = 0
        gameBall.physicsBody?.friction = 0
        
        
        
        //inital velocity of the game ball
        gameBall.physicsBody?.velocity = CGVector(dx:100.0, dy:-100.0)
        


    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let loc = touch.location(in: self)
            racket.position.x = loc.x
            racket.position.y = loc.y
        }
        
    }
    
}
   
