//
//  Project.swift
//  KVC Collection Swift
//
//  Created by Dharmesh on 09/02/16.
//  Copyright © 2016 Dharmesh. All rights reserved.
//

import UIKit
import Foundation

class Project : NSObject {
    
     var projectName : NSString?
     var projectStartAt :  NSDate?
     var projectEndedAt : NSDate?
    
     dynamic var projectEmployees : [Employee]?
    
    //------------------------------------------------------
    
    //MARK: Memory Management 
    
    deinit {
        
    }
    
    //------------------------------------------------------
    
    //MARK: Initialization
    
    init(projectName : NSString?, projectStartAt : NSDate?, projectEndAt : NSDate?, projectEmployees : [Employee] ) {
        
        self.projectName = projectName;
        self.projectStartAt = projectStartAt;
        self.projectEndedAt = projectEndAt;
        self.projectEmployees = projectEmployees
        
        super.init()
    }
    
    func addObject( employee : Employee) {
        self.projectEmployees?.append(employee)
    }
    
    func removeObject(employee : Employee) {
        self.projectEmployees?.removeLast()
    }
    
    //------------------------------------------------------
    
    //MARK: Class Member Methods
    
    override class func automaticallyNotifiesObserversForKey( key : String) -> Bool {
        
        if key == "projectEmployees" {
            return true;
        } else {
            return automaticallyNotifiesObserversForKey(key)
        }
    }
}
