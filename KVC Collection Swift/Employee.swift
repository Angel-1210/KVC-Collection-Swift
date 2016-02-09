//
//  Employee.swift
//  KVC Collection Swift
//
//  Created by Dharmesh on 09/02/16.
//  Copyright © 2016 Dharmesh. All rights reserved.
//

import UIKit
import Foundation

class Employee : NSObject {
    
     var firstName : NSString?
     var lastName : NSString?
     var joiningDate : NSDate?
     var releasedDate : NSDate?
    
    deinit {
        
    }
    
    init(firstName : NSString?, lastName : NSString?, joiningDate : NSDate?, releasedDate : NSDate? ) {
        
        self.firstName = firstName;
        self.lastName = lastName;
        self.joiningDate = joiningDate;
        self.releasedDate = releasedDate;
    }
}
