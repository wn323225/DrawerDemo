//
//  ViewController.swift
//  MHDrawerDemo2
//
//  Created by mhrusrm3 on 2017/7/27.
//  Copyright © 2017年 mhrusrm3. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu.png"),
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(ViewController.sideMenuTapped(_:)))
    }
    
    func sideMenuTapped(_ sender: UIBarButtonItem) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.centerContainer.openDrawerGestureModeMask = .panningCenterView
//        appDelegate.centerContainer.closeDrawerGestureModeMask = .panningCenterView
//    }
//    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.centerContainer.openDrawerGestureModeMask = MMOpenDrawerGestureMode()
//        appDelegate.centerContainer.closeDrawerGestureModeMask = MMCloseDrawerGestureMode()
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

