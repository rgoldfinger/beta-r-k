//
//  AddViewController.swift
//  should I run? draft
//
//  Created by Roger Goldfinger on 7/11/14.
//  Copyright (c) 2014 Roger Goldfinger. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {


    @IBOutlet var textField : UITextField

    @IBOutlet var saveButton : UIBarButtonItem
    
    var place:Place? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        
        if (sender as NSObject != self.saveButton) {
            return
        }
        
        self.place = Place(name: self.textField.text, latitude: 35.0, longitude: -120.0)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
