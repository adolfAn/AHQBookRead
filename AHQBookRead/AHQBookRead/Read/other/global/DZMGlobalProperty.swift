//
//  DZMGlobalProperty.swift
//  DZMeBookRead
//
//  Created by 邓泽淼 on 2017/5/11.
//  Copyright © 2017年 DZM. All rights reserved.
//

import UIKit

// MARK: -- 屏幕属性
/// 屏幕宽度
let ScreenWidth:CGFloat = UIScreen.main.bounds.size.width

/// 屏幕高度
let ScreenHeight:CGFloat = UIScreen.main.bounds.size.height

/// 导航栏高度
let NavgationBarHeight:CGFloat = 64

/// TabBar高度
let TabBarHeight:CGFloat = 49

/// StatusBar高度
let StatusBarHeight:CGFloat = 20


// MARK: -- 颜色支持

/// 灰色
let DZMColor_1:UIColor = RGB(51, g: 51, b: 51)

/// 主题色绿色
let DZMColor_2:UIColor = RGB(66, g: 193, b: 144)

/// 阅读上下状态栏颜色
let DZMColor_3:UIColor = RGB(127, g: 136, b: 138)

/// 小说阅读上下状态栏字体颜色
let DZMColor_4:UIColor = RGB(127, g: 136, b: 138)



/// LeftView文字颜色
let DZMColor_6:UIColor = RGB(170, g: 170, b: 170)


/// 阅读背景颜色支持
let DZMReadBGColor_EYE:UIColor = RGB(199, g: 217, b: 189)
let DZMReadBGColor_DAY:UIColor = RGB(227, g: 212, b: 179)
let DZMReadBGColor_BY_FRESH:UIColor = RGB(227, g: 227, b: 227)
let DZMReadBGColor_YELLOW:UIColor = RGB(218, g: 202, b: 174)
let DZMReadBGColor_NIGHT:UIColor = RGB(0, g: 0, b: 0)
/// 小说阅读文字颜色
let DZMReadTextColor_EYE:UIColor = RGB(30, g: 43, b: 22)
let DZMReadTextColor_DAY:UIColor = RGB(84, g: 58, b: 31)
let DZMReadTextColor_BY_FRESH:UIColor = RGB(0, g: 0, b: 2)
let DZMReadTextColor_YELLOW:UIColor = RGB(89, g: 64, b: 52)
let DZMReadTextColor_NIGHT:UIColor = RGB(42, g: 62, b: 71)
/// 小说阅读Header and footer颜色
let DZMReadHeaderAndFooterTextColor_EYE:UIColor = RGB(144, g: 164, b: 132)
let DZMReadHeaderAndFooterTextColor_DAY:UIColor = RGB(153, g: 129, b: 106)
let DZMReadHeaderAndFooterTextColor_BY_FRESH:UIColor = RGB(131, g: 136, b: 142)
let DZMReadHeaderAndFooterTextColor_YELLOW:UIColor = RGB(135, g: 108, b: 94)
let DZMReadHeaderAndFooterTextColor_NIGHT:UIColor = RGB(43, g: 49,b: 61)


/// 菜单背景颜色
let DZMMenuUIColor:UIColor = RGBA(22, g: 22, b: 22, a: 0.80)
// 菜单文字颜色
let DZMMenuUITextColor:UIColor = RGB(170, g: 170, b: 170)
// 菜单文字按下去颜色
let DZMMenuUITextPressColor:UIColor = RGB(130, g: 130, b: 130)



// MARK: -- 字体支持
let DZMFont_10:UIFont = UIFont.systemFont(ofSize: 10)
let DZMFont_12:UIFont = UIFont.systemFont(ofSize: 12)
let DZMFont_18:UIFont = UIFont.systemFont(ofSize: 18)


// MARK: -- 间距支持
let DZMSpace_1:CGFloat = 15
let DZMSpace_2:CGFloat = 25
let DZMSpace_3:CGFloat = 1
let DZMSpace_4:CGFloat = 10
let DZMSpace_5:CGFloat = 20
let DZMSpace_6:CGFloat = 5


// MARK: -- Key
/// 是夜间还是日间模式   true:夜间 false:日间
let DZMKey_IsNighOrtDay:String = "isNightOrDay"
