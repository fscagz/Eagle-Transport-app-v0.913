//
//  NotifView.swift
//  Eagle Transport
//
//  Created by Frank Scagluso Jr. on 2/19/22.
//

import SwiftUI

struct NotifView: View {
    var body: some View {
        
        //var toggz = false
        
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

struct NotifView_Previews: PreviewProvider {
    static var previews: some View {
        NotifView()
    }
}
