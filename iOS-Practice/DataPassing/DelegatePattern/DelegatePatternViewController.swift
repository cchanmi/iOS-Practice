//
//  DelegatePatternViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/06/24.
//

import UIKit

protocol sendDataProtocol {
    func sendData(data: String?)
}

class DelegatePatternViewController: UIViewController {
    
    var delegate: sendDataProtocol?
    
    @IBOutlet weak var delegateTextLabel: UILabel!
    @IBOutlet weak var delegateTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func BackBtnDidTap(_ sender: UIButton) {
        
        if let data = delegateTextField.text {
            delegate?.sendData(data: data)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}
