//
//  ImagePickerViewController.swift
//  SwiftSample
//
//  Created by Pandyperumal on 8/1/16.
//  Copyright © 2016 BLT0003IMAC. All rights reserved.
//

import UIKit

class ImagePickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toggleSidemenu(sender:AnyObject)  {
        toggleSideMenuView()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
