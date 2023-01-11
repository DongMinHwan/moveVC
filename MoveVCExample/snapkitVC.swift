//
//  snapkitVC.swift
//  MoveVCExample
//
//  Created by DongMin Hwang on 2023/01/11.
//

import UIKit
import SnapKit

class snapkitVC: UIViewController {
    var mainLabel  = UILabel()
    var backButton = UIButton()
    var string : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(mainLabel)
        self.view.addSubview(backButton)
        
//        mainLabel.text = string
        mainLabel.textAlignment = .center
        backButton.backgroundColor = .blue
        backButton.setTitle("뒤로가기", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.addTarget(self, action: #selector(backButton(_:)), for: .touchUpInside)
        
        backButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-15)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(25)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
    }
    
    @objc private func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
