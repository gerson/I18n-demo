//
//  ViewController.swift
//  I18n Demo
//
//  Created by Gerson Villanueva on 7/25/16.
//  Copyright © 2016 Gerson Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
    
    @IBOutlet var currencyLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateValues()
    }
    
    var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    
    fileprivate func populateValues() {
        textLabel.text = NSLocalizedString("HELLO_WORLD", comment: "Hello world")
        currencyLabel.text = currencyFormatter.string(from: 10000)
        dateLabel.text = dateFormatter.string(from: Date())
        imageView.image = UIImage(named: "flag")
    }
    
}
