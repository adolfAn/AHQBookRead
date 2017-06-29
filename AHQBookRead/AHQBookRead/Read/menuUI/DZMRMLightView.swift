//
//  DZMRMLightView.swift
//  DZMeBookRead
//
//  Created by 邓泽淼 on 2017/5/11.
//  Copyright © 2017年 DZM. All rights reserved.
//

import UIKit

class DZMRMLightView: DZMRMBaseView {

    /// 标题
    private(set) var titleLabel:UILabel!
    
    /// 进度条
    private(set) var slider:UISlider!
    
    /// 类型
    private(set) var typeBtn:UIButton!
    
    private var brightness:CGFloat!
    
    private var isSystemBrightness:Bool = false
    
    override func addSubviews() {
        
        super.addSubviews()
        brightness = UIScreen.main.brightness
        isSystemBrightness =  ScreenModel.Instance.isSystemBrightness()!
        
        titleLabel = UILabel()
        titleLabel.text = "亮度"
        titleLabel.textAlignment = .right
        titleLabel.textColor = DZMMenuUITextColor
        titleLabel.font = DZMFont_12
        addSubview(titleLabel)
        
        
        typeBtn = UIButton()
        
        typeBtn.setTitle("系统", for: .normal)
        typeBtn.titleLabel?.font = DZMFont_12
        typeBtn.setTitleColor( UIColor.white, for: .normal)
        typeBtn.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        typeBtn.layer.cornerRadius = 3
        if isSystemBrightness {
            typeBtn.setTitleColor( DZMColor_2, for: .normal)
        }else{
            typeBtn.setTitleColor( DZMMenuUITextColor, for: .normal)
        }
        addSubview(typeBtn)
        
        // 进度条
        slider = UISlider()
        slider.minimumValue = 0.0
        slider.maximumValue = 1.0
        slider.tintColor = DZMColor_2
        slider.setThumbImage(UIImage(named: "RM_3")!, for: UIControlState())
        slider.addTarget(self, action: #selector(DZMRMLightView.sliderChanged(_:)), for: UIControlEvents.valueChanged)
        if isSystemBrightness {
            slider.value = Float(self.brightness)
        }else{
            var brightness = ScreenModel.Instance.customBrightness()!
            if brightness <= 0 {
                brightness = 0.15
            }else if brightness > 1 {
                brightness = 1.0
            }
            slider.value = Float(brightness)
        }
        addSubview(slider)
    }
    
    func btnAction(_ btn:UIButton){
        isSystemBrightness = !isSystemBrightness
        if isSystemBrightness {
            typeBtn.setTitleColor(DZMColor_2, for: .normal)
        }else{
            typeBtn.setTitleColor( DZMMenuUITextColor, for: .normal)
        }
        reSetCustomBrightness()
        ScreenModel.Instance.isSystemBrightness(object: isSystemBrightness)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        // 标题
        titleLabel.frame = CGRect(x: 0, y: 0, width: 45, height: height)
        
        // 类型
        let typeLabelW:CGFloat = 32
        let typeLabelH:CGFloat = 16
        typeBtn.frame = CGRect(x: width - typeLabelW - DZMSpace_1, y: (height - typeLabelH) / 2, width: typeLabelW, height: typeLabelH)
        
        // 进度条
        let sliderX = titleLabel.frame.maxX + DZMSpace_1
        let sliderW = typeBtn.frame.minX - DZMSpace_1 - sliderX
        slider.frame = CGRect(x: sliderX, y: 0, width: sliderW, height: height)
    }
    
    /// 滑动方法
    @objc private func sliderChanged(_ slider:UISlider) {
        UIScreen.main.brightness = CGFloat(slider.value)
        isSystemBrightness = false
        ScreenModel.Instance.isSystemBrightness(object: isSystemBrightness)
        ScreenModel.Instance.customBrightness(object: UIScreen.main.brightness)
        typeBtn.setTitleColor( DZMMenuUITextColor, for: .normal)
    }
    
    func reSetCustomBrightness(){
        if isSystemBrightness {
            UIScreen.main.brightness = self.brightness
        }else{
            var brightness = ScreenModel.Instance.customBrightness()!
            if brightness <= 0 {
                brightness = 0.15
            }else if brightness > 1 {
                brightness = 1.0
            }
            UIScreen.main.brightness = brightness
        }
    }
    
    func reSetSystemBrightness(){
        UIScreen.main.brightness = brightness
    }
}
