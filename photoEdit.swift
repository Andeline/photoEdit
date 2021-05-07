//
//  photoEdit.swift
//  photoEdit
//
//  Created by 蔡佳穎 on 2021/5/5.
//

import UIKit

class photoEdit: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photobgView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width: CGFloat = 300
        var height: CGFloat = 0
        
        messageLabel.text = messageText
        
        if ratio == "1:1" {
            height = width
            messageLabel.frame = CGRect(x: 25, y: height + 47, width: 300, height: 0)
            messageLabel.sizeToFit()
        } else if ratio == "3:4" {
            height = width / 3 * 4
            messageLabel.frame = CGRect(x: 25, y: height + 47, width: 300, height: 0)
            messageLabel.sizeToFit()
        } else {
            height = width / 16 * 9
            messageLabel.frame = CGRect(x: 25, y: height + 47, width: 300, height: 0)
            messageLabel.sizeToFit()
        }
        
        photoImageView.frame = CGRect(x: (photobgView.frame.width - width) / 2, y: 25, width: width, height: height)
        photobgView.frame = CGRect(x: 31, y: 106, width: 350, height: height+160)
    }
}
