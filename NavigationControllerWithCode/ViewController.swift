//
//  ViewController.swift
//  NavigationControllerWithCode
//
//  Created by MOHIT SHARMA on 10/09/20.
//  Copyright © 2020 Ankit Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button1 = UIButton()
    
    let button2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Root View Controller"
        
        
        view.backgroundColor = UIColor(red: 204/255.0, green: 255/255.0, blue: 204/255.0, alpha: 1.0)
        
        view.addSubview(button1)
        button1.setTitle("Orange", for: .normal)
        button1.backgroundColor = .orange
        button1.setTitleColor(.black , for: .normal)
        button1.frame = CGRect(x: 140, y: 100, width: 100, height: 52)
        button1.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
       
        
        view.addSubview(button2)
        button2.setTitle("Magenta", for: .normal)
        button2.backgroundColor = UIColor(red: 153/255.0, green: 0/255.0, blue: 77/255.0, alpha: 1.0)
        button2.setTitleColor(.white , for: .normal)
        button2.frame = CGRect(x: 140, y: 350, width: 100, height: 52)
        button2.addTarget(self, action: #selector(didTapButton2), for: .touchUpInside)

        
    }
    
    @objc private func didTapButton1() {
        let orangeVC = OrangeViewController()
        
        self.navigationController?.pushViewController(orangeVC, animated: true)
    }

    @objc private func didTapButton2() {
        let magentaVC = MagentaViewController()
        
        self.navigationController?.pushViewController(magentaVC, animated: true)
    }

}





