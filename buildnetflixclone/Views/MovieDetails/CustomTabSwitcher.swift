//
//  CustomTabSwitcher.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/29/20.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs:[CustomTab]
    
    func widthForTab(_ tab:CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack{
            //custom tab picker
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //read bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height:6)
                            //button
                            Button(action: {
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
