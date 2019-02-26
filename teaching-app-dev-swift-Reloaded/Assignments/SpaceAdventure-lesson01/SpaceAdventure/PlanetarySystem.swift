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
    let planets : [Planet]
        init(name:String, planets :  [Planet]) {
           self.name = name
          self.planets = planets
       }
   
    //thiteenth lesson
    // thirteenth assignment
    //Replace the randomPlanet computed property with a method definition that returns an optional. Determine which implementation you feel is better, and explain why.
    // the computed property implemtaion is better because, it does the process just by setting the property otherwise to do the same thing i should have to assign the return value of the method to a variable.
    
    
    private func randomPlanetFunc()->Planet?{
        if planets.isEmpty{
            return nil
        }else {
            return planets[Int(arc4random_uniform(UInt32(planets.count)))]
        
        }}
    var randomPlanet: Planet? {
        if planets.isEmpty{
            return nil
        }else {
            // thirteenth assignment
            // Within the randomPlanet property definition, combine the determination of the index and the subscripting of the planets array into one long statement. Make a decision about the readability of each approach, and determine which approach you feel is better.
            // Original Approach
           let index = Int(arc4random_uniform(UInt32(planets.count)))
          return planets[index]
    // Answer the original approach is better because is easiest to read and comprehend.
    //return planets[Int(arc4random_uniform(UInt32(planets.count)))]
            // Explain the difference between forced unwrapping and conditional binding.
            // forced unwrapping  crash the program execution if the value is nil menwhile with tne conditional bindning just ignore the instructions that should take placein the conditional is better the conditional binding.
            
        }
        
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
