//
//  Assignment.swift
//  Calculusly
//
//  Created by Donovan Simpson on 10/6/22.
//

import Foundation

struct Assignment: Identifiable {
    let id: UUID
    let name: String
    let dueDate: Date
    var notes: String?
    let schoolClass: SchoolClass
}

/* extension Assignment {
    static let sampleData: [Assignment] = [
        Assignment(id: UUID(), name: "Physics HW", dueDate: Date(), notes: nil, schoolClass: <#T##SchoolClass#>)
    ]
} */
