//
//  GreenPowerUp.swift
//  WarFly
//
//  Created by Serhii Demianenko on 23.03.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import SpriteKit

class GreenPowerUp: PowerUp {
    init() {
        let textureAtlas = Assets.shared.greenPowerUpAtlas
        super.init(textureAtlas: textureAtlas)
        name = "greenPowerUp"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
