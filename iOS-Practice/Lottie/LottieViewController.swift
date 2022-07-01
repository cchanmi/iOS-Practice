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
        let animationView = AnimationView(name: "110238-melt") // AnimationView(name: "lottie json 파일 이름")으로 애니메이션 뷰 생성
               animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300) // 애니메이션뷰의 크기 설정
               animationView.center = self.view.center // 애니메이션뷰의 위치설정
               animationView.contentMode = .scaleAspectFill // 애니메이션뷰의 콘텐트모드 설정
                   
               view.addSubview(animationView) // 애니메이션뷰를 메인뷰에 추가
               
        animationView.play()
        animationView.loopMode = .loop// 애미메이션뷰 실행
    }
}
