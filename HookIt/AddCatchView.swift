//
//  AddCatchView.swift
//  HookIt
//
//  Created by Dionny Dinza on 6/29/26.
//

import SwiftUI

struct AddCatchView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var catchManager: CatchManager
    
    @State private var speciesName = ""
    @State private var length = ""
    @State private var weight = ""
    @State private var location = ""
    @State private var notes = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Catch Information") {
                    TextField("Species", text: $speciesName)
                    TextField("Length", text: $length)
                    TextField("Weight", text: $weight)
                    TextField("Location", text: $location)
                }
                
                Section("Notes") {
                    TextField("Notes", text: $notes, axis: .vertical)
                }
            }
            .navigationTitle("Add Catch")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let newCatch = CatchRecord(
                            speciesName: speciesName,
                            length: length,
                            weight: weight,
                            location: location,
                            date: Date(),
                            notes: notes
                        )
                        
                        catchManager.addCatch(newCatch)
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddCatchView()
        .environmentObject(CatchManager())
}
