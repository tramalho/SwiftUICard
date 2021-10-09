//
//  InfoView.swift
//  SwiftUICard
//
//  Created by Thiago Antonio Ramalho on 09/10/21.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "text.book.closed", text: "character.book.closed")
            .previewLayout(.sizeThatFits)
    }
}
