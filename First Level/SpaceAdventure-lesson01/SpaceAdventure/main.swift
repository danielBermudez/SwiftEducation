/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation
// Fourth Assignment\
    // The instantiation of a object is when the object is created in memory and the initializer is the method that defines which parameters are needed to provide at the moment of instantiate an object.
// seventh assignment
    // use a convenience init to use the planetary system Init
    //    let planetarySystem = PlanetarySystem(numberOfPlanets: 8)
    //    let adventure = SpaceAdventure(planetarySystem : planetarySystem)
    //let mercury = Planet(name: "Mercury", description: "A very hot planet, closest to the sun.")
    //let venus = Planet(name: "Venus", description: "The second Planet from the Sun,Has the longest rotation period.")
    //let earth = Planet(name: "Earth", description: "Is the third planet from the sun, which has a circumference of  24859.82 miles.")
    //let  mars = Planet(name: "Mars", description: "Is the fourth planet from the sun, which is the second smallest planet after mercury ")
    //let  jupiter = Planet(name: "Jupiter", description: "Is the fifth planet from the sun, is the largest in the solar system. ")
    //let saturn = Planet(name: "Saturn ", description: "Is the sixth planet from the sun, has a prominent ring system visible from earth. ")
    //let uranus = Planet(name: "Uranus ", description: "Is the seventh  planet from the sun,  has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. ")
    //let neptune = Planet(name: "Neptune ", description: "Is the eight an the farthest planet from the sun, is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus.")
    //let planets = [mercury,venus,earth,mars,jupiter,saturn,uranus,neptune]
//fifteenth
// reduce repetitve code
    let planetData = [
        "Mercury": "A very hot planet, closest to the sun.",
        "Venus": "It's very cloudy here!",
        "Earth": "There is something very familiar about this planet.",
        "Mars": "Known as the red planet.",
        "Jupiter": "A gas giant, with a noticeable red spot.",
        "Saturn": "This planet has beautiful rings around it.",
        "Uranus": "Strangely, this planet rotates around on its side.",
        "Neptune": "A very cold planet, furthest from the sun."
]
let pillarOfAutumn = Spaceship(name: "UNSC Pilar Of autumn ", capacity: 1000 , speed: 109.375)
let venator = Spaceship(name: "Republic Venator", capacity: 2000, speed: 975)
let spaceShipCollection = [pillarOfAutumn,venator]
var planets = planetData.map{
    name,description in Planet(name: name, description: description)
}
private func setNeighbour(planetList:[Planet])-> [Planet] {
    for i in planetList.indices{
       
            if  i < planetList.count-1 {
             planetList[i].nextPlanet = planetList[i+1]
        }
  
}
    return planetList
}
planets = setNeighbour(planetList: planets)

    let systemName = "Solar System"
let kepler90a = Planet(name: "Kepler-90a ", description: "A very hot planet, closest to the sun.")
let kepler90b = Planet(name: "Kepler-90b", description: "The second Planet from the Sun,Has the longest rotation period.")
let kepler90c = Planet(name: "Kepler-90c", description: "Is the third planet from the sun, which has a circumference of  24859.82 miles.")
let  kepler90d = Planet(name: "Kepler-90d", description: "Is the fourth planet from the sun, which is the second smallest planet after mercury ")
let  kepler90e = Planet(name: "Kepler-90e", description: "Is the fifth planet from the sun, is the largest in the solar system. ")
let kepler90f = Planet(name: "kepler-90f ", description: "Is the sixth planet from the sun, has a prominent ring system visible from earth. ")
let kepler90g = Planet(name: "Kepler-90g", description: "Is the seventh  planet from the sun,  has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. ")


let keplerPlanets = setNeighbour(planetList:[kepler90a,kepler90b,kepler90c,kepler90d,kepler90e,kepler90f,kepler90g] )
let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let kepler90 = PlanetarySystem(name: "Kepler-90", planets: keplerPlanets)

let systemCollection = [solarSystem,kepler90]
let adventure = SpaceAdventure(planetarySystems: systemCollection, shipCollection: spaceShipCollection)


    adventure.start()

// first assignment
// print string literals

    //let numberOfPlanets  = 8
    //let diameterOfEarth  = 24859.82 // In miles, from pole to pole

    //private func printMessages(numberOfPlanets: Int, diameterOfEarth:Double){
    //print("Welcome to our solar system!")
    //print("There are \(numberOfPlanets) planets to explore.")
    //print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
    //}
    //printMessages(numberOfPlanets: numberOfPlanets,diameterOfEarth: diameterOfEarth)\
//SecondAssignment
    //who or what is eliza : is a program write in the MIT to proces natural language and have conversations
    //private func  promptToString()->String{
    //    print("Enter a promt")
    //    let prompt = getln()
    //    print("Your Prompt is \(prompt)")
    //    return prompt
    //}
    //let resultString = promptToString()
    //print("What is your name?")
    //let name = getln()
    //print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    //print("Let's go on an adventure!")
    //print("Shall I randomly choose a planet for you to visit? (Y or N)")
    //var  decision = ""
    //while !(decision == "Y" || decision == "N" || decision == "Cookies!"){
    //decision = getln()
    //if decision == "Y" {
    //    print("Ok! Traveling to...")
    //    // TODO: travel to random planet
    //} else if decision == "N"{
    //    print("Ok, name the planet you would like to visit...")
    //    // TODO: let the user select a planet to visit
// Third Assignment
// cookie easter egg
    //    }else if(decision == "Cookies!"){
    //        print("Yum! I Like Cookies!!")
    //    }
    //else {
    //    print("Sorry I didn't get that.")
    //    }}
private func convertPlanet(planet: Planet)-> Dictionary<String,String>{
    let planetRepresentation :[String : String] = ["Name": planet.name, "Description": planet.description]
    return planetRepresentation
}
private func convertPlanetarySystem(system : PlanetarySystem) -> PlanetarysystemProperties{

    var planetsArray = Dictionary<String,String>()
    for i in system.planets.indices {
        let planetData = convertPlanet(planet: system.planets[i])
        let name = planetData["Name"]!
        let description = planetData["Description"]!
        planetsArray.updateValue(description, forKey: name)
    }
    let result = PlanetarysystemProperties(name: system.name, planets: planetsArray)
    return result
}


private func createPropertyList(){
    let system1  = convertPlanetarySystem(system: solarSystem)
    let system2 = convertPlanetarySystem(system: kepler90)
    let planetarySystems = [system1,system2]
    let encoder = PropertyListEncoder()
    encoder.outputFormat = .xml
    
    let path = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask)[0].appendingPathComponent("PropertyList.plist")
    
    do {
        let data = try encoder.encode(planetarySystems)
        try data.write(to: path)
    
    } catch {
        print(error)
}
}

createPropertyList()


