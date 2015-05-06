//
//  GameScene.swift
//  Alien Killer
//
//  Created by Jaiveer Katariya on 4/14/15.
//  Copyright (c) 2015 Jaiveer Katariya. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var player = SKSpriteNode()
    var lastYieldTimeInterval:NSTimeInterval = NSTimeInterval()
    var lastUpdateTimeInterval:NSTimeInterval = NSTimeInterval()
    var aliensDestroyed:Int = 0
    
    let alienCategory:UInt32 = 0x1 << 1
    let photonTorpedoCategory:UInt32 = 0x1 << 0
    
    
    override func didMoveToView(view: SKView) {
       /* /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel) */
    }
    
    override init(size:CGSize){
    super.init(size: size)
        self.backgroundColor = SKColor.blackColor()
        
        player = SKSpriteNode(imageNamed:"shuttle")
        
        player.position = CGPointMake(self.frame.size.width/2, player.size.height/2 + 20)

        self.addChild(player)
        self.physicsWorld.gravity = CGVectorMake(0, 0)
        self.physicsWorld.contactDelegate = self
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAlien() {
        var alien:SKSpriteNode = SKSpriteNode(imageNamed: "alien")
        
       
        
        
        
        alien.physicsBody = SKPhysicsBody(rectangleOfSize: alien.size)
        /* alien.physicsBody!.dynamic = true */
        
        alien.physicsBody!.categoryBitMask = alienCategory
        alien.physicsBody!.contactTestBitMask = photonTorpedoCategory
        alien.physicsBody!.collisionBitMask = 0
        
        
        let minX = alien.size.width/2
        let maxX = alien.size.width - alien.size.width/2
        let rangeX = maxX-minX
        
        let position:CGFloat = CGFloat(arc4random()) % CGFloat(rangeX) + CGFloat(minX)
        
        
    }

   

    override func touchesBegan(touches: Set <NSObject>, withEvent event: UIEvent) {
      
      
    }
    
    
    
    
    
    
    
    
    /* Called when a touch begins */
   
     }
   
     func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

