//
//  PlanetarySystem.swift
//  SpaceAdventure
//
//  Created by Daniel Bermudez on 2/25/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
// seventh Assignment
class PlanetarySystem{
    let name: String
// eight assignment
//add planets to the system
    var planets : [Planet]
        init(name:String, planets :  [Planet]) {
           self.name = name
          self.planets = planets
       }
    
// Seventh Assignment
// use a convience init to set the value of the new number of Planets attribute
    //    let numberOfPlanets: Int
    //    init(name:String, numberOfPlanets : Int) {
    //        self.name = name
    //        self.numberOfPlanets = numberOfPlanets
    //    }
    //    convenience init(numberOfPlanets: Int){
    //        self.init(name : "Solar System", numberOfPlanets:numberOfPlanets)
    //
    //    }
}
