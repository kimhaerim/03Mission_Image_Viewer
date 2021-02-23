//
//  ViewController.swift
//  03Mission_Image_Viewer
//
//  Created by 김해림 on 2021/02/24.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1 //첫번째 이미지
    var maxImage = 6 //마지막 이미지
    //이미지 이름이 1~6으로 저장되어있음
    
    @IBOutlet var imgView: UIImageView!
    //아웃렛 변수 선언
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //액션 함수 정의
    @IBAction func btnPreImg(_ sender: UIButton) {
        numImage = numImage - 1 //저장된 번호에서 1을 뺌
        if (numImage < 1){ //1보다 작으면
            numImage = maxImage //마지막 사진으로
        }
        let imgName = String(numImage) + ".png" //이미지 번호에 png를 붙임
        imgView.image = UIImage(named: imgName)
    }
    
    @IBAction func btnNextImg(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) { //6보다 크면
            numImage = 1 //첫번째 사진으로
        }
        let imgName = String(numImage) + ".png"
        imgView.image = UIImage(named: imgName)
    }
    
}
