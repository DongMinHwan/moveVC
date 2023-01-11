//
//  StoryBoardMoveVC.swift
//  MoveVCExample
//
//  Created by DongMin Hwang on 2023/01/11.
//

import UIKit

class StoryBoardMoveVC: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var string : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = string
    }
    

    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: false)
    }
    
}
