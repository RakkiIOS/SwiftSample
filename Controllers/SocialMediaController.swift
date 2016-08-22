//
//  ProfileViewController.swift
//  SwiftSample
//
//  Created by Pandyperumal on 8/1/16.
//  Copyright © 2016 BLT0003IMAC. All rights reserved.
//

import UIKit


class SocialMediaController: UIViewController,UITabBarDelegate,UIWebViewDelegate {
    
    @IBOutlet var tabBarSocial: UITabBar!
    @IBOutlet var webViewSocial: UIWebView!
    
    let apiCaller:APICaller = APICaller()
    let activityIndicator:ActivityIndicator = ActivityIndicator()
    var urlWebView : NSURL = NSURL()
    var viewActIndicatorFrame = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self .setUpPostLoad()
    }
    
    @IBAction func toggleSidemenu(sender:AnyObject)  {
        toggleSideMenuView()
    }
    
    func setUpPostLoad()  {
    
       viewActIndicatorFrame = activityIndicator.ProgressBarView(self.view)
        
       // activityIndicator.progressBarDisplayer("Loading", true, view: self.view)
        
       self.view.addSubview(activityIndicator.ProgressBarView(viewActIndicatorFrame))
        
        
      
        tabBarSocial.selectedItem = tabBarSocial.items![0] as UITabBarItem
        urlWebView = NSURL(string: apiCaller.stringForGoogleUrl)!
        self.requestURL(urlWebView)

        
    }
    
    
    
    
    
       
    
    
    
    //MARK: Selected Tabbar Item
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        switch item.tag {
            
        case 0:
            urlWebView = NSURL(string:apiCaller.stringForGoogleUrl)!
            
        case 1:
            urlWebView = NSURL(string:apiCaller.stringForGmailUrl)!
            
        case 2:
            urlWebView = NSURL(string:apiCaller.stringForFacebookUrl)!
            
        case 3:
            urlWebView = NSURL(string:apiCaller.stringForTwitterUrl)!
            
        default:
            urlWebView = NSURL(string:apiCaller.stringForLinkedInUrl)!
        }
        self .requestURL(urlWebView)
    }
    
    //MARK: Request WebView
    
    func requestURL(webViewURl:NSURL)  {
        let requestURL = NSURLRequest(URL: webViewURl);
        webViewSocial.loadRequest(requestURL);
    }
    
    //MARK: WebView Delegate
    
    func webViewDidFinishLoad(webView: UIWebView) {

    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
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
