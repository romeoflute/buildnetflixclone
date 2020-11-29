//
//  WhiteButton.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/27/20.
//

import SwiftUI

struct PlayButton: View {
    var text:String
    var imageName:String
    var backgroundColor:Color = .white
    var action:() -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            HStack{
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(text: "Play", imageName: "play.fill"){
                
            }
        }
    }
}
