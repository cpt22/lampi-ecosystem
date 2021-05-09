//
//  DoorbellView.swift
//  Lampi
//
//  Created by Prithik Karthikeyan on 5/8/21.
//

import Foundation
import SwiftUI
import Mixpanel



struct DoorbellView: View {
    @State private var wifiName: String = ""
    @State private var pass: String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                VStack {
                    Text("WIFI Setup")
                        .padding()
                    HStack {
                        Text("SSID:")
                            .padding()
                        TextField(
                            "Wifi Name",
                            text: $wifiName)
                            .disableAutocorrection(true)
                    }
                    HStack {
                        Text("Password:")
                            .padding()
                        SecureField(
                            "Password",
                            text: $pass)
                            .disableAutocorrection(true)
                    }
                    
                    Button(action: {}, label: {
                        Text("Save")
                    }).padding()
                    
                }
                VStack {
                    Text("Association Code")
                        .padding()
                    HStack {
                        Text("#######")
                        
                    }
                }
                
                Spacer()
            }
            .navigationBarTitle("Doorbell Setup")
        }
    }
}

struct DoorbellView_Preview: PreviewProvider{
    static var previews: some View{
        DoorbellView()
    }
}
