//
//  AsyncImage.swift
//  SwiftUI Udemy
//
//  Created by Mayank Neema on 12/10/23.
//

import SwiftUI

extension Image {
    func imageModifiers() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifiers() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct AsyncImagee: View {
    
    private let imgUrl: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        //MARK: - 1. Basic
        // AsyncImage(url: URL(string: imgUrl)!)
        
        
        // MARK: - 2. Scale
//         AsyncImage(url: URL(string: imgUrl)!,scale: 3.0)
        
        // MARK: - 3. PlaceHolder
//        AsyncImage(url: URL(string: imgUrl)) { image in
//            image
//                .imageModifiers()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill").iconModifiers()
//        }
//        .padding(40)
        
        // MARK: - 4. Phase
        
//        AsyncImage(url:URL(string: imgUrl)) { phase in
//            if let image = phase.image {
//                image.imageModifiers()
//            }
//            else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifiers()
//            }
//            else {
//                Image(systemName: "photo.circle.fill").iconModifiers()
//            }
//
//        }
        
        // MARK: - 5. Animation
        
        AsyncImage(url: URL(string: imgUrl), transaction: Transaction(animation: .spring(response: 0.5,dampingFraction: 0.6,blendDuration: 0.25))) { phase in

            switch phase {
            case .success(let image):
                image.imageModifiers()
                    .transition(.scale)
            case.failure(_):
                Image(systemName: "ant.circle.fill").iconModifiers()
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifiers()
            @unknown default:
                ProgressView()
            }

        }
        .padding(40)

    }
}

struct AsyncImagee_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImagee()
    }
}
