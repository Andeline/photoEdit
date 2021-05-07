//
//  ViewController.swift
//  photoEdit
//
//  Created by 蔡佳穎 on 2021/5/2.
//

import UIKit

//global var 全域變數
var messageText = ""
var ratio = "1:1"

class ViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var bgImageView: UIImageView!
    
    let width: CGFloat = 320
    var height: CGFloat = 320
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.frame = CGRect(x: (bgImageView.frame.width - width) / 2, y: (bgImageView.frame.height - height) / 2 + 223, width: width, height: height)
        
        //所有Navigation Bar透明
        let image = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.isTranslucent = true
    }

    @IBAction func changeSize(_ sender: UISegmentedControl) {
        height = 0
        
        if sender.selectedSegmentIndex == 0 {
            height = width
            ratio = "1:1"
        } else if sender.selectedSegmentIndex == 1 {
            height = width/3*4
            ratio = "3:4"
        } else {
            height = width/16*9
            ratio = "16:9"
        }
        
        photoImageView.frame = CGRect(x: (bgImageView.frame.width - width) / 2, y: (bgImageView.frame.height - height) / 2 + 223, width: width, height: height)
        bgImageView.frame = CGRect(x: 0, y: 223, width: view.frame.width, height: 414)
    }
    
    @IBAction func closeKeyboard(_ sender: UITextField) {
        messageText = messageTextField.text!
    }
}

