//
//  DailyTaskView.swift
//  Calculusly
//
//  Created by Donovan Simpson on 9/15/22.
//

import Foundation
import SwiftUI


struct DailyTaskView: View {
    let dailyTask: DailyTask
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(dailyTask.task)
                    .font(.headline)
                
                Spacer()
                    
                if let notes = dailyTask.notes {
                    Text(notes)
                        .font(.caption)
                        .lineLimit(1)
                }
            }
            Spacer()
            
            Image(systemName: "arrow.forward")
        }
        .padding()
        .edgesIgnoringSafeArea(.all)
    }
}

struct DailyTaskView_Previews: PreviewProvider {
    static var dailyTask = DailyTask.sampleData[0]
    static var previews: some View {
        DailyTaskView(dailyTask: dailyTask)
            .background(Colors().primary)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
