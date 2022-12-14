//
//  ViewController.swift
//  Swift_Code
//
//  Created by geonhan on 2022/11/13.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn : UIImage?
    var imgOff : UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "file_name")
        imgOff = UIImage(named: "file_name")
        
        imgView.image = imgOn
    }

    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale : CGFloat = 2.0
        var newWidth : CGFloat, newHeight : CGFloat
        
        if isZoom{
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            
            btnResize.setTitle("νλ", for: .normal)
        }
        else{
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
                        
            btnResize.setTitle("μΆμ", for: .normal)
        }

        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        }
        else{
            imgView.image = imgOff
        }
    }
}

