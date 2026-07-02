//
//  MyCatcheView.swift
//  HookIt
//
//  Created by Dionny Dinza on 6/26/26.
//

import SwiftUI

struct MyCatchesView: View {
    @EnvironmentObject var catchManager: CatchManager
    @State private var showingAddCatch = false
    
    var longestCatch: CatchRecord? {
        catchManager.catches.max {
            extractNumber(from: $0.length) < extractNumber(from: $1.length)
        }
    }
    
    var heaviestCatch: CatchRecord? {
        catchManager.catches.max {
            extractNumber(from: $0.weight) < extractNumber(from: $1.weight)
        }
    }
    
    var body: some View {
        List {
            if catchManager.catches.isEmpty {
                VStack(spacing: 12) {
                    Image(systemName: "figure.fishing")
                        .font(.system(size: 45))
                        .foregroundStyle(.blue)
                    
                    Text("No Catches Yet")
                        .font(.headline)
                    
                    Text("Tap + to log your first catch.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding()
            } else {
                Section("🏆 Personal Records") {
                    if let longestCatch {
                        Text("Longest Catch: \(longestCatch.speciesName) — \(longestCatch.length)")
                    }
                    
                    if let heaviestCatch {
                        Text("Heaviest Catch: \(heaviestCatch.speciesName) — \(heaviestCatch.weight)")
                    }
                    
                    Text("Total Catches: \(catchManager.catches.count)")
                }
                
                Section("Saved Catches") {
                    ForEach(catchManager.catches) { catchRecord in
                        VStack(alignment: .leading, spacing: 6) {
                            Text(catchRecord.speciesName)
                                .font(.headline)
                            
                            Text("\(catchRecord.length) • \(catchRecord.weight) • \(catchRecord.location)")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                            
                            if !catchRecord.notes.isEmpty {
                                Text(catchRecord.notes)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                                    .lineLimit(2)
                            }
                            
                            Text(catchRecord.date, style: .date)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.vertical, 6)
                    }
                    .onDelete(perform: catchManager.deleteCatch)
                }
            }
        }
        .navigationTitle("My Catches")
        .toolbar {
            Button {
                showingAddCatch = true
            } label: {
                Image(systemName: "plus")
            }
        }
        .sheet(isPresented: $showingAddCatch) {
            AddCatchView()
                .environmentObject(catchManager)
        }
    }
    
    private func extractNumber(from text: String) -> Double {
        let filtered = text.filter { $0.isNumber || $0 == "." }
        return Double(filtered) ?? 0
    }
}

#Preview {
    NavigationStack {
        MyCatchesView()
            .environmentObject(CatchManager())
    }
}
