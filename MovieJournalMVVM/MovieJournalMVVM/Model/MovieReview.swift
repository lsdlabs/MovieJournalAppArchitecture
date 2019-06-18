//
//  MovieReview.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 6/18/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import Foundation

struct MovieReview: Codable {
    let id = UUID()
    var title: String
    var review: String
    
    init(title: String, review: String) {
        self.title = title
        self.review = review
    }
}

extension MovieReview: Equatable {}
