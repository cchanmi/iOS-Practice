//
//  NavigationViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/07/03.
//

import UIKit

class NavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextViewBtnDidTap(_ sender: UIButton) {
        guard let secondVC = UIStoryboard(name: "SecondNavigation", bundle: nil).instantiateViewController(withIdentifier: "SecondNavigationViewController") as? SecondNavigationViewController else { return }
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}
