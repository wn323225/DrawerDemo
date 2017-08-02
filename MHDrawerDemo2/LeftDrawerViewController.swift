//
//  LeftDrawerViewController.swift
//  MHDrawerDemo2
//
//  Created by mhrusrm3 on 2017/7/27.
//  Copyright © 2017年 mhrusrm3. All rights reserved.
//

import UIKit
let cellIdentifier: String = "cellId"
class LeftDrawerViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        // Do any additional setup after loading the view.
        
        
//        tableView = UITableView(frame: CGRect.zero, style: .plain)
//        tableView.frame = CGRect(x: 0, y: 60, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
        
           tableView = UITableView.init(frame: CGRect(x: 0, y: 364, width: width * 0.7, height: height - 65), style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        //tableView.register(UINib(nibName: "LeftDrawerTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension LeftDrawerViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier:cellIdentifier, for: indexPath) as! LeftDrawerTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        //cell.textLabel?.value(forKey: "Demo" + String(describing: indexPath))
        cell?.textLabel?.text = "Demo" + String(indexPath.item)
        cell?.textLabel?.textColor = UIColor.green
        
        // Checkmark 对号,
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell!
    }

  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch (indexPath.row){
//        case 0:
//            let centerViewController = ViewController()
//            let centerNavigationController = UINavigationController(rootViewController: centerViewController)
//            
//            let appDelegate = UIApplication.shared.delegate as! AppDelegate
//            
//            //let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            appDelegate.centerContainer.centerViewController = centerNavigationController
//            appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
//        default: break
//            
//            let otherViewController = TestViewController()
//            let otherNavigationController = UINavigationController(rootViewController: otherViewController)
//            //let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            let appDelegate = UIApplication.shared.delegate as! AppDelegate
//
//            appDelegate.centerContainer.centerViewController = otherNavigationController
//            appDelegate.centerContainer.toggle(MMDrawerSide.Left, animated: true, completion: nil)
//        }
        
           //let centerViewController = ViewController()
           //let centerNavigationController = UINavigationController(rootViewController: centerViewController)
        switch (indexPath.row){
            
            case 0:
               
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                let centerViewController = mainStoryboard.instantiateViewController(withIdentifier: "HomePageViewController") as! ViewController

                //let centerViewController = ViewController()
                let centerNavigationController = UINavigationController(rootViewController: centerViewController)
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                
                appDelegate.centerContainer.centerViewController = centerNavigationController
                
                appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
            case 1:
                
                //let otherViewController = SecondViewController()
                
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                let otherViewController = mainStoryboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                
                let otherNavigationController = UINavigationController(rootViewController: otherViewController)
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                
                appDelegate.centerContainer.centerViewController = otherNavigationController

                appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
            default: break
            
            
        }
    }
}

