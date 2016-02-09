//
//  Person.swift
//  KVC Collection Swift
//
//  Created by Dharmesh on 05/02/16.
//  Copyright © 2016 Dharmesh. All rights reserved.
//

import Foundation

class Person: NSObject {

    var firstName : NSString!
    var lastName : NSString!
    var age : NSInteger!
    
    override init() {
        
    }
    
    init(firstName : NSString!, lastName : NSString!, age : NSInteger!) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
    }
    
}
