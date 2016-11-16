//
//  TabMyHeadCell.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/14.
//  Copyright © 2016年 mogo. All rights reserved.
//

import UIKit
import Masonry


class TabMyHeadCell: UITableViewCell {
    
    var vImage: UIImageView?
    var vName: UILabel?
    var vLevel: UILabel?
    var vNotLogin: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func height() -> CGFloat{
        return 70
    }
    
    func fillContentWithUser(_ user:User ) {
        if Int(user.id ?? 0) > 0 {
            vName?.text = user.mobile as String?
            vName?.isHidden = false
            vLevel?.text = user.levelLabel as String?
            vLevel?.isHidden = false
            vNotLogin?.isHidden = true
        } else {
            vNotLogin?.text = "登录/注册"
            vName?.isHidden = true
            vLevel?.isHidden = true
            vNotLogin?.isHidden = false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = UITableViewCellSelectionStyle.none
        accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        //设置cell的背景图片
        let vBgImage = UIImageView()
        vBgImage.image = UIImage(imageLiteralResourceName: "head_bg")
        backgroundColor = UIColor.clear
        backgroundView = vBgImage
        
        //vImage
        let vImageWidth = 60
        let vImageHeight = 60
        vImage = UIImageView()
        vImage?.image = UIImage(imageLiteralResourceName: "head")
        self.addSubview(vImage!)
        _ = vImage?.mas_makeConstraints { (make: MASConstraintMaker?) in
            _ = make?.left.equalTo()(20)
            _ = make?.centerY.equalTo()
            _ = make?.width.equalTo()(vImageWidth)
            _ = make?.height.equalTo()(vImageHeight)
        }
        
        //vName
        vName = UILabel()
        vName?.textColor = kColorWhite
        vName?.isHidden = true
        self.addSubview(vName!)
        _ = vName?.mas_makeConstraints({ (make: MASConstraintMaker?) in
            _ = make?.left.equalTo()(self.vImage?.mas_right)?.equalTo()(10)
            _ = make?.top.equalTo()(25)
        })
        
        //vLevel
        vLevel = UILabel()
        vLevel?.textColor = kColorWhite
        vLevel?.textAlignment = NSTextAlignment.center
        vLevel?.layer.borderWidth = 1
        vLevel?.layer.borderColor = kColorWhite.cgColor
        vLevel?.layer.cornerRadius = 3
        vLevel?.isHidden = true
        self.addSubview(vLevel!)
        _ = vLevel?.mas_makeConstraints({ (make: MASConstraintMaker?) in
            _ = make?.left.equalTo()(self.vName)
            _ = make?.top.equalTo()(self.vName?.mas_bottom)?.equalTo()(2)
            _ = make?.width.equalTo()(80)
            _ = make?.height.equalTo()(25)
        })
        
        //vNotLogin
        vNotLogin = UILabel()
        vNotLogin?.textColor = kColorMainRed
        vNotLogin?.font = UIFont.systemFont(ofSize: 19)
        vNotLogin?.isHidden = true
        self.addSubview(vNotLogin!)
        _ = vNotLogin?.mas_makeConstraints({ (make: MASConstraintMaker?) in
            _ = make?.left.equalTo()(self.vLevel)
            _ = make?.centerY.equalTo()
        })
        
        fillContentByStorage()
    }
    
    func fillContentByStorage() {
        let userId = StorageUtil.getUserId()
        let userMobile = StorageUtil.getUserMobile()
        let userLevel = StorageUtil.getUserLevel()
        let userLevelLabel = StorageUtil.getUserLevelLabel()
        
        let user = User()
        user.id = userId
        user.mobile = userMobile
        user.level = userLevel
        user.levelLabel = userLevelLabel
        
        fillContentWithUser(user)
    }

}
