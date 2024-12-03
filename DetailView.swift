//
//  DetailView.swift
//  TheStopBeingLazy-Inator
//
//  Created by Izabela Marcinkowska on 2024-11-29.
//

import SwiftUI
import SwiftData

struct DetailView: View {
    @Bindable var habit : Habit
    
    var body: some View {
        VStack {
            Spacer()
            Text(habit.details)
                .font(.title2)
                .italic()
            Spacer()
            Button {
                habit.didIt()
            } label: {
                Image(.achieved)
                    .resizable()
                    .frame(width: 220, height: 220)
                    .padding()
            }
            .padding(.trailing, 25)
            Text("Click to mark as checked.")
                .italic()
            Spacer()
            VStack {
                Text("Current Streak:")
                    .font(.title)
                Text(habit.count, format: .number)
                    .font(.largeTitle)
                    .padding()
            }
            Spacer()
        }
        .navigationTitle(habit.name)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Habit.self, configurations: config)
        
        let example = Habit(id: UUID(), name: "Example", details: "Example details")
        
        return DetailView(habit: example)
            .modelContainer(container)
    } catch {
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}
