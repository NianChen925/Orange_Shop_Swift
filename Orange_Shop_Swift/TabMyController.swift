//
//  TabMyController.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/11.
//  Copyright © 2016年 mogo. All rights reserved.
//

import UIKit

enum eSection {
    case eSectionHead, eSectionOrder, eSectionCoupon, eSectionSupport
}

class TabMyController: BaseController, UITableViewDelegate, UITableViewDataSource {

    var vTable: UITableView?
    
    //Life-Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "我的"
        navigationItem.leftBarButtonItem = nil;

        vTable = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        vTable?.tableFooterView = UIView()
        vTable?.dataSource = self
        vTable?.delegate = self
        view.addSubview(vTable!)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TableView-Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = kColorBlue
        return cell
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


