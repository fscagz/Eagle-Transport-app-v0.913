//
//  SideMenuView.swift
//  Side View Demo
//
//  Created by Frank Scagluso Jr. on 1/23/22.
//

import SwiftUI
import WebKit


struct SideMenuView: View {
    
    var arraya = ["Element 1", "Element 2", "Element 3", "Element 4", "Element 5"]
    var dummy = 4
    @State var muffinMan = false
    var body: some View {
        
        VStack {
        
            
        Text("Settings")
                .font(.title)
                .foregroundColor(.white)
                
            
        Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                
            
        // MARK: - Content
            VStack {
                HStack {
                NavigationView {
                    
                    List() {
                        
                        NavigationLink {
                            NotifView2()
                        } label: {
                            Text("Upper Campus")
                        }
                        NavigationLink {
                            NotifView2()
                        } label: {
                            Text("Robsham Theater")
                        }
                        NavigationLink {
                            NotifView2()
                        } label: {
                            Text("Conte Forum")
                        }
                        NavigationLink {
                            NotifView()
                        } label: {
                            Text("2150 Commonwealth Ave")
                                
                        }
                        NavigationLink {
                            NotifView()
                        } label: {
                            Text("Newton Campus")
                        }
                        NavigationLink {
                            NotifView()
                        } label: {
                            Text("MBTA Green Line")
                        }
                        NavigationLink {
                            AboutThisApp()
                        } label: {
                            Text("About This App")
                        }
                    }.navigationBarTitle(Text("Notifications").foregroundColor(Color.white))
                    Spacer()
                }
                .frame(width: 375, height: 415.0)
                .colorInvert()
                //HStack {
            /*Text("Notifications (beta)")
                .foregroundColor(Color.red)
                    Image(systemName: "arrow.forward.square")
                        .foregroundColor(Color.white)
                }*/
            //  Spacer()
                }
            Text(" ")
                HStack {
                    Toggle("Toggle Dark Mode", isOn: $muffinMan)
                        .foregroundColor(Color.white)
                        .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                    if muffinMan {
                        Text("")
                }
                }
            //Spacer()
                Text("")
            }
        Spacer()
        }
        .padding(32) // free to adjust
        .background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
