//
//  NotesListVM.swift
//  Notes-MVVM-Demo
//
//  Created by Kiran Sarella on 11/11/22.
//

import Foundation

class NotesListVM {
    
    var notes = [Note]()
    
    init() {
        loadList()
    }
    
    func loadList() {
        
        // load data from model
        notes = NotesBusiness().getNotes()
        
        // perform presentation logic
        groupBySort()
    }
    
    // presentation logic
    func groupBySort() {
        
        notes.sort(by: { $0.group > $1.group })
    }
}
