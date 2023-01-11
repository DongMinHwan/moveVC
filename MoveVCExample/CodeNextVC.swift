//
//  CodeNextVC.swift
//  MoveVCExample
//
//  Created by DongMin Hwang on 2023/01/11.
//

import UIKit

class CodeNextVC: UIViewController {

    let mainLabel = UILabel()
    var string : String = ""
    //MARK: - 백버튼 생성
    let backButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        makeAutoLayout()
     
    }
    
    func setup() {
        
        mainLabel.text = string
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.backgroundColor = .white
    }
    
    
    
    func makeAutoLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false // 자동으로 잡아주는것을 꺼줌
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true // X축 중앙
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true// Y축 중앙
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true //넓이
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true //높이
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true // 밑에서 40 만큼
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true // x축에서 센터에 맞추겠다 view x축 중앙에
    }
    

 
    @objc func backButtonTapped(){
        self.dismiss(animated: false)
    }
}
