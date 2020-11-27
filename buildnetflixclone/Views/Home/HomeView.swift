//
//  HomeView.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/25/20.
//

import SwiftUI

struct HomeView: View {
    
    var vm:HomeVM = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators:false) {
                //main vstack
                LazyVStack {
                    ForEach(vm.allCategories, id:\.self ){ category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false){
                                LazyHStack{
                                    ForEach(vm.getMovies(forCategory: category)){movie in
                                        StandardHomeView(movie: movie)
                                            .frame(width:100, height:200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
