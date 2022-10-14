//
//  DailyTasksView.swift
//  Calculusly
//
//  Created by Donovan Simpson on 9/17/22.
//

import SwiftUI

struct DailyTasksView: View {
    @State var dailyTasks: [DailyTask]
    let colors = Colors()
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                ForEach(dailyTasks) { dailyTask in
                    DailyTaskView(dailyTask: dailyTask, checked: .constant(true))
                        
                }
            }
            .frame(height: 350, alignment: .center)
            .padding()
        }
    }
}

struct DailyTasksView_Previews: PreviewProvider {
    static var previews: some View {
        DailyTasksView(dailyTasks: DailyTask.sampleData)
    }
}
