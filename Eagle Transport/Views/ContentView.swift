//
//  ContentView.swift
//  Side View Demo
//
//  Created by Frank Scagluso Jr. on 1/23/22.
//

import SwiftUI
import WebKit
struct ContentView: View {
    
    private let urlNewton: String = "https://bc.transloc.com/m/route/4005602"
    private let urlCommAve: String = "https://bc.transloc.com/m/route/4005574"
    private let urlGreenLine: String = "https://www.mbta.com/schedules/Green-B/line?schedule_direction%5Bdirection_id%5D=0#direction-name"
    @State private var showWebView = false
    @State var offs = 0
    
    // MARK: Properties
    
    @State private var showMenu: Bool = false
    
    func offsetSetVal() {
        if (showMenu == true) {
        offs = -30
        }
        if (showMenu == false) {
            offs = 0
            
        }
    }
    
    var body: some View {
    // MARK: View Body
        NavigationView {
            
        ZStack {
                
            Color.white.ignoresSafeArea(.all, edges: .all)
            
            VStack {
            
                TabView {
                    WebView(url: URL(string: urlNewton)!).cornerRadius(10)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .tabItem {
                            Image(systemName: "bus.fill")
                            Text("Newton Bus")
                    }
                    WebView(url: URL(string: urlCommAve)!).cornerRadius(10)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .tabItem {
                            Image(systemName: "bus")
                            Text("Comm Ave")
                }
                    WebView(url: URL(string: urlGreenLine)!).cornerRadius(10)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .tabItem {
                            Image(systemName: "tram.fill")
                            Text("Green Line")
                }
                }
            }
            
            GeometryReader { _ in
                
                HStack {
                
                SideMenuView()
                        .offset(CGSize(width: offs, height: 0))
                    .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                    .animation(.easeInOut(duration:0.3), value: showMenu)
                    
                Spacer()
                    }
                }
            .background(Color.black.opacity(showMenu ? 0.5 : 0))
            }
            
        .navigationTitle("EagleTransport")
        .navigationBarTitleDisplayMode(.inline) // optional
            
        .toolbar {
            
            Button {
                
                self.showMenu.toggle()
                offsetSetVal()
            } label: {
                
                if showMenu {
            
            Image(systemName: "xmark")
                .font(.title) // made button bigger
                .foregroundColor(.red) // made it red
                } else {
                Image(systemName: "line.3.horizontal")
                    .font(.title) // made button bigger
                    .foregroundColor(.red) // made it red
                }
                }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)

    }
}
