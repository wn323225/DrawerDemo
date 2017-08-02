//
//  LeftViewController.swift
//  MHDrawerDemo2
//
//  Created by mhrusrm3 on 2017/8/2.
//  Copyright © 2017年 mhrusrm3. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeClick(_ sender: UIButton) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let centerViewController = mainStoryboard.instantiateViewController(withIdentifier: "HomePageViewController") as! ViewController
        
        //let centerViewController = ViewController()
        let centerNavigationController = UINavigationController(rootViewController: centerViewController)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.centerContainer.centerViewController = centerNavigationController
        
        appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
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
