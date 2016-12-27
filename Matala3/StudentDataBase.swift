//
//  File.swift
//  MatalaA
//
//  Created by Kobi Ohana on 23/11/2016.
//  Copyright © 2016 Kor. All rights reserved.
//

import Foundation

class StudentDataBase
    
{
    private var students = [Student?]();
    static let instance = StudentDataBase();
    private init(){
    
        addStudent(st: Student(fName: "Avi", lName: "Cohen", id: "123456789", phoneNum: "05000201512"));
        addStudent(st: Student(fName: "Beni", lName: "Gantz", id: "123456123", phoneNum: "05258252154"));
        addStudent(st: Student(fName: "Chaim", lName: "Yavin", id: "87415412", phoneNum: "09895611214"));
        addStudent(st: Student(fName: "Dudu", lName: "Levi", id: "151542153", phoneNum: "05422245613"));
        addStudent(st: Student(fName: "Efrat", lName: "Avishay", id: "211452154", phoneNum: "0350311476"));
        addStudent(st: Student(fName: "Floran", lName: "Gozlan", id: "456123456", phoneNum: "0555454125"));
    }

 
    func addStudent(firstName:String,lastName:String,idStudent:String,phoneNumber:String)
    {
        students.append(Student(fName:firstName,lName:lastName,id:idStudent,phoneNum:phoneNumber));
    }
    func addStudent(st:Student)
    {
        students.append(st);
    }
    func getStudent(id:String)->Student!
    {
        for st in students
        {
            if (st!.id==id){
                return st!;
            }
        }
         
        return nil
        
    }
    
    func deleteStudent(ids:String)->Bool
    {
        for (index,value) in students.enumerated()
        
        {   if (value!.id==ids){
            students.remove(at:index)
            return true
            }
        }
        return false
        

    }
    func updateStudent(st:Student)->Bool
    {
      for (index,value) in students.enumerated()
      {
        
        if (value!.id==st.id)
        {
            students[index]=st;
            return true
      }
        
        
    }
       return false
    }

    func getNumberOfStudents()->Int{
        
        return students.count;
    }
    func getStudentByIndex(index:Int)->Student
    {
        return students[index]!;
    }
}
    

