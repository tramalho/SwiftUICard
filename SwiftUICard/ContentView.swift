//
//  ContentView.swift
//  SwiftUICard
//
//  Created by Thiago Antonio Ramalho on 07/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea()
            
            VStack {
                Image("tolkien")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210, height: 300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("J.R.R. Tolkien")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                HStack {
                    Image(systemName: "text.book.closed")
                        .foregroundColor(.white)
                    Text("Writer")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.white)
                }
                
                Divider()
                
                InfoView(imageName: "phone.fill", text: "+44 (260) 749-1162")
                InfoView(imageName: "envelope.fill", text: "mage@middleearth.uk")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


