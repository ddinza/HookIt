//
//  RegulationData.swift
//  HookIt
//
//  Created by Dionny Dinza on 7/25/26.
//

import Foundation

struct FishingRegulation: Identifiable {
    let id = UUID()
    let fishName: String
    let imageName: String
    let region: String
    let legalSize: String
    let bagLimit: String
    let season: String
    let notes: String
}

struct RegulationData {
    static let allRegulations: [FishingRegulation] = [
        FishingRegulation(
            fishName: "Snook",
            imageName: "snook",
            region: "Florida",
            legalSize: "28-33 inches",
            bagLimit: "1 per person",
            season: "Seasonal closures apply",
            notes: "Snook permit required for harvest. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Redfish",
            imageName: "redfish",
            region: "Florida",
            legalSize: "18-27 inches",
            bagLimit: "1 per person",
            season: "Open year-round",
            notes: "Harvest prohibited in federal waters. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Tarpon",
            imageName: "tarpon",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "1 fish with valid tarpon tag",
            season: "Open year-round",
            notes: "A tarpon tag is required to possess or harvest a tarpon. Most tarpon fishing is catch-and-release."
        ),
        FishingRegulation(
            fishName: "Mangrove Snapper",
            imageName: "mangrovesnapper",
            region: "Florida",
            legalSize: "10 inches minimum",
            bagLimit: "5 per person",
            season: "Open year-round",
            notes: "Included within Florida snapper aggregate limits."
        ),
        FishingRegulation(
            fishName: "Largemouth Bass",
            imageName: "largemouthbass",
            region: "Florida",
            legalSize: "No statewide minimum size",
            bagLimit: "5 per person",
            season: "Open year-round",
            notes: "Check local freshwater regulations for specific waters."
        ),
        FishingRegulation(
            fishName: "Peacock Bass",
            imageName: "peacockbass",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "2 per person",
            season: "Open year-round",
            notes: "South Florida freshwater regulations apply."
        ),
        FishingRegulation(
            fishName: "Mahi Mahi",
            imageName: "mahimahi",
            region: "Florida",
            legalSize: "20 inches fork length",
            bagLimit: "5 per person",
            season: "Open year-round",
            notes: "Offshore regulations may change. Verify before harvesting."
        ),
        FishingRegulation(
            fishName: "Grouper (Goliath)",
            imageName: "grouper",
            region: "Florida",
            legalSize: "Protected species",
                bagLimit: "Harvest prohibited",
                season: "Catch and release only",
                notes: "Goliath Grouper is protected in Florida. Harvest and possession are prohibited except under limited special harvest programs authorized by FWC. Always verify current regulations before fishing."
            ),
        FishingRegulation(
            fishName: "Pompano",
            imageName: "pompano",
            region: "Florida",
            legalSize: "11 inches fork length",
            bagLimit: "6 per person",
            season: "Open year-round",
            notes: "Florida Pompano regulations apply."
        ),
        FishingRegulation(
            fishName: "Sheepshead",
            imageName: "sheepshead",
            region: "Florida",
            legalSize: "12 inches minimum",
            bagLimit: "8 per person",
            season: "Open year-round",
            notes: "50 fish vessel limit during March and April."
        ),
        FishingRegulation(
            fishName: "Yellow Jack",
            imageName: "yellowjack",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "No specific bag limit",
            season: "Open year-round",
            notes: "Generally treated as an unregulated species in Florida waters."
        ),
        FishingRegulation(
            fishName: "Ladyfish",
            imageName: "ladyfish",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "2 fish or 100 pounds per person per day, whichever is more",
            season: "Open year-round",
            notes: "Ladyfish is treated as an unregulated saltwater species in Florida. The statewide default recreational bag limit for unregulated species applies. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Black Drum",
            imageName: "blackdrum",
            region: "Florida",
            legalSize: "14–24 inches (one fish over 24 inches allowed)",
            bagLimit: "5 per person",
            season: "Open year-round",
            notes: "Slot limit is 14–24 inches total length. One fish over 24 inches may be included in the daily bag limit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Permit",
            imageName: "permit",
            region: "Florida",
            legalSize: "11–22 inches fork length (outside Special Permit Zone)",
            bagLimit: "2 per person (outside Special Permit Zone)",
            season: "Open year-round",
            notes: "Permit regulations differ inside Florida's Special Permit Zone, where harvest is prohibited. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Crevalle Jack",
            imageName: "crevallejack",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "2 fish or 100 pounds per person per day, whichever is greater",
            season: "Open year-round",
            notes: "Crevalle Jack is managed under Florida's unregulated marine species rules. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Lane Snapper",
            imageName: "lanesnapper",
            region: "Florida",
            legalSize: "8 inches minimum",
            bagLimit: "Included within the 10-fish Snapper Aggregate",
            season: "Open year-round",
            notes: "Lane Snapper is managed under Florida's Snapper Aggregate Bag Limit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Mutton Snapper",
            imageName: "muttonsnapper",
            region: "Florida",
            legalSize: "18 inches minimum",
            bagLimit: "Included within the 10-fish Snapper Aggregate",
            season: "Open year-round",
            notes: "Mutton Snapper is managed under Florida's Snapper Aggregate Bag Limit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Gag Grouper",
            imageName: "gaggrouper",
            region: "Florida",
            legalSize: "24 inches minimum (Atlantic waters)",
            bagLimit: "Included within Florida Grouper Aggregate",
            season: "Seasonal closures apply",
            notes: "Regulations differ between Gulf and Atlantic waters and may change annually. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Red Grouper",
            imageName: "redgrouper",
            region: "Florida",
            legalSize: "20 inches minimum (Atlantic waters)",
            bagLimit: "Included within Florida Grouper Aggregate",
            season: "Seasonal closures apply",
            notes: "Regulations differ between Gulf and Atlantic waters and may change annually. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Blue Runner",
            imageName: "bluerunner",
            region: "Florida",
            legalSize: "No species-specific minimum size",
            bagLimit: "Statewide unregulated-species limit applies",
            season: "Open year-round",
            notes: "Blue Runner does not have an individual Florida recreational rule. General limits for unregulated marine species apply. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Black Grouper",
            imageName: "blackgrouper",
            region: "Florida Keys / Atlantic",
            legalSize: "24 inches minimum total length",
            bagLimit: "1 Gag or Black Grouper per person within the 3-fish grouper/tilefish aggregate",
            season: "Open May 1 through December 31",
            notes: "A maximum of 2 Black Grouper may be harvested per vessel per day, without exceeding individual bag limits. For-hire captain and crew retention is prohibited. Special regulations may apply in Biscayne National Park. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Porgy (Jolthead)",
            imageName: "porgy(jolthead)",
            region: "Florida",
            legalSize: "No species-specific minimum size",
            bagLimit: "Statewide unregulated-species limit applies",
            season: "Open year-round",
            notes: "Most porgy species in Florida are managed under the general unregulated marine species rules. Except Red Porgy, which is regulated to 14 inches (total lenght) minimum in Atlantic Waters. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Yellowtail Snapper",
            imageName: "yellowtailsnapper",
            region: "Florida",
            legalSize: "12 inches minimum total length",
            bagLimit: "Included within the 10-fish Snapper Aggregate",
            season: "Open year-round",
            notes: "Yellowtail Snapper is managed under Florida's Snapper Aggregate Bag Limit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Nurse Shark",
            imageName: "nurseshark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Nurse Shark is a Group 2 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Blacktip Shark",
            imageName: "blacktipshark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Blacktip Shark is a Group 1 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Lemon Shark",
            imageName: "lemonshark",
            region: "Florida",
            legalSize: "Protected species",
            bagLimit: "Harvest prohibited",
            season: "Catch and release only",
            notes: "Lemon Sharks are prohibited from harvest in Florida. They must remain in the water and be released immediately. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Bull Shark",
            imageName: "bullshark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Bull Shark is a Group 2 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Bonnethead Shark",
            imageName: "bonnetheadshark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Bonnethead Shark is a Group 1 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Great Hammerhead Shark",
            imageName: "greathammerheadshark",
            region: "Florida",
            legalSize: "Protected species",
            bagLimit: "Harvest prohibited",
            season: "Catch and release only",
            notes: "Great Hammerhead Sharks are prohibited from harvest in Florida. They must remain in the water and be released immediately. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Tiger Shark",
            imageName: "tigershark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Tiger Shark is a Group 2 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Spinner Shark",
            imageName: "spinnershark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Spinner Shark is a Group 1 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Caribbean Reef Shark",
            imageName: "caribbeanreefshark",
            region: "Florida",
            legalSize: "Protected species",
            bagLimit: "Harvest prohibited",
            season: "Catch and release only",
            notes: "Caribbean Reef Sharks are protected from harvest in Florida state waters. Keep the shark in the water during release. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Scalloped Hammerhead Shark",
            imageName: "scallopedhammerheadshark",
            region: "Florida",
            legalSize: "Protected species",
            bagLimit: "Harvest prohibited",
            season: "Catch and release only",
            notes: "Scalloped Hammerhead Sharks are protected from harvest in Florida. Keep the shark in the water during release. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Sandbar Shark",
            imageName: "sandbarshark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Sandbar Shark is a Group 2 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Atlantic Sharpnose Shark",
            imageName: "atlanticsharpnoseshark",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Atlantic Sharpnose Shark is a Group 1 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Blacknose Shark",
            imageName: "blacknoseshark",
            region: "Florida",
            legalSize: "54 inches minimum fork length",
            bagLimit: "1 shark per person per day; 2 sharks maximum per vessel",
            season: "Open year-round",
            notes: "Blacknose Shark is a Group 1 harvestable shark. Non-offset, non-stainless-steel circle hooks are required when targeting sharks with natural bait. Shore-based shark anglers age 16 or older must complete the required course and obtain the free annual permit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Great White Shark",
            imageName: "greatwhiteshark",
            region: "Florida",
            legalSize: "Protected species",
            bagLimit: "Harvest prohibited",
            season: "Catch and release only",
            notes: "Great White Sharks are protected in Florida and under federal law. They may not be harvested or possessed. If accidentally hooked, keep the shark in the water and release it immediately. Always verify current FWC and NOAA regulations."
        ),
        FishingRegulation(
            fishName: "White-Spotted Soapfish",
            imageName: "whitespottedsoapfish",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "No specific bag limit",
            season: "Open year-round",
            notes: "White-Spotted Soapfish is not a managed recreational species in Florida. Although there are no specific recreational size or bag limits, this species produces a toxic mucus called grammistin and is generally not considered good table fare. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Great Barracuda",
            imageName: "barracuda",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "2 fish per harvester per day",
            season: "Open year-round",
            notes: "Great Barracuda may be harvested in Florida with a daily recreational bag limit of two fish per person. Due to the risk of ciguatera toxin, consumption of larger barracuda is not recommended. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Parrot Fish (Princess)",
            imageName: "princessparrotfish",
            region: "Florida",
            legalSize: "Harvest prohibited",
            bagLimit: "No harvest allowed",
            season: "Protected year-round",
            notes: "All parrotfish species are protected in Florida state waters. Harvest and possession are prohibited because of their important role in maintaining healthy coral reef ecosystems. Always verify current FWC regulations."
        ),
        FishingRegulation(
            fishName: "Wahoo",
            imageName: "wahoo",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "2 fish per harvester per day",
            season: "Open year-round",
            notes: "Wahoo may be harvested year-round in Florida. The recreational bag limit is two fish per person per day, with no minimum size limit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "King Mackerel",
            imageName: "kingmackerel",
            region: "Florida",
            legalSize: "24 inches fork length",
            bagLimit: "2 fish per harvester per day",
            season: "Open year-round",
            notes: "King Mackerel are managed under both Florida and federal regulations. The recreational bag limit is two fish per person per day with a 24-inch fork length minimum size. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "African Pompano",
            imageName: "africanpompano",
            region: "Florida",
            legalSize: "24 inches fork length",
            bagLimit: "2 fish per harvester per day",
            season: "Open year-round",
            notes: "African Pompano have a recreational minimum size limit of 24 inches fork length and a daily bag limit of two fish per person in Florida. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Cobia",
            imageName: "cobia",
            region: "Florida",
            legalSize: "36 inches fork length",
            bagLimit: "1 fish per harvester per day",
            season: "Open year-round",
            notes: "Florida recreational regulations allow one Cobia per harvester per day with a minimum size of 36 inches fork length. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Tripletail",
            imageName: "tripletail",
            region: "Florida",
            legalSize: "18 inches total length",
            bagLimit: "2 fish per harvester per day",
            season: "Open year-round",
            notes: "Florida recreational regulations require an 18-inch minimum total length and allow two Tripletail per harvester per day. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Northern Pike",
            imageName: "northernpike",
            region: "Northern United States and Canada",
            legalSize: "Varies by state and province",
            bagLimit: "Varies by state and province",
            season: "Open in many states, but regulations vary",
            notes: "Northern Pike are not native to Florida. They are commonly targeted in states such as Minnesota, Wisconsin, Michigan, New York, North Dakota, South Dakota, Montana, Alaska, and throughout much of Canada. Regulations differ by state and province, so always consult the local fish and wildlife agency before harvesting."
        ),
        FishingRegulation(
            fishName: "Gar",
            imageName: "gar",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "No specific bag limit",
            season: "Open year-round",
            notes: "Gar are not currently managed with statewide recreational size or bag limits in Florida. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Bluegill",
            imageName: "bluegill",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "No statewide bag limit",
            season: "Open year-round",
            notes: "Bluegill are one of Florida's most popular freshwater panfish. There are currently no statewide minimum size or bag limits, although some water bodies may have special regulations. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Spanish Mackerel",
            imageName: "spanishmackerel",
            region: "Florida",
            legalSize: "12 inches fork length",
            bagLimit: "15 fish per harvester per day",
            season: "Open year-round",
            notes: "Spanish Mackerel may be harvested year-round in Florida with a recreational bag limit of 15 fish per person per day and a minimum size of 12 inches fork length. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Bluefish",
            imageName: "bluefish",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "3 fish per harvester per day",
            season: "Open year-round",
            notes: "Bluefish may be harvested year-round in Florida. The recreational bag limit is three fish per person per day with no minimum size limit. Always verify current FWC regulations before harvesting."
        ),
        FishingRegulation(
            fishName: "Southern Stingray",
            imageName: "southernstingray",
            region: "Florida",
            legalSize: "No minimum size",
            bagLimit: "No specific bag limit",
            season: "Open year-round",
            notes: "Southern Stingrays are not currently managed with statewide recreational size or bag limits in Florida. Exercise extreme caution when handling due to the venomous tail spine. Always verify current FWC regulations before harvesting. *** Safety Tip *** Never grab a stingray by the tail. Use pliers to remove the hook when possible, keep clear of the venomous barb, and shuffle your feet when wading to reduce the chance of stepping on one."
        ),
        
    ]

    static func findRegulation(named fishName: String) -> FishingRegulation? {
        allRegulations.first {
            $0.fishName.caseInsensitiveCompare(fishName) == .orderedSame
        }
    }
}
