//
//  NavigationController.swift
//  PaperCouponManager
//
//  Created by 小早川　聖 on 2022/01/23.
//

import UIKit

class NavigationController: UINavigationController,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self

        // Do any additional setup after loading the view.
    }
    
    // ツールバーの設定
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        
        // ツールバーボタンの設定
        let register = UIBarButtonItem(title: "クーポン登録", style: .plain, target: self, action: nil)
        let tagManage = UIBarButtonItem(title: "タグ管理", style: .plain, target: self, action: nil)
        let systemEdit = UIBarButtonItem(title: "システム設定", style: .plain, target: self, action: nil)
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        // ツールバーボタンを配置
        viewController.toolbarItems = [register, flexibleSpace,  tagManage, flexibleSpace, systemEdit]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
