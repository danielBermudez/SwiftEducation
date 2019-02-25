//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Daniel Bermudez on 2/25/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
//Fourth Assignment
class SpaceAdventure{
    let numberOfPlanets  = 8
    let diameterOfEarth  = 24859.82 // In miles, from pole to pole
//Seventh Assignment
// Class Planetary System in the planetary system init
    //    let planetarySystem : PlanetarySystem
    //    init(planetarySystem :PlanetarySystem) {
    //        self.planetarySystem = planetarySystem
    //    }
// eight assignment
//add planets to the system
    init(){
        // tenth assignment
        // TODO reduce repetitive code
        let mercury = Planet(name: "Mercury", description: "A very hot planet, closest to the sun.")
         planetarySystem = PlanetarySystem(name: "Solar System", planets: [Planet]())
        let venus = Planet(name: "Venus", description: "The second Planet from the Sun,Has the longest rotation period.")
        let earth = Planet(name: "Earth", description: "Is the third planet from the sun, which has a circumference of \(diameterOfEarth) miles.")
        let  mars = Planet(name: "Mars", description: "Is the fourth planet from the sun, which is the second smallest planet after mercury ")
          let  jupiter = Planet(name: "Jupiter", description: "Is the fifth planet from the sun, is the largest in the solar system. ")
        let saturn = Planet(name: "Saturn ", description: "Is the sixth planet from the sun, has a prominent ring system visible from earth. ")
        let uranus = Planet(name: "Uranus ", description: "Is the seventh  planet from the sun,  has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. ")
        let neptune = Planet(name: "Neptune ", description: "Is the eight an the farthest planet from the sun, is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus.")
        let planets = [mercury,venus,earth,mars,jupiter,saturn,uranus,neptune]
        planetarySystem = PlanetarySystem(name: "Solar System", planets:planets)
    // using append
//         planetarySystem!.planets.append(mercury)
//         planetarySystem!.planets.append(venus)
//         planetarySystem!.planets.append(earth)
//         planetarySystem!.planets.append(mars)
//         planetarySystem!.planets.append(jupiter)
//         planetarySystem!.planets.append(saturn)
//         planetarySystem!.planets.append(uranus)
//         planetarySystem!.planets.append(neptune)
        
       
    }
    var planetarySystem : PlanetarySystem?
    
    
    func start(){
    // fith Assignment
    // Bring the code of main and call it from a a method
//        let numberOfPlanets  = 8
//        let diameterOfEarth  = 24859.82 // In miles, from pole to pole
//        print("Welcome to our solar system!")
//        print("There are \(numberOfPlanets) planets to explore.")
//        print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
//        let name = responseToPrompt(prompt: "What is your Name?")
//        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
//        var  decision = ""
//        while !(decision == "Y" || decision == "N" || decision == "Cookies!"){
//            decision = responseToPrompt(prompt: "Shall I randomly choose a planet for you to visit? (Y or N)")
//            if decision == "Y" {
//                print("Ok! Traveling to...")
//                // TODO: travel to random planet
//            } else if decision == "N"{
//                print("Ok, name the planet you would like to visit...")
//                // TODO: let the user select a planet to visit
//                // Third Assignment
//            }else if(decision == "Cookies!"){
//                print("Yum! I Like Cookies!!")
//            }
//            else {
//                print("Sorry I didn't get that.")
//            }}
//
//    }
        //sixth Assignment
        // reorganize the code in diferent methods whith an unique functionality
        // if the start method is private the main class is not going to be able to access it, it's going to be visible only by the SpaceAdventure Class.
       
        displayIntroduction()
        greetAdventurer()
        print("Let's go on an adventure!")
        determineDestination()
    }
    private func displayIntroduction(){
        if(planetarySystem != nil){
        print("Welcome to the \(planetarySystem!.name)!")
        print("There are \(planetarySystem!.planets.count) planets to explore.")
        print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
        }else{
            print("Welcome to the universe !")
            print("You are not in a planetary System!.")
            print("There are no planets to explore.")
            
        }
    }
    private func responseToPrompt(prompt: String)-> String{
        print(prompt)
        return getln()
    }
    private func greetAdventurer(){
        let name = responseToPrompt(prompt: "What is your Name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
        
    }
    private func determineDestination(){
        var  decision = ""
        while !(decision == "Y" || decision == "N" || decision == "Cookies!"){
            decision = responseToPrompt(prompt: "Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                print("Ok! Traveling to...")
                // TODO: travel to random planet
            } else if decision == "N"{
                
                let planetName = responseToPrompt(prompt: "Ok, name the planet you would  like to visit.")
                visit(planetName: planetName)
                
                // Third Assignment
            }else if(decision == "Cookies!"){
                print("Yum! I Like Cookies!!")
            }
            else {
                print("Sorry I didn't get that.")
            }}
        
    }
    private func visit(planetName:String){
        print("Traveling to \(planetName)")
        for  i in  0 ..< planetarySystem!.planets.count{
            let planet = planetarySystem!.planets[i]
            if planetName == planet.name {
                print("Arrived in \(planet.name). \(planet.description)")
            }
            
            
        }
    }
    
}
