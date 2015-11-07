//
//  DetailViewController.swift
//  SegueSubclassTest
//
//  Created by BJ Miller on 11/7/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    // dependency; passed in and will never be nil after being set
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
    }


}
