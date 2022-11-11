//
//  Note.swift
//  Notes-MVVM-Demo
//
//  Created by Kiran Sarella on 11/11/22.
//

import Foundation

enum Group: Int, Comparable {
    static func < (lhs: Group, rhs: Group) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
    case green
    case yellow
    case orange
    case blue
}

struct Note: Identifiable {
    
    var id: UUID
    var name: String
    var group: Group
}
