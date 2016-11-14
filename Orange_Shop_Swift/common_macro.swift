//
//  common_macro.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/11.
//  Copyright © 2016年 mogo. All rights reserved.
//

//OC中的宏定义到swift中就演变成了全局常量和函数

import UIKit

//宽高
let kTopBarHeight = 20
let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

func kNavBarHeight(childNavController: UIViewController) -> CGFloat {
    return (childNavController.navigationController?.navigationBar.frame.size.height)!
}

func kMainHeight(childNavController: UIViewController) -> CGFloat {
    return CGFloat(kScreenHeight) - CGFloat(kTopBarHeight) - kNavBarHeight(childNavController: childNavController)
}

func kSelfWidth(view: UIView) -> CGFloat {
    return view.bounds.size.width
}

func kSelfHeight(view: UIView) -> CGFloat {
    return view.bounds.size.height
}

func kSelfViewWidth(viewController: UIViewController) -> CGFloat {
    return viewController.view.bounds.size.width
}

func kSelfViewHeight(viewController: UIViewController) -> CGFloat {
    return viewController.view.bounds.size.width
}

//颜色
func RGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return UIColor.init(red: r, green: g, blue: b, alpha: 1.0)
}

//添加UIColor的扩展
extension UIColor {
    func hexColor(_ hexStr: NSString) -> UIColor? {
        if hexStr.length < 6 {
            //Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中， nil 是一个指向不存在对象的指 针。在 Swift 中， nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设 置为 nil ，不只是对象类型。
            return nil
        }
        var red:UInt32 = 0, green:UInt32 = 0, blue :UInt32 = 0
        var exceptionRange: NSRange? = NSRange.init(location: 0, length: 2)
        //red
        Scanner(string: hexStr.substring(with: exceptionRange!)).scanHexInt32(&red)
        exceptionRange?.location = 2
        //green
        Scanner(string: hexStr.substring(with: exceptionRange!)).scanHexInt32(&green)
        exceptionRange?.location = 4
        //blue
        Scanner(string: hexStr.substring(with: exceptionRange!)).scanHexInt32(&blue)
        
        return RGB(r: CGFloat(red) / 255.0, g: CGFloat(green) / 255.0, b: CGFloat(blue) / 255.0)
    }
}

let kColorWhite = UIColor.white
let kColorBlue = UIColor().hexColor("0000ff")
let kColorBlack = UIColor().hexColor("000000")
let kColorRed = UIColor().hexColor("ff0000")
let kColorFont = UIColor().hexColor("1a1a1a")
let kColorBackgound = UIColor().hexColor("f8f8f8")
let kColorUnderline = UIColor().hexColor("e1e1e1")

//项目的主要色调
let kColorMainOrange = UIColor().hexColor("ff7419")
let kColorMainRed = UIColor().hexColor("ee0000")
let kColorMainBlack = UIColor().hexColor("323232")
let kColorMainGrey = UIColor().hexColor("6a6a6a")
let kColorMainBorderGrey = UIColor().hexColor("a1a1a1")

//自定义错误提供给NSError使用
let kCustomErrorDomain = "com.Orange_Shop_Swift.ios"
enum eCustomErrorCode {
    case eCustomErrorCodeFailure
}

