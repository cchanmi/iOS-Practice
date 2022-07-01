//
//  LottieViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/07/01.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let animationView = AnimationView(name: "110238-melt")
            animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
                   
            view.addSubview(animationView)
               
            animationView.play()
            animationView.loopMode = .loop
    }
}
