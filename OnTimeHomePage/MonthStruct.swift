//
//  MonthStruct.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//

import Foundation
import SwiftUI


struct MonthStruct
{
    var monthType: MonthType
    var dayInt : Int
    func day() -> String
    {
        return String(dayInt)
    }
}

enum MonthType
{
    case Previous
    case Current
    case Next
}

