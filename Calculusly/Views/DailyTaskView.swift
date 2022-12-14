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
    
    @Binding var checked: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Colors().primary)
            .overlay {
                HStack {
                    Image(systemName: checked ? "checkmark.square.fill" : "square")
                        .onTapGesture {
                            self.checked.toggle()
                        }
                    
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
            .background(RoundedRectangle(cornerRadius: 20)
                            .fill(Color(.darkGray))
                            .shadow(color: .black, radius: 4, x: 0, y: 4)
            )
    }
}

struct DailyTaskView_Previews: PreviewProvider {
    static var dailyTask = DailyTask.sampleData[0]
    static var previews: some View {
        DailyTaskView(dailyTask: dailyTask, checked: .constant(false))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
