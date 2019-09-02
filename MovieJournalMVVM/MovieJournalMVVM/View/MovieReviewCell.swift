//
//  MovieReviewCell.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 9/2/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import UIKit

class MovieReviewCell: UITableViewCell {
    @IBOutlet var movieTitleLabel: UILabel!
    
    func setup(using review: MovieReview) {
        movieTitleLabel.text = review.title
    }
}
