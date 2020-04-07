//
//  Background.swift
//  WarFly
//
//  Created by Serhii Demianenko on 13.03.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import SpriteKit

class Background: SKSpriteNode {
    
    static func populateBackground(at point: CGPoint) -> Background {
        
        let background = Background(imageNamed: "background")
        background.position = point
        background.zPosition = 0
        
        return background
        
    }
    
}
