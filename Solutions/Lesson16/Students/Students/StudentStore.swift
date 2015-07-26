//
//  StudentStore.swift
//  Students
//
//  Created by LOANER on 7/26/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import CoreData

class StudentStore {
    // Singleton shared instance
    static let sharedInstance = StudentStore()
    
    // All Students saved
    var students = [Student]()
    
    private var context: NSManagedObjectContext
    
    init() {
        // Get a reference to the appdelegate
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // Save a reference to the managedObjectContext
        context = delegate.managedObjectContext!
        
        // Grab the students from the stack
        students = getAllStudents()
    }
    
    func getAllStudents() -> [Student] {
        // Instantiate a fetch request
        let fetchRequest = NSFetchRequest(entityName: "Student")
        
        // Get an error ready in case we need one
        var error: NSError?
        
        // Execute the fetch request
        let results = context.executeFetchRequest(fetchRequest, error: &error) as! [Student]
        
        if error != nil {
            println("Could not get students")
        }
        
        return results
    }
    
    func addStudentWithName(name: String, location: String) {
        // Create a new student
        let newStudent = NSEntityDescription.insertNewObjectForEntityForName("Student",
            inManagedObjectContext: context) as! Student
        
        newStudent.name = name
        newStudent.location = location
        
        context.save(nil)
        
        students.append(newStudent)
    }
    
    func deleteStudentAtIndex(index: Int) {
        // Get the NSManagedObject that we want to delete
        let studentToDelete = students[index]
        
        // Delete it from the context
        context.deleteObject(studentToDelete)
        
        // Delete it from the array so we keep in sync
        students.removeAtIndex(index)
        
        // Save the context
        context.save(nil)
    }
    
}