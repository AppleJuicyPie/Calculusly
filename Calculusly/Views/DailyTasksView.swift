//
//  DailyTasksView.swift
//  Calculusly
//
//  Created by Aiden Park on 9/17/22.
//

import SwiftUI

struct DailyTasksView: View {
    let dailyTasks: [DailyTask]
    let color = Colors()
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Text("DailyTasks")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .listRowBackground(color.primary)
                ForEach(dailyTasks) {
                    dailyTask in
                    DailyTaskView(dailyTask: dailyTask)
                        .listRowBackground(color.primary)
                }
            }
        }
    }
}

struct DailyTasksView_Previews: PreviewProvider {
    static var previews: some View {
        DailyTasksView(dailyTasks: DailyTask.sampleData)
    }
}
