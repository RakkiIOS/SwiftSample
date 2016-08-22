//
//  ActivityIndicator.swift
//  SwiftSample
//
//  Created by Pandyperumal on 8/8/16.
//  Copyright © 2016 BLT0003IMAC. All rights reserved.
//

import UIKit

class ActivityIndicator: NSObject {
    
    var viewActIndiBackground = UIView()
    var viewActivityIndicator = UIView()
    var activityIndicator = UIActivityIndicatorView()
    var strLabel = UILabel()
    
    
    
    func ProgressBarView(view:UIView) -> UIView  {
        
        viewActIndiBackground = view
        viewActivityIndicator = UIView(frame: CGRect(x: view.frame.midX - 90, y: view.frame.midY - 25 , width: 180, height: 50))
        viewActivityIndicator.layer.cornerRadius = 15
        viewActivityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.7)
        viewActIndiBackground.addSubview(viewActivityIndicator)
        return viewActIndiBackground
        
    }
    
    func progressBarDisplayer(msg:String, _ indicator:Bool,view:UIView )-> UIView {
        
        
        viewActIndiBackground = view
        viewActivityIndicator = UIView(frame: CGRect(x: view.frame.midX - 90, y: view.frame.midY - 25 , width: 180, height: 50))
        viewActivityIndicator.layer.cornerRadius = 15
        viewActivityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.7)
        
        
        strLabel = UILabel(frame: CGRect(x: 50, y: 0, width: 200, height: 50))
        strLabel.text = msg
        strLabel.textColor = UIColor.whiteColor()
        if indicator {
            activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.White)
            activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            activityIndicator.startAnimating()
            viewActivityIndicator.addSubview(activityIndicator)
            viewActIndiBackground.addSubview(viewActivityIndicator)
        }
        viewActivityIndicator.addSubview(strLabel)
        return (viewActIndiBackground)
    }


}
