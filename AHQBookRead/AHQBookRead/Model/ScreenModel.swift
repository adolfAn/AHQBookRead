//
//  ScreenModel.swift
//  AHQBookRead
//
//  Created by ahq on 2017/6/29.
//  Copyright © 2017年 ahq. All rights reserved.
//

import Foundation
class ScreenModel:NSObject {
    let IS_SYSTEM_BRIGHTNESS:String = "isSystemBrightness"
    let CUSTOM_BRIGHTNESS:String = "customBrightness"
    let userDefault = UserDefaults.standard
    class var Instance: ScreenModel {
        struct Static {
            static let Instance:ScreenModel = ScreenModel()
        }
        
        return Static.Instance
    }
    
    override init() {
        super.init()
        
    }
    
    
    /// 归档isSystemBrightness文件文件
    func isSystemBrightness(object:Bool) {
        
        //Any
        userDefault.set(object, forKey: IS_SYSTEM_BRIGHTNESS)
    }
    
    /// 解档isSystemBrightness文件文件
    func isSystemBrightness() ->Bool? {
        return userDefault.bool(forKey: IS_SYSTEM_BRIGHTNESS)
    }
    
    /// 归档customBrightness文件文件
    func customBrightness(object:CGFloat) {
        
        //Any
        userDefault.set(object, forKey: CUSTOM_BRIGHTNESS)
    }
    
    /// 解档customBrightness文件文件
    func customBrightness() ->CGFloat? {
        return CGFloat(userDefault.float(forKey: CUSTOM_BRIGHTNESS))
    }
    
}
