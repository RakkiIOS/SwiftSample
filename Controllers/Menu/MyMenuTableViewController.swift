//
//  MyMenuTableViewController.swift
//  SwiftSideMenu
//
//  Created by Evgeny Nazarov on 29.09.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

import UIKit

class MyMenuTableViewController: UITableViewController {
    var selectedMenuItem : Int = 0
    let menuOptions = ["Home", "SocialMedia", "ImagesList", "API", "ImagePicker", "Scroll","Logout"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize apperance of table view
        tableView.contentInset = UIEdgeInsetsMake(64.0, 0, 0, 0) //
        tableView.separatorStyle = .None
        tableView.backgroundColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        tableView.scrollsToTop = false
        
        // Preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        tableView.selectRowAtIndexPath(NSIndexPath(forRow: selectedMenuItem, inSection: 0), animated: false, scrollPosition: .Middle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return menuOptions.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier = "MenuCell"
        var cell: MenuCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? MenuCell
        if cell == nil {
            tableView.registerNib(UINib(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? MenuCell
        }
        cell!.labelMenuName?.text = menuOptions[indexPath.row]
        cell!.imageMenuICon.layer.cornerRadius = CGRectGetWidth(cell.imageMenuICon.frame)/2.0
        cell.backgroundColor = UIColor.clearColor()
        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60.0
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if (indexPath.row == selectedMenuItem) {
            return
        }
        
        selectedMenuItem = indexPath.row
        
        //Present new view controller
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        var destViewController : UIViewController
        switch (indexPath.row) {
        case 0:
            destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("HomeViewController") 
            break
        case 1:
            destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("SocialMediaController")
            break
        case 2:
            destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ImageViewController")
            break
            
        case 3:
            destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("APIViewController")
        case 4:
            destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ScrollViewController")
        default:
            [self.logout]
            destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("LoginViewController")
            break
        }
        sideMenuController()?.setContentViewController(destViewController)
    }
    
    func logout()  {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
