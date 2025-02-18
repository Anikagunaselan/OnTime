//
//  OTContentView.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct OTContentView: View
{
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View
    {
        NavigationStack {
            
            
            VStack(spacing: 1)
            {
                
                DateScrollerView()
                    .environmentObject(dateHolder)
                    .padding()
                dayOfWeekStack
                calendarGrid
                
            }
            .background(Color(red: 254/255, green: 250/255, blue: 224/255))
        }
    }
        var dayOfWeekStack: some View
        {
            HStack(spacing: 1)
            {
                Text("Sun").dayOfWeek()
                Text("Mon").dayOfWeek()
                Text("Tue").dayOfWeek()
                Text("Wed").dayOfWeek()
                Text("Thu").dayOfWeek()
                Text("Fri").dayOfWeek()
                Text("Sat").dayOfWeek()
            }
        }
        
        var calendarGrid: some View
        {
            VStack(spacing: 1)
            {
                let daysInMonth = CalendarHelper().daysInMonth(dateHolder.date)
                let firstDayOfMonth = CalendarHelper().firstOfMonth(dateHolder.date)
                let startingSpaces = CalendarHelper().weekDay(firstDayOfMonth)
                let prevMonth = CalendarHelper().minusMonth(dateHolder.date)
                let daysInPrevMonth = CalendarHelper().daysInMonth(prevMonth)
                
                ForEach(0..<6)
                {
                    row in
                    HStack(spacing: 1)
                    {
                        ForEach(1..<8)
                        {
                            column in
                            let count = column + (row * 7)
                            CalendarCell(count: count, startingSpaces:startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: daysInPrevMonth)
                                .environmentObject(dateHolder)
                            
                        }
                    }
                }
            }
            .frame(maxHeight: .infinity)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OTContentView()
    }
}


extension Text
{
    func dayOfWeek() -> some View
    {
        self.frame(maxWidth: .infinity)
            .padding(.top, 1)
            .lineLimit(1)
    }
}
