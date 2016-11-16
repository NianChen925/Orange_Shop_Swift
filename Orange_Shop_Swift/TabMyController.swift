//
//  TabMyController.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/11.
//  Copyright © 2016年 mogo. All rights reserved.
//

import UIKit

// main table's section
enum SectionType: Int{
    case SectionTypeHead, SectionTypeOrder, SectionTypeCoupon, SectionTypeSupport
}

class TabMyController: BaseController, UITableViewDelegate, UITableViewDataSource {

    var vTable: UITableView?
    var sectionType: SectionType?
    
    //Life-Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "我的"
        navigationItem.leftBarButtonItem = nil;

        vTable = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), style: UITableViewStyle.grouped)
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return SectionType.SectionTypeSupport.rawValue + 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sectionType = SectionType(rawValue: section)
        switch sectionType! {
        case .SectionTypeHead:
            return 1
        case .SectionTypeOrder:
            return 2
        case .SectionTypeCoupon:
            return 3
        case .SectionTypeSupport:
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var identifier: NSString?
        let section = indexPath.section
        let row = indexPath.row
        
        sectionType = SectionType(rawValue: section)
        switch sectionType! {
        case .SectionTypeHead:
            identifier = "TabMyHeadCell"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier as String!)
            if nil == cell {
                cell = TabMyHeadCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier as String?)
            }
            return cell!
        case .SectionTypeOrder:
            break
        case .SectionTypeCoupon:
            break
        case .SectionTypeSupport:
            break
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if SectionType.SectionTypeHead.rawValue == section {
            return 0
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if SectionType.SectionTypeHead.rawValue == indexPath.section {
            return TabMyHeadCell.height()
        } else {
            return 44
        }
    }
}


