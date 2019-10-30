//
//  MovieReviewCell.swift
//  MovieJournalMVC
//
//  Created by Lauren Small on 3/12/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//


import UIKit

//Update to take a MovieReviewListViewModel.Review
class MovieReviewCell: UITableViewCell {
    @IBOutlet var movieTitleLabel: UILabel!
    
    func setup(using review: MovieReviewListViewModel.Review) {
        movieTitleLabel.text = review.title
    }
}


//import UIKit
//
//class MovieReviewCell: UITableViewCell {
//    @IBOutlet var movieTitleLabel: UILabel!
//
//    func setup(using review: MovieReview) {
//        movieTitleLabel.text = review.title
//    }
//}
