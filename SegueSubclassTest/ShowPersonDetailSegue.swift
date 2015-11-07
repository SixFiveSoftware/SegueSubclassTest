//
//  ShowPersonDetailSegue.swift
//  SegueSubclassTest
//
//  Created by BJ Miller on 11/7/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit

class ShowPersonDetailSegue: UIStoryboardSegue {

    var person: Person?
    
    override func perform() {
        let dest = destinationViewController as! DetailViewController
        dest.person = person
    }
    
    override func config(obj: AnyObject?) {
        let sender = obj as? UITableViewCell
        
    }
    
//    init(identifier: String?, source: UIViewController, destination: UIViewController) {
//        <#code#>
//    }
}


extension UIStoryboardSegue {
    func config(obj: AnyObject?) {
        
    }
}