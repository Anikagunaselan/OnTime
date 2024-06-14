//
//  UpdatedTimerOnTime.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//


//
// ContentView.swift
// 5MinuteTimer
//
// Created by scholar on 06/13/2024.
//
import SwiftUI
struct UpdatedTimerOnTime: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
  var body: some View {
    ZStack{
      Color(red: 254/255, green: 250/255, blue: 224/255)
        .ignoresSafeArea()
      VStack {
        Text("\(vm.time)")
          .font(.system(size: 70, weight: .medium, design: .rounded))
          .foregroundColor(Color(red: 40/255, green: 54/255, blue: 24/255, opacity: 0.5))
          .alert("Timer done!", isPresented: $vm.showingAlert) {
            Button("Continue", role: .cancel) {
              // Code
            }
          }
          .padding()
          .frame(width: width)
          .background(.thinMaterial)
          .cornerRadius(20)
          .overlay(
            RoundedRectangle(cornerRadius: 20)
              .stroke(Color.gray, lineWidth: 4)
          )
        Slider(value: $vm.minutes, in: 1...10, step: 1)
          .padding()
          .disabled(vm.isActive)
          .animation(.easeInOut, value: vm.minutes)
          .frame(width: width)
        HStack(spacing:50) {
          Button("Start") {
            vm.start(minutes: vm.minutes)
          }
          .disabled(vm.isActive)
          Button("Reset", action: vm.reset)
            .tint(.red)
        }
        .frame(width: width)
      }
      .onReceive(timer) { _ in
        vm.updateCountdown()
      }
    }
  }
}
struct UpdatedTimerOnTime_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
