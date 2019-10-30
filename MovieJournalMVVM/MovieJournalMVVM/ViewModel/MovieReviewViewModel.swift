//
//  MovieReviewViewModel.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 9/2/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import Foundation

//created a view model which is read only to use for the list
struct MovieReviewListViewModel {
    var movieReviews: [Review]
    
    init(movieReviews: [MovieReview]) {
        self.movieReviews = movieReviews.map { review in Review(movieReview: review, title: review.title, review: review.review) }
    }
    
    //substructure with reviews and hand each one back
    struct Review {
        private(set) var movieReview: MovieReview
        private(set) var title: String
        private(set) var review: String
    }
}


//created a view model with a mutable title and review to use for the details
struct EntryDetailViewViewModel {
    var title: String { didSet { self.save() }}
    var review: String { didSet { self.save() }}
    var movieReview: MovieReview
    
    init(movieReview: MovieReview) {
        self.title = movieReview.title
        self.review = movieReview.review
        self.movieReview = movieReview
    }
    
    init(movieReview: MovieReviewListViewModel.Review) {
        self.title = movieReview.title
        self.review = movieReview.review
        self.movieReview = movieReview.movieReview
    }
    
    
    //inject a store into VM
    //need to save to the store...not going to be able to reference back to it (structs/value types)
    func save() {
        Store.shared.update(entry: self.movieReview, with: self.title, review: self.review)
    }
}


//One view model per view controller
//ToDo- Create a view model for MovieReviewListViewController
//ToDo- Create a view model for EntryDetailViewController

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


//import Foundation
//
//struct MovieReviewViewModel {
//    var title: String
//    var review: String
//    var movieReview: MovieReview
//
//    init(movieReview: MovieReview){
//        self.title = movieReview.title
//        self.review = movieReview.review
//        self.movieReview = movieReview
//    }
//}
//
////struct MovieReviewListViewModel {
////    let movieReviews: [MovieReview]
////}
////
////extension MovieReviewListViewModel {
////    var numberOfSections: Int {
////        return 1
////    }
////
////    func numberOfRowsInSection(_ section: Int) -> Int {
////        return self.movieReviews.count
////    }
////
////    func movieReviewAtIndex(_ index: Int) -> MovieReviewViewModel {
////        let movieReview = self.movieReviews[index]
////        return MovieReviewViewModel(movieReview)
////    }
////}
////
////
////struct MovieReviewViewModel {
////    private let movieReview: MovieReview
////}
////
////
////extension MovieReviewViewModel {
////    init(_ movieReview: MovieReview){
////        self.movieReview = movieReview
////    }
////}
////
//////What about UUID?  It isn't part of the view...
////extension MovieReviewViewModel {
////    var title: String {
////        return self.movieReview.title
////    }
////    var review: String {
////        return self.movieReview.review
////    }
////}
