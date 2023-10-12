//
//  ContentView.swift
//  SwiftUI Udemy
//
//  Created by Mayank Neema on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Link("Google", destination: URL(string: "https://google.com")!)
                .buttonStyle(.borderless)
            
            Link("Call to Action", destination: URL(string: "1234567")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
            
            Link("Send An Email", destination: URL(string: "mailto:mayank15neema@icloud.com")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.pink)
                .controlSize(.large)
            
            Link("Mayank Neema", destination: URL(string: "https://mayankiOS.com")!)
                .buttonStyle(.plain)
                .padding()
                .border(.primary, width: 2)
            
            // Custom Link
            Link(destination: URL(string: "https://apple.com")!) {
             
                HStack(spacing:16) {
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background {
                    Capsule()
                        .fill(Color.green)
                }
            }
                 
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
