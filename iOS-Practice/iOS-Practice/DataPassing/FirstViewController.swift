//
//  FirstViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/06/24.
//

import UIKit

class FirstViewController: UIViewController, sendDataProtocol {

    @IBOutlet weak var AdataLabel: UILabel!
    @IBOutlet weak var AtextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNotiObserver()
    }
    
    // MARK: Property
    @IBAction func nextBtnDidTap(_ sender: UIButton) {
        guard let PropertyViewController = UIStoryboard(name: "Property", bundle: nil).instantiateViewController(withIdentifier: "PropertyViewController") as? PropertyViewController else { return }
        
        PropertyViewController.textData = AtextField.text
        self.navigationController?.pushViewController(PropertyViewController, animated: true)
    }
    
    // MARK: Delegate Pattern
    func sendData(data: String?) {
        AdataLabel.text = data
    }
    
    @IBAction func delegateBtnDidTap(_ sender: UIButton) {
        guard let delegateVewController = UIStoryboard(name: "DelegatePattern", bundle: nil).instantiateViewController(withIdentifier: "DelegatePatternViewController") as? DelegatePatternViewController else { return }

        delegateVewController.delegate = self
        self.navigationController?.pushViewController(delegateVewController, animated: true)
    }
    
    // MARK: Notification
    @IBAction func notificationBtnDidTap(_ sender: Any) {
        guard let notificationViewController = UIStoryboard(name: "Notification", bundle: nil).instantiateViewController(withIdentifier: "NotificationViewController") as? NotificationViewController else { return }

        self.navigationController?.pushViewController(notificationViewController, animated: true)
    }

    private func addNotiObserver() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(BtnClick),
                                               name: NSNotification.Name("notiData"),
                                               object: nil)
    }
    
    @objc func BtnClick(notification: NSNotification) {
        if let text = notification.object as? String {
            AdataLabel.text = text
        }
    }
    
    // MARK: Closure
    @IBAction func ClosureBtnDidTap(_ sender: UIButton) {
        guard let closureViewController = UIStoryboard(name: "Closure", bundle: nil).instantiateViewController(withIdentifier: "ClosureViewController") as? ClosureViewController else { return }
        
        closureViewController.completionHandler = { data in
            self.AdataLabel.text = data
        }
        
        self.navigationController?.pushViewController(closureViewController, animated: true)
    }
    
}
