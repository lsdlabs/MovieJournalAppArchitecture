//
//  MovieReviewViewModel.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 6/19/19.
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
