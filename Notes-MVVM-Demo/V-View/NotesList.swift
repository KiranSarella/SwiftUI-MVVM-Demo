//
//  ContentView.swift
//  Notes-MVVM-Demo
//
//  Created by Kiran Sarella on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel = NotesListVM()
    
    var body: some View {
        
        NavigationStack {
            List(viewModel.notes) {
                Text($0.name)
                    .foregroundColor($0.group.getSwiftUIColor())
            }
            .navigationTitle("Notes")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Group {
    
    func getSwiftUIColor() -> Color {
        switch self {
        case .green:
            return Color.green
        case .yellow:
            return Color.yellow
        case .orange:
            return Color.orange
        case .blue:
            return Color.blue
        }
    }
}
