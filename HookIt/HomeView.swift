//
//  HomeView.swift
//  HookIt
//
//  Created by Dionny Dinza on 6/24/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("homebackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.18)
                
                ScrollView {
                    VStack(spacing: 18) {
                        
                        Image("hookitlogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 24))
                            .shadow(radius: 8)
                            .padding(.top, 40)
                            .padding(.bottom, -8)
                        
                        Text("HookIt")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Your personal fishing guide for species, bait, regulations, and catch tracking.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.secondary)
                            .padding(.horizontal)
                        
                        VStack(spacing: 16) {
                            NavigationLink(destination: SpeciesGuideView()) {
                                HomeCard(
                                    title: "Species Guide",
                                    subtitle: "Learn about fish, bait, setup, and behavior.",
                                    imageName: "speciesguide"
                                )
                            }
                            
                            NavigationLink(destination: RegulationsView()) {
                                HomeCard(
                                    title: "Fishing Regulations",
                                    subtitle: "Check legal size, bag limits, and seasons.",
                                    imageName: "regulations"
                                )
                            }
                            
                            NavigationLink(destination: FavoritesView()) {
                                HomeCard(
                                    title: "Favorites",
                                    subtitle: "Quickly access your saved favorite species.",
                                    imageName: "favorites"
                                )
                            }
                            
                            NavigationLink(destination: MyCatchesView()) {
                                HomeCard(
                                    title: "My Catches",
                                    subtitle: "Log catches and track personal records.",
                                    imageName: "mycatches"
                                )
                            }
                        }
                        .padding(.top, 6)
                    }
                    .padding()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeCard: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        HStack(spacing: 14) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .shadow(radius: 3)
    }
}

#Preview {
    HomeView()
}
