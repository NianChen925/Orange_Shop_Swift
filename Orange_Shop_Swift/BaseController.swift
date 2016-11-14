//
//  BaseController.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/10.
//  Copyright © 2016年 mogo. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - NavigationController
    
    func setNavLeftBarButtonItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(imageLiteralResourceName: "btn_back"), style: UIBarButtonItemStyle.done, target: self, action: #selector(popSelfController))
    }
    
    func popSelfController() {
        _ = navigationController?.popViewController(animated: true)
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
