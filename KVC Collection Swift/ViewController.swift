//
//  ViewController.swift
//  KVC Collection Swift
//
//  Created by Dharmesh on 05/02/16.
//  Copyright © 2016 Dharmesh. All rights reserved.
//

import UIKit

struct Static {
    static var MyObservationContext: Void
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let person = Person(firstName: "Dharmesh", lastName: "Avaiya", age: 23);

        let person = Person(firstName: "i am Old", lastName: "old", age: 23);

        person.firstName = "I am New"
        
        
        let eDharmesh = Employee(firstName: "eDharmesh", lastName: "H", joiningDate: NSDate(), releasedDate: NSDate())

        let eTejas = Employee(firstName: "eTejas", lastName: "K", joiningDate: NSDate(), releasedDate: NSDate())

        let projectOne = Project(projectName: "projectOne", projectStartAt: NSDate(), projectEndAt: NSDate(), projectEmployees: [eDharmesh, eTejas]);
        
        let eExtraResource = Employee(firstName: "eExtra", lastName: "L", joiningDate: NSDate(), releasedDate: NSDate())
        
        let observationOnEmployees = Observer(project: projectOne, employee: eExtraResource)
        
        projectOne.projectName = "Test"
        
        observationOnEmployees.addEmployee(eExtraResource);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


