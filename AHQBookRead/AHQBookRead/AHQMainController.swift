//
//  AHQMainController.swift
//  AHQBookRead
//
//  Created by ahq on 2017/6/29.
//  Copyright © 2017年 ahq. All rights reserved.
//


import UIKit

class AHQMainController : UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var tabelView:UITableView!
    var dataSource:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="书架"
        // Do any additional setup after loading the view.
        tabelView = UITableView(frame: self.view.frame, style: UITableViewStyle.plain)
        
        tabelView?.delegate = self
        tabelView?.dataSource = self
        self.view.addSubview(tabelView)
        
        self.initData()
        tabelView?.reloadData()
    }
    
    func initData(){
        for i in 0 ..< 10{
            dataSource.append("\(i)")
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       read()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "qqq"  //用 let 关键字声明常量，用 var 关键字声明变量
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: cellId)//此处的style不能用default, 否则detailLabel不显示
        cell.textLabel?.text = "大主宰："+dataSource[indexPath.row];
        
        cell.detailTextLabel?.text = "作者：天蚕土豆"
        
        cell.imageView?.image = UIImage(named: "ic_cover_default")
        cell.imageView?.frame = CGRect(x: 10, y: 10, width: 75, height: 100)
        cell.imageView!.layer.cornerRadius = 6
        
        return cell
    }
    
    func read() {
        
        MBProgressHUD.showMessage("内容加载中...")
        
        let url = Bundle.main.url(forResource: "大主宰", withExtension: "txt")
        
        
        DZMReadParser.ParserLocalURL(url: url!) {[weak self] (readModel) in
            
            MBProgressHUD.hide()
            
            let readController = DZMReadController()
            
            readController.readModel = readModel
            
            self?.navigationController?.pushViewController(readController, animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController!.navigationBar.barTintColor = DZMColor_2
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }
}
