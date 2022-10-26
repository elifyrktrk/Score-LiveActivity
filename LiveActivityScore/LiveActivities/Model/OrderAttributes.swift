//
//  OrderAttributes.swift
//  LiveActivities
//
//  Created by Elif Yürektürk on 13.09.2022.
//

import SwiftUI
import ActivityKit
 
struct OrderAttributes: ActivityAttributes {
    struct ContentState: Codable, Hashable{
        
        var estimatedDeliveryTime: Date
        var teamAScore = "1"
        var teamBScore = "2"
        var text = "İkinci yarı başladı"
    }
    
   
}
