//
//  ClosureViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/06/24.
//

import UIKit

class ClosureViewController: UIViewController {

    @IBOutlet weak var closureTextField: UITextField!
    
    var completionHandler: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func BackBtnDidTap(_ sender: UIButton) {
        completionHandler?(self.closureTextField.text ?? "")
        self.navigationController?.popViewController(animated: true)
    }
}
