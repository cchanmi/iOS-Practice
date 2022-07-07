//
//  SnapkitViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/07/07.
//

import UIKit
import SnapKit

/*
 top = 슈퍼뷰의 top + 50
 left = 슈퍼뷰의 left + 50
 right = 슈퍼뷰의 right - 50
 bottom = 슈퍼뷰의 bottom - 50
 
 right, bottom 계산할 때 주의.
 */

class SnapkitViewController: UIViewController {
    
    // 뷰 인스턴스 생성
    lazy var greenView = UIView()
    lazy var purpleView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureLayout()
    }
    
    private func configureUI() {
        greenView.backgroundColor = .green
        purpleView.backgroundColor = .purple
    }
    
    private func configureLayout() {
        view.addSubview(greenView)
        greenView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(10)
            $0.leading.trailing.equalToSuperview().inset(10)
            $0.height.equalTo(100)
        }
        
        purpleView.snp.makeConstraints {
            view.addSubview(purpleView)
            $0.top.equalTo(greenView.snp.bottom).inset(20)
            $0.centerX.equalTo(greenView)
            $0.width.height.equalTo(50)
        }
    }
}
