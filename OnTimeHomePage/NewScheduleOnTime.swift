//
//  NewScheduleOnTime.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//



import SwiftUI
class ScheduleState: ObservableObject {
  @Published var sundayClicked = false
  @Published var mondayClicked = false
  @Published var tuesdayClicked = false
  @Published var wednesdayClicked = false
  @Published var thursdayClicked = false
  @Published var fridayClicked = false
  @Published var saturdayClicked = false
  @Published var newScheduleName = ""
}
class ScheduleDeletion: ObservableObject {
  @Published var deleteScheduleClicked = false
}
struct NewScheduleOnTime: View {
  @State private var textTitle = "Name Schedule"
  @State var storedTitle = ""
  @ObservedObject var scheduleState = ScheduleState()
  @ObservedObject var scheduleDeletion = ScheduleDeletion()
  var body: some View {
    NavigationStack {
      ZStack {
        Color(red: 254/255, green: 250/255, blue: 224/255)
                  .ignoresSafeArea()
        VStack {
          Text("New Schedule")
            .font(.custom("Charter", fixedSize: 45))
            .fontWeight(.bold)
          HStack { Text("\(textTitle)")
              .font(.custom("Charter", fixedSize: 25))
              .underline()
            Spacer()
          }
          TextField("Title", text: $scheduleState.newScheduleName)
            .font(.custom("Charter", fixedSize: 30))
            .multilineTextAlignment(.leading)
            .font(.title)
            .border(Color.black, width:1.5)
          HStack {
            Text("Active Days")
              .font(.custom("Charter", fixedSize: 25))
              .underline()
            Spacer()
          }
          HStack {
            Spacer()
            Button("S") {
              scheduleState.sundayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
            Button("M") {
              scheduleState.mondayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
            Button("T") {
              scheduleState.tuesdayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
            Button("W") {
              scheduleState.wednesdayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
            Button("T") {
              scheduleState.thursdayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
            Button("F") {
              scheduleState.fridayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
            Button("S") {
              scheduleState.saturdayClicked.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.init(hue: 0.08, saturation: 0.67, brightness: 0.44))
            Spacer()
          }
          .padding()
          NavigationLink(destination: ViewAndEditScheduleOnTime().environmentObject(scheduleState)) {
            Text("Save Schedule")
          }
          .buttonStyle(.borderedProminent)
          .tint(.init(hue: 0.437, saturation: 0.314, brightness: 0.38))
        }
        .padding()
      }
    }
  }
}
#Preview {
    NewScheduleOnTime()
}
