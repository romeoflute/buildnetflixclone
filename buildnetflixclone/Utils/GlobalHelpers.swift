//
//  GlobalHelpers.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/25/20.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7]
)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travellers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show"
)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show"
)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone", thumbnailURL:
        URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "New Episode Coming Soon"
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show"
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now"
)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInf1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now"
)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInf1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Widen perished in an apocalyptic event.", season: 2, episode: 1)


extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

struct GlobalHelpers_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
