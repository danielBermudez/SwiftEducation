//
//  Planet.swift
//  SpaceAdventure
//
//  Created by Daniel Bermudez on 2/25/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class Planet {
    let name : String
    let description : String

   var nextPlanet : Planet?
    init(name: String, description: String) {
        self.name = name
        self.description = description
  
        nextPlanet = nil
    }
    
}
