//
//  ViewController.swift
//  ZegoVideoConferenceDemo
//
//  Created by zego on 2022/11/23.
//

import UIKit
import ZegoUIKitSDK
import ZegoUIKitPrebuiltVideoConference

class ViewController: UIViewController {
    
    let appID: UInt32 = <#YourAppID#>
    let appSign: String = <#YourAppSign#>
    
    let userID: String = String(format: "%d", arc4random() % 999999)
    var userName: String = "YourUserName"
    
    let conferenceID: String = "123"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func joinConferenceClick(_ sender: Any) {
        let config: ZegoUIKitPrebuiltVideoConferenceConfig = ZegoUIKitPrebuiltVideoConferenceConfig()
        let conferenceVC: ZegoUIKitPrebuiltVideoConferenceVC = ZegoUIKitPrebuiltVideoConferenceVC.init(appID, appSign: appSign, userID: userID, userName: userName, conferenceID: conferenceID, config: config)
        conferenceVC.modalPresentationStyle = .fullScreen
        self.present(conferenceVC, animated: true, completion: nil)
    }
    

}

