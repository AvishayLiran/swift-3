//
//  StudentsTableViewController.swift
//  Matala3
//
//  Created by Liran Avishay on 12/22/16.
//  Copyright © 2016 Liran Avishay. All rights reserved.
//

import UIKit

class StudentsTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var StudentsTableView: UITableView!
    
    var stDB = StudentDataBase.instance
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let stDetailsVC = segue.destination as? StudentDetailsViewController{
            stDetailsVC.st = self.stDB.getStudentByIndex(index:self.selectedIndex!)
        }
        
        
    
    }
 

    // Table View Data Source //
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return self.stDB.getNumberOfStudents()
    
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let rowCell = self.StudentsTableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        
        let studentCell = rowCell as! StudentTableViewCell
        studentCell.firstName.text = self.stDB.getStudentByIndex(index: indexPath.row).fName
        studentCell.lastName.text = self.stDB.getStudentByIndex(index: indexPath.row).lName
        
        return rowCell
    }
    
    var selectedIndex:Int?
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("didSelectRowAt \(indexPath)")
        selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "presentStudentDetails", sender: self)
    }
    
    
}











