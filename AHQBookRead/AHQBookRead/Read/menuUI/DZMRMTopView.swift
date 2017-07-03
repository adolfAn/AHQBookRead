//
//  DZMRMTopView.swift
//  DZMeBookRead
//
//  Created by 邓泽淼 on 2017/5/11.
//  Copyright © 2017年 DZM. All rights reserved.
//

import UIKit

class DZMRMTopView: DZMRMBaseView {
    
    /// 返回按钮
    private(set) var back:UIButton!
    // tobTitle
    private(set) var tobTitle:UILabel!
    /// 书签
    private(set) var mark:UIButton!
    
    override func addSubviews() {
        
        super.addSubviews()
        
        // 返回
        back = UIButton(type:.custom)
        back.setImage(UIImage(named:"G_Back_0"), for: .normal)
        back.addTarget(self, action: #selector(DZMRMTopView.goBack(button:)), for: .touchUpInside)
        addSubview(back)
        
        // leftTitle
        tobTitle = UILabel()
        tobTitle.textColor = UIColor.white
        tobTitle.textAlignment = .center
        addSubview(tobTitle)
        
        
        // 书签
        mark = UIButton(type:.custom)
        mark.contentMode = .center
        mark.setImage(UIImage(named:"RM_17"), for: .normal)
        mark.setImage(UIImage(named:"RM_18"), for: .selected)
        mark.addTarget(self, action: #selector(DZMRMTopView.clickMark(button:)), for: .touchUpInside)
        addSubview(mark)
    }
    
    @objc private func clickMark(button:UIButton) {
        
        readMenu.delegate?.readMenuClickMarkButton?(readMenu: readMenu, button: button)
    }
    
    
    /**
     设置头部标题
     
     - parameter title: 标题
     */
    func setTitle(_ title:String?) {
        if tobTitle == nil {
            return
        }
        self.tobTitle.text = title
        
    }
    
    
    @objc private func goBack(button:UIButton) {
        
        readMenu.delegate?.readMenuClickBackButton?(readMenu: readMenu, button: button)
    }
    
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        // 按钮宽
        let buttonW:CGFloat = 50
        
        // 返回按钮
        back.frame = CGRect(x: 0, y: StatusBarHeight, width: buttonW, height: height - StatusBarHeight)
        
        // 书签按钮
        mark.frame = CGRect(x: width - buttonW, y: StatusBarHeight, width: buttonW, height: height - StatusBarHeight)
        
        tobTitle.frame = CGRect(x: back.width, y: StatusBarHeight, width: ScreenWidth - back.width - mark.width, height: height - StatusBarHeight)
        
    }
}
