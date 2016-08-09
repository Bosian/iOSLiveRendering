//
//  CustomViewController.swift
//  LiveRendering
//
//  Created by 劉柏賢 on 2016/8/9.
//  Copyright © 2016年 劉柏賢. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func buttonHandler(sender: UIButton) {
        
        let alert = UIAlertController(title: "訊息", message: "message", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "確定", style: .Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
