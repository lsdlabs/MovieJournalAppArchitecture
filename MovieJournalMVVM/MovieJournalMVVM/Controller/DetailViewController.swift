//
//  DetailViewController.swift
//  MovieJournalMVVM
//
//  Created by Lauren Small on 6/18/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var titleTextField: UITextField!

    @IBAction func userTappedSave(_ sender: UIBarButtonItem) {
        if var detail: MovieReview = self.detailItem {
            if let title = self.titleTextField {
                detail.title = title.text!
            }
        }
        navigationController?.popToRootViewController(animated: true)

//        if var detail = detailItem {
//            if let title = titleTextField {
//                detail.title = title.text!
//            }
//        }
//        self.navigationController?.popToRootViewController(animated: true)
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: MovieReview = self.detailItem {
            if let title = self.titleTextField {
                title.text = detail.title
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
