//
//  CustomTabSwitcher.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/29/20.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    @Binding var showSeasonPicker:Bool
    @Binding var selectedSeason:Int
    var tabs:[CustomTab]
    var movie:Movie
    
    func widthForTab(_ tab:CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack{
            //custom tab picker
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:20){
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //read bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height:6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            //button
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height:30)
                        }
                    }
                }
            }
            
            switch currentTab {
            case .episodes:
                EpisodesView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                Text("Episodes")
            case .trailers:
                TrailerList(trailers:movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
            
            
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(showSeasonPicker:.constant(false), selectedSeason: .constant(1), tabs: [.episodes, .trailers, .more], movie: exampleMovie1)
        }
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
