//
//  AboutThisApp.swift
//  Eagle Transport
//
//  Created by Frank Scagluso Jr. on 3/15/22.
//

import SwiftUI

struct AboutThisApp: View {
    var body: some View {
        VStack {
        Text("About This App")
            .font(.title)
        Text("")
    Text("Terms of Services\nPrivacy Policy\n")
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
        Text("Rate this app")
            .foregroundColor(Color.orange)
            
    VStack {
        Text("\nEagleTransport App \n© Frank Scagluso 2022")
            .font(.footnote)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
        Text("")
        Text("Version .913 (beta)")
            .font(.footnote)
        .foregroundColor(Color.black)
    }
        
    }
    }
}

struct AboutThisApp_Previews: PreviewProvider {
    static var previews: some View {
        AboutThisApp()
    }
}
