//
//  ViewController.swift
//  SegueSubclassTest
//
//  Created by BJ Miller on 11/7/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var personArray: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person1 = Person(firstName: "Buzz", lastName: "Aldrin")
        let person2 = Person(firstName: "Dr", lastName: "Dre")
        personArray = [person1, person2]
        tableView.reloadData()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        segue.config(sender)
//        if segue.identifier == "showPerson" {
//            let selectedCell = sender as! UITableViewCell
//            let indexPath = tableView.indexPathForCell(selectedCell)!
//            let person = personArray[indexPath.row]
//            let segue = segue as! ShowPersonDetailSegue
//            segue.person = person
//        }
    }


}


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let person = personArray[indexPath.row]
        cell.textLabel?.text = person.firstName
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let person = personArray[indexPath.row]
        
        let segue = ShowPersonDetailSegue(person: person)
        segue.perform()
    }
*/
}