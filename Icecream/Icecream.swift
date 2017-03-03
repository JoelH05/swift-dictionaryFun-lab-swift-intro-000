//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var namesForGivenFlavor: [String] = []
        for (names, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if flavor == favoriteFlavor {
                namesForGivenFlavor.append(names)
            }
        }
        return namesForGivenFlavor
    }
    
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var count: Int = 0
        for favoriteFlavor in favoriteFlavorsOfIceCream.values {
            if favoriteFlavor == flavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        var personFlavor: String? = ""
        
        for (keys, values) in favoriteFlavorsOfIceCream {
            if person == keys {
                personFlavor = values
            } else {
                personFlavor = nil
            }
        }
        return personFlavor
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson person: String) -> Bool {
        var personChanged: Bool = true
        for keys in favoriteFlavorsOfIceCream.keys {
            if person == keys {
                favoriteFlavorsOfIceCream[person] = flavor
                personChanged = true
            } else {
                personChanged = false
            }
        }
        return personChanged
    }
    
    
    
    
    
    
    // 6.
    
    
    func remove(person: String) -> Bool {
        var wasComing = true
        for keys in favoriteFlavorsOfIceCream.keys {
            if person == keys {
                favoriteFlavorsOfIceCream[keys] = nil
                wasComing = true
            } else {
                wasComing = false
            }
        }
        return wasComing
    }
    
    
    
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    // 8.
    
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        var personAdded: Bool = true
        for key in favoriteFlavorsOfIceCream.keys {
            if person != key {
                favoriteFlavorsOfIceCream["\(person)"] = "\(flavor)"
                personAdded = true
            } else {
                personAdded = false
            }
        }
       return personAdded
    }
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String {
        
        var alphabeticalOrder = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            if let personFlavor = favoriteFlavorsOfIceCream[name] {
                if alphabeticalOrder.isEmpty {
                    alphabeticalOrder.append("\(name) likes \(personFlavor)")
                } else {
                    alphabeticalOrder.append("\n\(name) likes \(personFlavor)")
                }
            }
        }
        
        print(alphabeticalOrder)
        return alphabeticalOrder
    }
    
    
    
    
    

}
