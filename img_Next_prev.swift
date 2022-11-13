//
//  ViewController.swift
//  Swift_Code
//
//  Created by geonhan on 2022/11/13.
//

import UIKit

class ViewController: UIViewController {

    var cnt = 0
    var imgs = [String]()
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 1...5 {
            imgs.append(String(i) + ".png")
        }
        
        imgView.image = UIImage(named: imgs[0])
    }

    @IBAction func prevView(_ sender: UIButton) {
        if cnt - 1 > -1 {
            cnt -= 1;
            imgView.image = UIImage(named: imgs[cnt])
        }
    }
    @IBAction func nextView(_ sender: UIButton) {
        if cnt + 1 < 5 {
            cnt += 1
            imgView.image = UIImage(named: imgs[cnt])
        }
    }
}

