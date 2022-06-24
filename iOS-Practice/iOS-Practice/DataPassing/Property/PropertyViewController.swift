//
//  PropertyViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/06/24.
//

import UIKit

class PropertyViewController: UIViewController {
    
    var textData: String?

    @IBOutlet weak var BdataLabel: UILabel!
    @IBOutlet weak var BtextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    func setData() {
        BdataLabel.text = textData
    }
}
