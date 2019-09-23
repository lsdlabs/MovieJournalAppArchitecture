//
//  MovieReviewViewModel.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 9/2/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import Foundation

struct MovieReviewViewModel {
    var title: String
    var review: String
    var movieReview: MovieReview

    init(movieReview: MovieReview){
        self.title = movieReview.title
        self.review = movieReview.review
        self.movieReview = movieReview
    }
}

//struct MovieReviewListViewModel {
//    let movieReviews: [MovieReview]
//}
//
//extension MovieReviewListViewModel {
//    var numberOfSections: Int {
//        return 1
//    }
//
//    func numberOfRowsInSection(_ section: Int) -> Int {
//        return self.movieReviews.count
//    }
//
//    func movieReviewAtIndex(_ index: Int) -> MovieReviewViewModel {
//        let movieReview = self.movieReviews[index]
//        return MovieReviewViewModel(movieReview)
//    }
//}
//
//
//struct MovieReviewViewModel {
//    private let movieReview: MovieReview
//}
//
//
//extension MovieReviewViewModel {
//    init(_ movieReview: MovieReview){
//        self.movieReview = movieReview
//    }
//}
//
////What about UUID?  It isn't part of the view...
//extension MovieReviewViewModel {
//    var title: String {
//        return self.movieReview.title
//    }
//    var review: String {
//        return self.movieReview.review
//    }
//}
