//
//  Cloud.swift
//  WarFly
//
//  Created by Serhii Demianenko on 13.03.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import SpriteKit
import GameplayKit

final class Cloud: SKSpriteNode, GameBackgroundSpriteable {
    static func populate(at point: CGPoint?) -> Cloud {
        let cloudImageName = configureCloudName()
        let cloud = Cloud(imageNamed: cloudImageName)
        cloud.setScale(randomScaleFactor)
        cloud.position = point ?? randomPoint()
        cloud.zPosition = 10
        cloud.name = "sprite"
        cloud.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        cloud.run(move(from: cloud.position))
        
        return cloud
        
    }
    
    fileprivate static func configureCloudName() -> String {
        let distribuiton = GKRandomDistribution(lowestValue: 1, highestValue: 3)
        let randomNumber = distribuiton.nextInt()
        let imageName = "cl" + "\(randomNumber)"
        
        return imageName
        
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribuiton = GKRandomDistribution(lowestValue: 20, highestValue: 30)
        let randomNumber = CGFloat(distribuiton.nextInt()) / 10
        
        return randomNumber
    }
    
    fileprivate static func move(from point: CGPoint) -> SKAction {
        let movePoint = CGPoint(x: point.x, y: -200)
        let moveDistance = point.y + 200
        let movementSpeed: CGFloat = 150.0
        let duration = moveDistance / movementSpeed
        return SKAction.move(to: movePoint, duration: TimeInterval(duration))
        
    }
    
}
