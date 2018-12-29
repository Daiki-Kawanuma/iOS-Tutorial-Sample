//
//  NotificationTabelViewController.swift
//  TutorialSample
//
//  Created by Daiki Kawanuma on 2018/12/29.
//  Copyright © 2018年 Daiki Kawanuma. All rights reserved.
//

import Foundation
import UIKit

class NotificationTableViewController: UITableViewController {
    
    let array = [
        Notification(imageUrl:"https://petomorrow.jp/wordpress/wp-content/uploads/2017/04/1f3ef1d619c0894739cc99ac98266b71-480x480.jpg", attention:"ねこさんがあなたのクリップを評価しました", time:"30分前", userNameLength: 2),
        Notification(imageUrl:"https://www.necoichi.co.jp/files/topics/6239_ext_01_0.jpg", attention:"にゃんこさんがあなたのクリップを評価しました", time:"1時間前", userNameLength: 4),
        Notification(imageUrl:"https://rr.img.naver.jp/mig?src=http%3A%2F%2Fimgcc.naver.jp%2Fkaze%2Fmission%2FUSER%2F20180308%2F74%2F7066864%2F19%2F1080x1080x8184e8441ea330f70655e9.jpg%2F300%2F600&twidth=300&theight=0&qlt=80&res_format=jpg&op=r", attention:"ぷーさんがあなたのクリップを評価しました", time:"3時間前", userNameLength: 2),
        Notification(imageUrl:"https://petomorrow.jp/wordpress/wp-content/uploads/2017/04/1f3ef1d619c0894739cc99ac98266b71-480x480.jpg", attention:"ねこさんがあなたのクリップを評価しました", time:"30分前", userNameLength: 2),
        Notification(imageUrl:"https://www.necoichi.co.jp/files/topics/6239_ext_01_0.jpg", attention:"にゃんこさんがあなたのクリップを評価しました", time:"1時間前", userNameLength: 4),
        Notification(imageUrl:"https://rr.img.naver.jp/mig?src=http%3A%2F%2Fimgcc.naver.jp%2Fkaze%2Fmission%2FUSER%2F20180308%2F74%2F7066864%2F19%2F1080x1080x8184e8441ea330f70655e9.jpg%2F300%2F600&twidth=300&theight=0&qlt=80&res_format=jpg&op=r", attention:"ぷーさんがあなたのクリップを評価しました", time:"3時間前", userNameLength: 2),
        Notification(imageUrl:"https://petomorrow.jp/wordpress/wp-content/uploads/2017/04/1f3ef1d619c0894739cc99ac98266b71-480x480.jpg", attention:"ねこさんがあなたのクリップを評価しました", time:"30分前", userNameLength: 2),
        Notification(imageUrl:"https://www.necoichi.co.jp/files/topics/6239_ext_01_0.jpg", attention:"にゃんこさんがあなたのクリップを評価しました", time:"1時間前", userNameLength: 4),
        Notification(imageUrl:"https://rr.img.naver.jp/mig?src=http%3A%2F%2Fimgcc.naver.jp%2Fkaze%2Fmission%2FUSER%2F20180308%2F74%2F7066864%2F19%2F1080x1080x8184e8441ea330f70655e9.jpg%2F300%2F600&twidth=300&theight=0&qlt=80&res_format=jpg&op=r", attention:"ぷーさんがあなたのクリップを評価しました", time:"3時間前", userNameLength: 2),
        Notification(imageUrl:"https://petomorrow.jp/wordpress/wp-content/uploads/2017/04/1f3ef1d619c0894739cc99ac98266b71-480x480.jpg", attention:"ねこさんがあなたのクリップを評価しました", time:"30分前", userNameLength: 2),
        Notification(imageUrl:"https://www.necoichi.co.jp/files/topics/6239_ext_01_0.jpg", attention:"にゃんこさんがあなたのクリップを評価しました", time:"1時間前", userNameLength: 4),
        Notification(imageUrl:"https://rr.img.naver.jp/mig?src=http%3A%2F%2Fimgcc.naver.jp%2Fkaze%2Fmission%2FUSER%2F20180308%2F74%2F7066864%2F19%2F1080x1080x8184e8441ea330f70655e9.jpg%2F300%2F600&twidth=300&theight=0&qlt=80&res_format=jpg&op=r", attention:"ぷーさんがあなたのクリップを評価しました", time:"3時間前", userNameLength: 2)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationCell", for: indexPath) as! NotificationTableViewCell
        
        // アイコン画像設定
        cell.iconImageView.image = nil
        let url = URL(string: array[indexPath.row].imageUrl)
        do {
            let data = try Data(contentsOf: url!)
            let image = UIImage(data: data)
            cell.iconImageView.image = image
        }catch let err {
            print("Error : \(err.localizedDescription)")
        }
        
        // 通知文字設定
        let attributedText = NSMutableAttributedString(string: array[indexPath.row].attention)
        attributedText.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 16), range: NSMakeRange(0, array[indexPath.row].userNameLength))
        cell.textLabel!.attributedText = attributedText
        
        // 時刻文字設定
        cell.timeLabel.text = array[indexPath.row].time
        
        return cell
    }
}
