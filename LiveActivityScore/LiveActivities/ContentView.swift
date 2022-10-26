//
//  ContentView.swift
//  LiveActivities
//
//  Created by Elif Yürektürk on 13.09.2022.
//

import SwiftUI
import WidgetKit
import ActivityKit

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Button("Start Activiy"){
                    addLiveActivity()
                }
            }
            .navigationTitle("Live Activities")
            .padding(15)
        }
    }
    func addLiveActivity(){
        let orderAttributes = OrderAttributes()
        let initialContentState = OrderAttributes.ContentState(estimatedDeliveryTime: Date().addingTimeInterval(15 * 60))
        
        do{
            let activity = try Activity<OrderAttributes>.request(attributes: orderAttributes, contentState: initialContentState,pushType: nil)
            print("Activity added succesfully. id: \(activity.id) ")
        }catch{
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
