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
        let register = UIBarButtonItem(title: "クーポン登録", style: .plain, target: self, action: #selector(goRegisterVC))
        let tagManage = UIBarButtonItem(title: "タグ管理", style: .plain, target: self, action: #selector(goTagManageVC))
        let systemEdit = UIBarButtonItem(title: "システム設定", style: .plain, target: self, action: #selector(gosystemEditVC))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        // ツールバーボタンを配置
        viewController.toolbarItems = [register, flexibleSpace,  tagManage, flexibleSpace, systemEdit]
    }
    
    // ツールバーボタンをタップした時の処理
    // クーポン登録画面を呼び出すメソッド
    @objc func goRegisterVC() {
        /*
        let storyboard: UIStoryboard = self.storyboard!
        let nextVC = storyboard.instantiateViewController(withIdentifier: "registerVC")
        nextVC.modalPresentationStyle = .fullScreen // フルスクリーンで遷移
        self.present(nextVC, animated: true, completion: nil)
         */
    }
    // タグ管理画面を呼び出すメソッド
    @objc func goTagManageVC() {
        /*
        let storyboard: UIStoryboard = self.storyboard!
        let nextVC = storyboard.instantiateViewController(withIdentifier: "TagManageVC")
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true, completion: nil)
         */
    }
    // 設定画面を呼び出すメソッド
    @objc func gosystemEditVC() {
        /*
        let storyboard: UIStoryboard = self.storyboard!
        let nextVC = storyboard.instantiateViewController(withIdentifier: "systemEditVC")
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true, completion: nil)
         */
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
