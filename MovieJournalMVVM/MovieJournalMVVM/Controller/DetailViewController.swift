//
//  DetailViewController.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 6/18/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.title
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: MovieReview? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

