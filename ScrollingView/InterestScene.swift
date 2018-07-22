//
//  InterestScene.swift
//  ScrollingView
//
//  Created by Garrett Jester on 7/21/18.
//  Copyright © 2018 GRey-T Programs. All rights reserved.
//

import UIKit
import SpriteKit
import GameKit

class InterestScene: SKScene {
    var possibleInterests = ["ANIMALS", "SPORTS", "COMICS", "BEAUTY", "FASHION", "HIP HOP", "CARS", "NATURE", "COUNTRY", "BOOKS", "DESIGN", "ART", "DANCE", "INDIE", "EDM", "HEALTH", "FITNESS", "TRAVEL", "LGBTQ", "HUMOR"]
    
    
    override func didMove(to view: SKView) {
        possibleInterests = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: possibleInterests) as! [String]
        let interest = SKSpriteNode(imageNamed: possibleInterests[0])
        let randomInterestPosition = GKRandomDistribution(lowestValue: 0, highestValue: 414)
        let position = CGFloat(randomInterestPosition.nextInt())
        interest.position = CGPoint(x: position, y: self.frame.size.height + interest.size.height)
        
        interest.physicsBody = SKPhysicsBody(rectangleOf: interest.size)
        interest.physicsBody?.isDynamic = true
        
        self.addChild(interest)
        
        let animationDuration = 7
        
        var actionArray = [SKAction]()
        
        actionArray.append(SKAction.moveBy(x: position, y: -interest.size.height, duration: TimeInterval(animationDuration)))
        actionArray.append(SKAction.removeFromParent())
        
        interest.run(SKAction.sequence(actionArray))
        
        
    }
    
}
