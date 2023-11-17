//
//  NotifView2.swift
//  Eagle Transport
//
//  Created by Frank Scagluso Jr. on 3/15/22.
//

import SwiftUI

struct NotifView2: View {
    
    var body: some View {
        
        //var toggz = false
        VStack {
            Text("Newton Bus")
        VStack {
            HStack {
                Spacer()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("About to Arrive")
                    .foregroundColor(.white)

            }
                .colorInvert()
                Spacer()
                
            }
            HStack {
                Spacer()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Arrived at Stop")
                    .foregroundColor(.white)

            }
            .colorInvert()
             Spacer()
            }
            HStack {
                Spacer()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Departing")
                    .foregroundColor(.white)

            }
            .colorInvert()
            Spacer()
            }
        }
            Text("Comm Ave Bus")
            VStack {
                HStack {
                    Spacer()
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("About to Arrive")
                        .foregroundColor(.white)

                }
                    .colorInvert()
                    Spacer()
                    
                }
                HStack {
                    Spacer()
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Arrived at Stop")
                        .foregroundColor(.white)

                }
                .colorInvert()
                 Spacer()
                }
                HStack {
                    Spacer()
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Departing")
                        .foregroundColor(.white)

                }
                .colorInvert()
                Spacer()
                }
            
        }
    }
}
}

struct NotifView2_Previews: PreviewProvider {
    static var previews: some View {
        NotifView2()
    }
}
