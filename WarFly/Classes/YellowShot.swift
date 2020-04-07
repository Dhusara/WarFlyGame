//
//  YellowShot.swift
//  WarFly
//
//  Created by Serhii Demianenko on 24.03.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import SpriteKit

class YellowShot: Shot {
    init() {
        let textureAtlas = Assets.shared.yellowShotAtlas
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
