//
//  Person.swift
//  swift-people
//
//  Created by Flatiron School on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    private(set) var name: String
    var ageInYears: Int?
    private(set) var skills = [String]()
    var qualifiedTutor: Bool{
        if skills.count >= 4 {
        return true

        }
    return false
    }
    
    
    
    init(name: String, ageInYears: Int?){
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String){
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init(){ 
        self.init(name: "John Doe")
    }
    
    
    
    func celebrateBirthday() -> String {
        self.ageInYears? += 1
        let age = ageInYears?.ordinal()
        if age == nil{
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }else{
            return "HAPPY \(age)BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }
    
    func learnSkillBash()  {
        if !skills.contains("bash"){
        skills.append("bash")
        }
    }
    
    
    func learnSkillXcode(){
        if !skills.contains("Xcode"){
        skills.append("Xcode")
        }
    }
    
    
    func learnSkillObjectiveC(){
        if !skills.contains("Objective-C"){
        skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift(){
        if !skills.contains("Swift"){
        skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder(){
        if !skills.contains("Interface Builder"){
        skills.append("Interface Builder")
        }
    }
    
    
    
    
}

