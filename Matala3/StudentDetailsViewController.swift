//
//  StudentDetailsViewController.swift
//  Matala3
//
//  Created by Liran Avishay on 12/22/16.
//  Copyright © 2016 Liran Avishay. All rights reserved.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    @IBOutlet weak var stName: UILabel!
    
    @IBOutlet weak var stLastName: UILabel!
    
    @IBOutlet weak var stId: UILabel!
    
    @IBOutlet weak var stPhone: UILabel!
    
    var st:Student?
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        if(st?.fName != nil)
        {
            self.stName.text = st?.fName
        }
        if(st?.lName != nil)
        {
            self.stLastName.text = st?.lName
        }
        if(st?.id != nil)
        {
            self.stId.text = st?.id
        }
        if(st?.phoneNum != nil)
        {
            self.stPhone.text = st?.phoneNum
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
