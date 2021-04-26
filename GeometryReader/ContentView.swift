//
//  ContentView.swift
//  GeometryReader
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack  {
        
            GeometryReader { proxy in
                
                Text("Parent's width: \(proxy.size.width), height: \(proxy.size.height)")
                    .border(Color.black)
                    // In GeometryReader, you should arrange controls manually
                    .position(CGPoint(x: proxy.size.width / 2, y: proxy.size.height / 2))
                
                Rectangle()
                    .stroke()
                    .foregroundColor(.red)
                    .position(CGPoint(x: proxy.size.width / 2, y: proxy.size.height / 2))
            }
        }
        .frame(width: 300, height: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
