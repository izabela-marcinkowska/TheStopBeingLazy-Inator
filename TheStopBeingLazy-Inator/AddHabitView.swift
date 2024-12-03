//
//  AddHabitView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-29.
//

import SwiftUI
import SwiftData

struct AddHabitView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @State private var name = ""
    @State private var details = ""
    
    var body: some View {
        Form {
            TextField("Habit Name", text: $name)
            TextField("Description", text: $details)
            
            Button("Add Habit") {
                let newHabit = Habit(name: name, details: details)
                modelContext.insert(newHabit)
                dismiss()
            }
        }
    }
}

#Preview {
    AddHabitView()
}
