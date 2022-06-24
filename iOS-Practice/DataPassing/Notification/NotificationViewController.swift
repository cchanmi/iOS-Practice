//
//  NotificationViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/06/24.
//

/*
 1. Notification - center로 post 하는 방법
 
 2. Notification - Observer를 등록하는 방법
 */

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var notificationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func BackBtnDidTap(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name("notiData"), object: notificationTextField.text)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
