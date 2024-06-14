//
//  View&EditScheduleOnTime.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//
import SwiftUI

struct ViewAndEditScheduleOnTime: View {
    
    @EnvironmentObject var scheduleState: ScheduleState
    
    //    @ObservedObject var scheduleState = ScheduleState()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 254/255, green: 250/255, blue: 224/255)
                    .ignoresSafeArea()
                VStack{
                    Text("\(scheduleState.newScheduleName)")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.custom("Charter", fixedSize: 45))
                        .padding()
                    HStack{
                        Spacer()
                        if scheduleState.sundayClicked{
                            Button("S") {
                            }
                        }
                        Spacer()
                        if scheduleState.mondayClicked{
                            Button("M") {
                            }
                        }
                        Spacer()
                        if scheduleState.tuesdayClicked{
                            Button("T") {
                            }
                        }
                        Spacer()
                        if scheduleState.wednesdayClicked{
                            Button("W") {
                            }
                        }
                        Spacer()
                        if scheduleState.thursdayClicked{
                            Button("T") {
                            }
                        }
                        Spacer()
                        if scheduleState.fridayClicked{
                            Button("F") {
                            }
                        }
                        Spacer()
                        if scheduleState.saturdayClicked{
                            Button("S") {
                            }
                        }
                        
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    ViewAndEditScheduleOnTime()
}
