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
    
    func addAlien() {
        var alien:SKSpriteNode = SKSpriteNode(imageNamed: "alien")
   

    
        init! (alien.physicsBody = SKPhysicsBody(rectangleOfSize: (CGSize) alien , center: alien(CGPoint)))
        
        alien.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize = alien, center: CGPoint,c)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func touchesBegan(touches: Set <NSObject>, withEvent event: UIEvent) {
      
      
    }
    
    
    
    
    
    
    
    
    /* Called when a touch begins */
   
    for touch: AnyObject in touches {
      let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
    
    }
    }
   
     func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

