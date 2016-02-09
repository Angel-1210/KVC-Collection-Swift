//
//  Observer.swift
//  KVC Collection Swift
//
//  Created by Dharmesh on 09/02/16.
//  Copyright © 2016 Dharmesh. All rights reserved.
//

import UIKit
import Foundation

//var contsantKeyObserver:Void
typealias KVOContext = UInt8
var contsantKeyObserver = KVOContext()

class Observer : NSObject {
    
     var project : Project
     var employee : Employee
    
    //------------------------------------------------------
    
    //MARK: Memory Management Method
    
    deinit {
        self.project .removeObserver(self, forKeyPath: "projectEmployees")
    }
    
    //------------------------------------------------------
    
    //MARK: Initialisation
    
    init( project : Project, employee : Employee) {

        self.project = project;
        self.employee = employee;
        
        super.init()
        
        let options = NSKeyValueObservingOptions([.New, .Old])
        self.project .addObserver(self, forKeyPath: "projectEmployees", options: options, context: &contsantKeyObserver)
    }
    
    //------------------------------------------------------
    
    //MARK: Observation Notification
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        
        if context == &contsantKeyObserver {
            print(change)            
        } else {
            super.observeValueForKeyPath( keyPath, ofObject: object, change: change, context: context);
        }
    }
    
    //------------------------------------------------------
    
    //MARK: Call Project add Employee Methods
    
    func addEmployee( employee : Employee) {

        self.project .addObject(employee)
    }
}
