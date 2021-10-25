//
//  ViewController.swift
//  PaperCouponManager
//
//  Created by 小早川　聖 on 2021/10/24.
//

import UIKit
import SegementSlide

class SegementViewController: SegementSlideDefaultViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // SegementSlideの更新
        reloadData()
        // スライドの初期位置
        defaultSelectedIndex = 0
    }
    
    // スライドのタイトルを設定
    override var titlesInSwitcher: [String] {
        return ["一覧表示", "カレンダー表示", "使用済", "ゴミ箱"]
    }


    // スライドにインスタンス化したストーリーボードを渡す
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        switch index {
            
        case 0:
            let listVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "listVC") as! ListViewController
            return listVC
            
        case 1:
            let calendarVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "calendarVC") as! CalendarViewController
            return calendarVC
            
        case 2:
            let usedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "usedVC") as! UsedViewController
            return usedVC
            
        case 3:
            let trashedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "trashedVC") as! TrashedViewController
            return trashedVC
            
        default:
            let listVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "listVC") as! ListViewController
            return listVC
        }
    }
}

