//
//  LocalStorage.swift
//  Notes-MVVM-Demo
//
//  Created by Kiran Sarella on 11/11/22.
//

import Foundation

class LocalStorage {
    
    func getNotes() -> [Note] {
        
        let notes = [
            Note(id: UUID(), name: "Note 1", group: .green),
            Note(id: UUID(), name: "Note 2", group: .orange),
            Note(id: UUID(), name: "Note 3", group: .blue),
            Note(id: UUID(), name: "Note 4", group: .green),
        ]
        
        return notes
    }
    
}
