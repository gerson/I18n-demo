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
    
    var currencyFormatter: NSNumberFormatter {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        return formatter
    }
    
    var dateFormatter: NSDateFormatter {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .MediumStyle
        return formatter
    }
    
    
    private func populateValues() {
        textLabel.text = NSLocalizedString("HELLO_WORLD", comment: "Hello world")
        currencyLabel.text = currencyFormatter.stringFromNumber(10000)
        dateLabel.text = dateFormatter.stringFromDate(NSDate())
        imageView.image = UIImage(named: "flag")
    }
    
}
