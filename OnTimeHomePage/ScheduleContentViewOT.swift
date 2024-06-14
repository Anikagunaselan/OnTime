//
//  ScheduleContentViewOT.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct ScheduleContentViewOT: View {
    
    @StateObject var scheduleState = ScheduleState()
    @StateObject var deleteScheduleClicked = ScheduleDeletion()
    
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color(red: 254/255, green: 250/255, blue: 224/255)
                                   .ignoresSafeArea()
                VStack {
                    Text("Schedules")
                        .fontWeight(.bold)
                        .font(.custom("Charter", fixedSize: 45))
                    Spacer()
                    NavigationLink(destination: NewScheduleOnTime()) {
                        Text("Create a New Schedule")
                            .frame(width: 225, height: 65, alignment: .center)
                            .font(.custom("Charter", fixedSize: 20))
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.init(hue: 0.437, saturation: 0.314, brightness: 0.38))
                    Spacer()
                    NavigationLink(destination: ViewAndEditScheduleOnTime().environmentObject(scheduleState)) {
                        Text("View & Edit Existing Schedules")
                            .frame(width: 225, height: 65, alignment: .center)
                            .font(.custom("Charter", fixedSize: 20))
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.init(hue: 0.437, saturation: 0.314, brightness: 0.38))
                    Spacer()
                            }
            }
            
        }
    }
}

#Preview {
    ScheduleContentViewOT()
}







