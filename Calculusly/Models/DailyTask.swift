//
//  DailyTask.swift
//  Calculusly
//
//  Created by Donovan Simpson on 9/15/22.
//

import Foundation

struct DailyTask {
    var task: String
    var notes: String?
    var isCompleted: Bool
}

extension DailyTask {
    static let sampleData: [DailyTask] = [
        DailyTask(task: "Do your homework", notes: "Needs to be finished by 4th period", isCompleted: false),
        DailyTask(task: "Get uniform", notes: "Need some nice shoes", isCompleted: false),
        DailyTask(task: "Ask project partner for stuff", isCompleted: false)
    ]
}
