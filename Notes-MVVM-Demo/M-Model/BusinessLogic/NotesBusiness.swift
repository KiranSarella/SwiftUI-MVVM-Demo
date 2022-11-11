//
//  NotesBusiness.swift
//  Notes-MVVM-Demo
//
//  Created by Kiran Sarella on 11/11/22.
//

import Foundation

class NotesBusiness {
    
    func getNotes() -> [Note] {
        
        // based on flags choose local or network
        let notes = LocalStorage().getNotes()
        
        // perform any post business operations
        // ..
        
        return notes
    }
    
   
}
