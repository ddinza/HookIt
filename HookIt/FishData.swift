//
//  FishData.swift
//  HookIt
//
//  Created by Dionny Dinza on 7/2/26.
//

import Foundation

struct FishData {
    static let allFish: [FishSpecies] = [
        FishSpecies(
            imageName: "snook",
            name: "Snook",
            habitat: "Found near mangroves, bridges, docks, and inlets. They also love the mix of fresh and saltwater.",
            bestBait: "Live pilchards, shrimp, pinfish, and artificial swimbaits.",
            bestTime: "Early morning, late afternoon, and moving tides.",
            howToCatch: "Cast near structure and retrieve slowly, if using artificial bait. Snook often ambush bait near cover.",
            bestSetup: "Medium-heavy spinning rod with a 3000-4000 size reel, 20-30 lb braid, and 30-40 lb fluorocarbon leader.",
            eatingQuality: "Excellent table fish",
            behavior: "Snook are ambush predators that hide near structure and strike quickly.",
            legalSize: "28-33 inches",
            bagLimit: "1 per person",
            season: "Varies by region"
        ),
        FishSpecies(
            imageName: "redfish",
            name: "Redfish",
            habitat: "Found around grass flats, mangroves, oyster bars, and shallow coastal waters.",
            bestBait: "Live shrimp, crabs, cut bait, and soft plastics.",
            bestTime: "Morning, late afternoon, and incoming tides.",
            howToCatch: "Cast near grass edges or oyster bars and retrieve slowly.",
            bestSetup: "Medium spinning rod with a 3000 size reel, 10-20 lb braid, and 20-30 lb fluorocarbon leader.",
            eatingQuality: "Very good",
            behavior: "Redfish often search the bottom for crabs, shrimp, and small fish.",
            legalSize: "18-27 inches",
            bagLimit: "1 per person",
            season: "Open year-round"
        ),
        FishSpecies(
            imageName: "tarpon",
            name: "Tarpon",
            habitat: "Found near beaches, bridges, passes, bays, and deeper channels.",
            bestBait: "Live crabs, mullet, pilchards, and large artificial lures.",
            bestTime: "Early morning, evening, and moving tides.",
            howToCatch: "Use strong tackle and present bait near rolling fish or current lines.",
            bestSetup: "Heavy spinning rod with a 6000-8000 size reel, 50-80 lb braid, and 60-100 lb fluorocarbon leader.",
            eatingQuality: "Not commonly eaten; usually catch and release.",
            behavior: "Tarpon are powerful fighters known for jumping when hooked.",
            legalSize: "Catch and release in most situations",
            bagLimit: "Special regulations apply",
            season: "Varies by region"
        ),
        FishSpecies(
            imageName: "mangrovesnapper",
            name: "Mangrove Snapper",
            habitat: "Found near mangroves, docks, bridges, reefs, and rocky structure.",
            bestBait: "Live shrimp, small pilchards, cut bait, and small jigs.",
            bestTime: "Dawn, dusk, and strong tidal movement.",
            howToCatch: "Use light tackle and place bait close to structure.",
            bestSetup: "Light to medium spinning rod with a 2500-3000 size reel, 10-15 lb braid, and 15-25 lb fluorocarbon leader.",
            eatingQuality: "Excellent table fish.",
            behavior: "Mangrove snapper are cautious fish that often stay close to cover.",
            legalSize: "10 inches minimum",
            bagLimit: "5 per person",
            season: "Open year-round"
        ),
        FishSpecies(
            imageName: "largemouthbass",
            name: "Largemouth Bass",
            habitat: "Found in lakes, ponds, canals, and slow-moving freshwater areas with vegetation.",
            bestBait: "Plastic worms, crankbaits, spinnerbaits, shiners, and topwater lures.",
            bestTime: "Early morning, late afternoon, and cloudy conditions.",
            howToCatch: "Cast near weeds, docks, lily pads, and submerged structure.",
            bestSetup: "Medium baitcasting or spinning rod with a 2500-3000 size reel, 10-20 lb line, and weedless hooks for heavy cover.",
            eatingQuality: "Good, though many anglers practice catch and release.",
            behavior: "Bass are ambush predators that strike from cover.",
            legalSize: "Varies by location",
            bagLimit: "Varies by location",
            season: "Usually open year-round, depending on location"
        ),
        FishSpecies(
            imageName: "peacockbass",
            name: "Peacock Bass",
            habitat: "Found in freshwater canals, lakes, and ponds, especially around structure, rocks, and shoreline cover.",
            bestBait: "Live shiners, small minnows, jerkbaits, crankbaits, and topwater lures.",
            bestTime: "Morning and late afternoon, especially on warm sunny days.",
            howToCatch: "Cast near structure and retrieve quickly. Peacock bass are aggressive and often chase fast-moving lures.",
            bestSetup: "Medium spinning or baitcasting rod with a 2500-3000 size reel, 10-20 lb braid, and 15-25 lb fluorocarbon leader.",
            eatingQuality: "Good, but many anglers practice catch and release.",
            behavior: "Peacock bass are aggressive visual predators that attack baitfish and lures with speed.",
            legalSize: "Varies by location",
            bagLimit: "Varies by location",
            season: "Usually open year-round, depending on location"
        ),
        FishSpecies(
            imageName: "mahimahi",
            name: "Mahi Mahi",
            habitat: "Found offshore near weed lines, floating debris, current edges, and blue water.",
            bestBait: "Ballyhoo, pilchards, squid, small trolling lures, and cut bait.",
            bestTime: "Morning and midday when offshore conditions are calm and bait is present.",
            howToCatch: "Troll near weed lines or floating structure, then cast bait or lures when fish are spotted.",
            bestSetup: "Medium-heavy offshore rod with a 5000-8000 size reel, 30-50 lb braid or mono, and 40-60 lb leader.",
            eatingQuality: "Excellent table fish with firm, mild meat.",
            behavior: "Mahi mahi are fast, colorful offshore predators that often travel in schools near floating cover.",
            legalSize: "Varies by region",
            bagLimit: "Varies by region",
            season: "Varies by region"
        ),
        FishSpecies(
            imageName: "grouper",
            name: "Grouper",
            habitat: "Found near reefs, wrecks, ledges, rocks, and offshore bottom structure.",
            bestBait: "Live pinfish, sardines, squid, cut bait, and large jigs.",
            bestTime: "Moving tides and daytime bottom fishing over structure.",
            howToCatch: "Drop bait close to bottom structure and keep pressure on the fish to prevent it from breaking off in rocks.",
            bestSetup: "Heavy conventional or spinning setup with 50-80 lb braid and 60-100 lb leader for strong bottom structure.",
            eatingQuality: "Excellent table fish with firm white meat.",
            behavior: "Grouper are powerful bottom predators that ambush prey and quickly dive back into structure.",
            legalSize: "Varies by species and region",
            bagLimit: "Varies by species and region",
            season: "Varies by species and region"
        ),
        FishSpecies(
            imageName: "pompano",
            name: "Pompano",
            habitat: "Found along sandy beaches, surf zones, passes, and shallow coastal flats.",
            bestBait: "Sand fleas, shrimp, small crabs, clams, and pompano jigs.",
            bestTime: "Incoming tide, early morning, and periods with clean moving water.",
            howToCatch: "Fish near the surf line or sandy channels using small natural baits or jigs bounced along the bottom.",
            bestSetup: "Light to medium spinning rod with a 2500-4000 size reel, 10-15 lb braid, and 15-20 lb fluorocarbon leader.",
            eatingQuality: "Excellent table fish and highly valued for eating.",
            behavior: "Pompano travel in schools and feed along sandy bottoms for small crustaceans.",
            legalSize: "11 inches fork length",
            bagLimit: "6 per person",
            season: "Open year-round"
        ),
        FishSpecies(
            imageName: "sheepshead",
            name: "Sheepshead",
            habitat: "Found around bridges, docks, pilings, seawalls, rocks, reefs, and oyster bars.",
            bestBait: "Fiddler crabs, shrimp, sand fleas, barnacles, and small pieces of crab.",
            bestTime: "Cooler months, moving tides, and daytime fishing around structure.",
            howToCatch: "Use small hooks and fish close to structure. Watch carefully because sheepshead bites can be very subtle.",
            bestSetup: "Medium-light spinning rod with a 2500-3000 size reel, 10-15 lb braid, and 15-25 lb fluorocarbon leader.",
            eatingQuality: "Excellent table fish with firm white meat.",
            behavior: "Sheepshead use strong teeth to crush barnacles, crabs, and shellfish near structure.",
            legalSize: "Varies by region",
            bagLimit: "Varies by region",
            season: "Varies by region"
        ),
        FishSpecies(
            imageName: "yellowjack",
            name: "Yellow Jack",
            habitat: "Found around reefs, wrecks, channels, clear flats, and tropical nearshore waters.",
            bestBait: "Live pilchards, shrimp, small baitfish, jigs, and small plugs.",
            bestTime: "Morning, evening, and moving tides in clear water.",
            howToCatch: "Cast live bait or jigs near reefs and current edges. Use steady pressure because jacks fight hard.",
            bestSetup: "Medium spinning rod with a 3000-5000 size reel, 15-30 lb braid, and 25-40 lb fluorocarbon leader.",
            eatingQuality: "Very good when fresh and properly cleaned.",
            behavior: "Yellow jacks are strong, fast predators that often patrol reefs and clear-water structure.",
            legalSize: "Varies by region",
            bagLimit: "Varies by region",
            season: "Varies by region"
        )
    ]
    
    static func findFish(named name: String) -> FishSpecies? {
        allFish.first { $0.name == name }
    }
}
