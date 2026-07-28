//
//  HomeView.swift
//  HookIt
//
//  Created by Dionny Dinza on 6/24/26.
//

import SwiftUI
import UIKit

private struct QuickCatchPhoto: Identifiable {
    let id = UUID()
    let imageData: Data
}

struct HomeView: View {
    @EnvironmentObject var catchManager: CatchManager
    
    @State private var navigateToMyCatches = false
    @State private var shouldOpenMyCatchesAfterQuickCatch = false
    @State private var showingCamera = false
    @State private var quickCatchPhoto: QuickCatchPhoto?
    @State private var showingCameraUnavailableAlert = false
    @State private var showingIdentifyItAlert = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("homebackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.18)
                
                ScrollView {
                    VStack(spacing: 12) {
                        Image("hookitlogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius: 24,
                                    style: .continuous
                                )
                            )
                            .shadow(radius: 8)
                            .padding(.top, 20)
                            .padding(.bottom, -8)
                        
                        Text("HookIt")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text(
                            "Your personal fishing guide for species, bait, regulations, and catch tracking."
                        )
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.secondary)
                        .padding(.horizontal)
                        
                        Button {
                            openQuickCatchCamera()
                        } label: {
                            FeaturedHomeCard(
                                title: "Quick Catch",
                                subtitle: "Take a photo and immediately log your catch.",
                                imageName: "quickcatch"
                            )
                        }
                        .buttonStyle(.plain)
                        .padding(.top, 4)
                        
                        Button {
                            showingIdentifyItAlert = true
                        } label: {
                            FeaturedHomeCard(
                                title: "IdentifyIt",
                                subtitle: "Take a photo and identify your catch.",
                                imageName: "identifyit"
                            )
                        }
                        .buttonStyle(.plain)
                        
                        VStack(spacing: 10) {
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
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 24)
                }
            }
            .navigationTitle("Home")
            .fullScreenCover(isPresented: $showingCamera) {
                CameraPicker(
                    onImageCaptured: { imageData in
                        showingCamera = false
                        
                        DispatchQueue.main.asyncAfter(
                            deadline: .now() + 0.35
                        ) {
                            quickCatchPhoto = QuickCatchPhoto(
                                imageData: imageData
                            )
                        }
                    },
                    onCancel: {
                        showingCamera = false
                    }
                )
                .ignoresSafeArea()
            }
            .sheet(
                item: $quickCatchPhoto,
                onDismiss: {
                    guard shouldOpenMyCatchesAfterQuickCatch else {
                        return
                    }
                    
                    shouldOpenMyCatchesAfterQuickCatch = false
                    
                    DispatchQueue.main.async {
                        navigateToMyCatches = true
                    }
                }
            ) { photo in
                AddCatchView(
                    initialImageData: photo.imageData,
                    onCatchSaved: {
                        shouldOpenMyCatchesAfterQuickCatch = true
                    }
                )
                .environmentObject(catchManager)
            }
            .navigationDestination(
                isPresented: $navigateToMyCatches
            ) {
                MyCatchesView()
            }
            .alert(
                "Camera Unavailable",
                isPresented: $showingCameraUnavailableAlert
            ) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(
                    "Quick Catch requires a device with an available camera."
                )
            }
            .alert(
                "IdentifyIt",
                isPresented: $showingIdentifyItAlert
            ) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("Fish identification is coming soon.")
            }
        }
    }
    
    private func openQuickCatchCamera() {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            showingCameraUnavailableAlert = true
            return
        }
        
        showingCamera = true
    }
}

struct FeaturedHomeCard: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        HomeCardLayout(
            title: title,
            subtitle: subtitle,
            imageName: imageName,
            background: AnyShapeStyle(Color.blue.opacity(0.08))
        )
    }
}

struct HomeCard: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        HomeCardLayout(
            title: title,
            subtitle: subtitle,
            imageName: imageName,
            background: AnyShapeStyle(.ultraThinMaterial)
        )
    }
}

private struct HomeCardLayout: View {
    let title: String
    let subtitle: String
    let imageName: String
    let background: AnyShapeStyle
    
    var body: some View {
        HStack(spacing: 12) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 95, height: 72)
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 12,
                        style: .continuous
                    )
                )
                .clipped()
            
            VStack(alignment: .leading, spacing: 2) {
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
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(background)
        .clipShape(
            RoundedRectangle(
                cornerRadius: 18,
                style: .continuous
            )
        )
        .shadow(radius: 3)
    }
}

#Preview {
    HomeView()
        .environmentObject(CatchManager())
}
