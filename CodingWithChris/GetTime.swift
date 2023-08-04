//
//  GetTime.swift
//  CodingWithChris
//
//  Created by Brett Moxey on 4/8/2023.
//

import Foundation

func GetTime() -> Double {
    let myDate = Date()
    let cal = Calendar.current
    let min = cal.component(.second, from: myDate)
    return(Double(min)/60.0)
}
