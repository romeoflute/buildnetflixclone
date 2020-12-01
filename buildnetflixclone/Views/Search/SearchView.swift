//
//  SearchView.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 12/1/20.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var vm:SearchVM = SearchVM()
    @State private var searchText = ""
    var body: some View {
        let searchTextBinding = Binding{
            return searchText
        }set:{
            searchText = $0
            vm.updateSearchText(with: $0)
        }
        return ZStack {
            Color.black
            edgesIgnoringSafeArea(.all)
            VStack{
                SearchBar(text: searchTextBinding, isLoading: $vm.isLoading)
                    .padding()
                ScrollView{
                    if vm.isShowingPopularMovies {
                        Text("Popular Movies")
                    }
                    if vm.viewState == .empty{
                        Text("Empty")
                    }else if vm.viewState == .ready && !vm.isShowingPopularMovies {
                        Text("Ready")
                    }
                }
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
