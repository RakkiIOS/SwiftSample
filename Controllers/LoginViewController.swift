//
//  LoginViewController.swift
//  SwiftSample
//
//  Created by Pandyperumal on 8/2/16.
//  Copyright © 2016 BLT0003IMAC. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {

    var isLogin = false
    var datestring = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(sender:AnyObject)  {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let menuViewController = storyBoard.instantiateViewControllerWithIdentifier("MyNavigationController") as! MyNavigationController
        self.presentViewController(menuViewController, animated:false, completion:nil)
        
    }
    @IBAction func register(sender:AnyObject)  {
        
        
        let vc = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "ShowMenuSegue" {
//            
//            if isLogin == true {
//                segue.destinationViewController is MyNavigationController
//            }
//        }
//    }
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
