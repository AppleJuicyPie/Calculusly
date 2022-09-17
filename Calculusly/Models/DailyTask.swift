//
//  DailyTask.swift
//  Calculusly
//
//  Created by Donovan Simpson on 9/15/22.
//

import Foundation

struct DailyTask: Identifiable {
    let id: UUID
    var task: String
    var notes: String?
    var isCompleted: Bool
    
    init(id: UUID = UUID(), task: String, notes: String? = nil, isCompleted: Bool) {
        self.id = id
        self.task = task
        self.notes = notes
        self.isCompleted = isCompleted
    }
}

extension DailyTask {
    static let sampleData: [DailyTask] = [
        DailyTask(task: "Do your homework", notes: "Needs to be finished by 4th period", isCompleted: false),
        DailyTask(task: "Get uniform", notes: "Need some nice shoes", isCompleted: false),
        DailyTask(task: "Ask project partner for stuff", isCompleted: false)
    ]
}
