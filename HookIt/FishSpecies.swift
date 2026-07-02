//
//  FishSpecies.swift
//  HookIt
//
//  Created by Dionny Dinza on 6/26/26.
//

import Foundation

class FishSpecies: Identifiable, Codable {
    var id = UUID()
    var imageName: String
    var name: String
    var habitat: String
    var bestBait: String
    var bestTime: String
    var howToCatch: String
    var bestSetup: String
    var eatingQuality: String
    var behavior: String
    var legalSize: String
    var bagLimit: String
    var season: String
    
    init(imageName: String, name: String, habitat: String, bestBait: String, bestTime: String, howToCatch: String, bestSetup: String, eatingQuality: String, behavior: String, legalSize: String, bagLimit: String, season: String) {
        
        self.imageName = imageName
        self.name = name
        self.habitat = habitat
        self.bestBait = bestBait
        self.bestTime = bestTime
        self.howToCatch = howToCatch
        self.bestSetup = bestSetup
        self.eatingQuality = eatingQuality
        self.behavior = behavior
        self.legalSize = legalSize
        self.bagLimit = bagLimit
        self.season = season
    }
}
