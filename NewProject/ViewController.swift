//
//  ViewController.swift
//  NewProject
//
//  Created by 503 on 2020/02/24.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var surface: UIView!
    //현재 전등의 상태를 너터냐눈 논리값
    //변수로 선언한 이유 전등값은 고정되어 있으면 안되니까
    var opacity:CGFloat = 0.8
    var flag:Bool = false
    @IBOutlet weak var bt: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_click(_ sender: Any) {
        flag = !flag
        opacity = (flag) ? 0.1 : 0.8
        //위애 덮어잔 뷰의 알파값 조정
        surface.alpha = CGFloat(opacity)
        
        //버튼의 이미지 변경하기
        var url = (flag) ? "switch_on.png" : "switch_off.png"
        bt.setImage(UIImage(named:url), for: .normal)
    }
    
}

