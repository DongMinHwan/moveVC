//
//  ViewController.swift
//  MoveVCExample
//
//  Created by DongMin Hwang on 2023/01/11.
//

import UIKit
import SnapKit
import RxViewController
import Then

class ViewController: UIViewController {
    
    @IBOutlet weak var codeNextBtn: UIButton!

    @IBOutlet weak var sotryboardBtn: UIButton!
    
        let snapkitBtn : UIButton = {
            let button = UIButton(type: .custom)
            button.setTitle("Back", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .blue
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            button.addTarget(self, action: #selector(snapkitBtnClicked), for: .touchUpInside)
            return button
        }()
     
    //MARK: - Then을이용
//    let snapkitBtn = UIButton().then {
//        $0.setTitle("Back", for: .normal)
//        $0.setTitleColor(.white, for: .normal)
//        $0.backgroundColor = .blue
//        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
//        $0.addTarget(self, action: #selector(snapkitBtnClicked), for: .touchUpInside)
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(snapkitBtn)
        setup()
        snapkitBtn.backgroundColor = .blue
        snapkitBtn.setTitle("snapkitBtn", for: .normal)
    }
    //MARK: - code를 이용해 페이지 이동
    @IBAction func codeNextAction(_ sender: Any) {
        let vc = CodeNextVC()
//        vc.mainLabel.text = "코드로 이동"
        vc.string = "CodeNext"
        //code로 할경우 메모리에 한거번에 올라간다.
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    //MARK: - StoryBoard 을이용해 이동
    @IBAction func storyBoardNextBTn(_ sender: Any) {
        guard let storyboardVC = storyboard?.instantiateViewController(withIdentifier: "StoryBoardMoveVC") as? StoryBoardMoveVC else { return  }
        storyboardVC.string = "CodeNext"
        //storyboardVC.mainLabel.text = "스토리보드"
        //다이렉트로 데이터를 보내면 에러발생
        present(storyboardVC, animated: false)
    }
    //MARK: - Snapkit 을이용해 UI setting
    func setup() {
        snapkitBtn.snp.makeConstraints{ make in
            make.left.equalTo(sotryboardBtn.snp.left)
            make.right.equalTo(sotryboardBtn.snp.right)
            make.top.equalTo(sotryboardBtn.snp.bottom).offset(35)
            make.height.equalTo(35)
        }
        //MARK: - RxViewController 이용
//        snapkitBtn.rx.tap.bind { [weak self] in
//            print("snapkitButton")
//        let vc = snapkitVC() //객체 생성
////        vc.string = "snapkitCode"
//        vc.mainLabel.text = "스냅킷이동"
//        vc.modalPresentationStyle = .fullScreen
//            self?.present(vc, animated: true)
//        }
    }
    //MARK: - addTarget 이용
    @objc private func snapkitBtnClicked(_ sender: UIButton) {
            print("snapkitButton")
        let vc = snapkitVC() //객체 생성
//        vc.string = "snapkitCode"
        vc.mainLabel.text = "스냅킷이동"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

