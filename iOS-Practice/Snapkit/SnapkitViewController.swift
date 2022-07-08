//
//  SnapkitViewController.swift
//  iOS-Practice
//
//  Created by 황찬미 on 2022/07/07.
//

import UIKit
import SnapKit
import Then

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
        
        setTextAlpha()
        animate()
    }
    
    private var nextButton = UIButton().then {
        $0.setTitle("다음", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .systemBlue
        $0.addTarget(self, action: #selector(hideLabelAndButton), for: .touchUpInside)
    }
    
    private var textLabelStackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 0.26
        $0.distribution = .fillEqually
        $0.alignment = .fill
    }
    
    private var textLabel = UILabel().then {
        $0.text = "오늘도 지친 몸을 끌고 집으로 돌아온 당신,"
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 13)
    }
    private var textLabel2 = UILabel().then {
        $0.text = "방 안에 정체 불명의 상자 하나가 놓여 있습니다."
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 13)
    }
    
    private var textLabel3 = UILabel().then {
        $0.text = "상자를 터치해서 안을 확인해보세요."
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 13)
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

        nextButton.snp.makeConstraints {
            view.addSubview(nextButton)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(12)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(48)
        }
        
        view.addSubview(textLabelStackView)
        textLabelStackView.addArrangedSubview(textLabel)
        textLabelStackView.addArrangedSubview(textLabel2)
        
        textLabelStackView.snp.makeConstraints {
            $0.bottom.equalTo(nextButton.snp.top).offset(-69)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(50)
        }
    }
    
    private func configreLayout2() {
        view.addSubview(textLabel3)
        textLabel3.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(43)
            $0.leading.trailing.equalToSuperview().inset(95)
        }
    }
    
    func animate() {
        UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
            self.textLabel.transform = CGAffineTransform(translationX: 0, y: -16)
            self.textLabel.alpha = 1
        }, completion: { _ in
            
            UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
                self.textLabel2.transform = CGAffineTransform(translationX: 0, y: -16)
                self.textLabel2.alpha = 1
            }, completion: { _ in
                UIView.animate(withDuration: 0.3, delay: 0.3, animations: {
                    self.nextButton.transform = CGAffineTransform(translationX: 0, y: -16)
                    self.nextButton.alpha = 1
                }, completion: { _ in })
            })
        })
    }
    
    func animate2() {
        UIView.animate(withDuration: 0.5, animations: {
            self.textLabel3.transform = CGAffineTransform(translationX: 0, y: -16)
            self.textLabel3.alpha = 1
        }, completion: { _ in })
    }

    
    func setTextAlpha() {
        textLabel.alpha = 0
        textLabel2.alpha = 0
        nextButton.alpha = 0
        textLabel3.alpha = 0
    }
    
    @objc func hideLabelAndButton() {
        textLabel.alpha = 0
        textLabel2.alpha = 0
        nextButton.alpha = 0
        
        configreLayout2()
        animate2()
    }
}
