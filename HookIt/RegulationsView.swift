//
//  RegulationsView.swift
//  HookIt
//
//  Created by Dionny Dinza on 6/26/26.
//

import SwiftUI

struct RegulationsView: View {
    
    @State private var searchText = ""
    
    let regulations = [
        (fishName: "Snook", imageName: "snook", legalSize: "28-33 inches", bagLimit: "1 per person", season: "Seasonal closures apply", notes: "Snook permit required for harvest. Always verify current FWC regulations."),
        (fishName: "Redfish", imageName: "redfish", legalSize: "18-27 inches", bagLimit: "1 per person", season: "Open year-round", notes: "Harvest prohibited in federal waters. Always verify current FWC regulations."),
        (fishName: "Tarpon", imageName: "tarpon", legalSize: "No minimum size", bagLimit: "1 fish with valid tarpon tag", season: "Open year-round", notes: "A tarpon tag is required to possess or harvest a tarpon. Most tarpon fishing is catch-and-release."),
        (fishName: "Mangrove Snapper", imageName: "mangrovesnapper", legalSize: "10 inches minimum", bagLimit: "5 per person", season: "Open year-round", notes: "Included within Florida snapper aggregate limits."),
        (fishName: "Largemouth Bass", imageName: "largemouthbass", legalSize: "No statewide minimum size", bagLimit: "5 per person", season: "Open year-round", notes: "Check local freshwater regulations for specific waters."),
        (fishName: "Peacock Bass", imageName: "peacockbass", legalSize: "No minimum size", bagLimit: "2 per person", season: "Open year-round", notes: "South Florida freshwater regulations apply."),
        (fishName: "Mahi Mahi", imageName: "mahimahi", legalSize: "20 inches fork length", bagLimit: "5 per person", season: "Open year-round", notes: "Offshore regulations may change. Verify before harvesting."),
        (fishName: "Grouper", imageName: "grouper", legalSize: "Depends on grouper species", bagLimit: "Depends on grouper species", season: "Seasonal closures apply", notes: "Different grouper species have different regulations."),
        (fishName: "Pompano", imageName: "pompano", legalSize: "11 inches fork length", bagLimit: "6 per person", season: "Open year-round", notes: "Florida Pompano regulations apply."),
        (fishName: "Sheepshead", imageName: "sheepshead", legalSize: "12 inches minimum", bagLimit: "8 per person", season: "Open year-round", notes: "50 fish vessel limit during March and April."),
        (fishName: "Yellow Jack", imageName: "yellowjack", legalSize: "No minimum size", bagLimit: "No specific bag limit", season: "Open year-round", notes: "Generally treated as an unregulated species in Florida waters.")
    ]
    
    var filteredRegulations: [(fishName: String, imageName: String, legalSize: String, bagLimit: String, season: String, notes: String)] {
        if searchText.isEmpty {
            return regulations
        } else {
            return regulations.filter {
                $0.fishName.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        List(filteredRegulations, id: \.fishName) { fish in
            NavigationLink {
                RegulationDetailView(
                    fishName: fish.fishName,
                    imageName: fish.imageName,
                    region: "Florida",
                    legalSize: fish.legalSize,
                    bagLimit: fish.bagLimit,
                    season: fish.season,
                    notes: fish.notes
                )
            } label: {
                HStack(spacing: 12) {
                    Image(fish.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    Text(fish.fishName)
                        .font(.headline)
                }
                .padding(.vertical, 4)
            }
        }
        .navigationTitle("Fishing Regulations")
        .searchable(text: $searchText, prompt: "Search fish species")
    }
}

#Preview {
    NavigationStack {
        RegulationsView()
    }
}
