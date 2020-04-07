//
//  BluePowerUp.swift
//  WarFly
//
//  Created by Serhii Demianenko on 23.03.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import SpriteKit

class BluePowerUp: PowerUp {
    init() {
        let textureAtlas = Assets.shared.bluePowerUpAtlas
        super.init(textureAtlas: textureAtlas)
        name = "bluePowerUp"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

