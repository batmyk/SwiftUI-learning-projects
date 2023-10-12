//
//  TextGradient.swift
//  SwiftUI Udemy
//
//  Created by Mayank Neema on 12/10/23.
//

import SwiftUI

struct TextGradient: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 30))
                .fontWeight(.black)
                .padding()
                .foregroundStyle(.teal.gradient)
            
            Text("Mayank")
                .font(.system(size: 50, weight: .heavy))
                .foregroundStyle(
                    LinearGradient(colors: [.pink,.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        }
        
    }
}

struct TextGradient_Previews: PreviewProvider {
    static var previews: some View {
        TextGradient()
    }
}
