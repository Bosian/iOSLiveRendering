//
//  CustomViewLoader.swift
//  LiveRendering
//
//  Created by 劉柏賢 on 2016/8/9.
//  Copyright © 2016年 劉柏賢. All rights reserved.
//

import UIKit

@IBDesignable
class CustomViewLoader: UIView {

    var customViewController: CustomViewController!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadView()
    }
    
    func loadView()
    {
        #if TARGET_INTERFACE_BUILDER
            let bundle = NSBundle(forClass: self.dynamicType)
        #else
            let bundle = NSBundle.mainBundle()
        #endif
        
        let storyboard = UIStoryboard(name: "CustomStoryboard", bundle: bundle)
        let name = "\(CustomViewController.self)"
        
        self.customViewController = storyboard.instantiateViewControllerWithIdentifier(name) as! CustomViewController
        let view = self.customViewController.view
        
        addSubview(view)
        view.frame.size = self.frame.size
        
        
    }
    
}
