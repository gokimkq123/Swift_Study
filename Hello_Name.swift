//
//  ViewController.swift
//  Swift_Code
//
//  Created by geonhan on 2022/11/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var IblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        IblHello.text! = "Hello, " + txtName.text!
    }
    
}

