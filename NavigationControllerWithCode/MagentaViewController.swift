//
//  MagentaViewController.swift
//  NavigationControllerWithCode
//
//  Created by MOHIT SHARMA on 10/09/20.
//  Copyright © 2020 Ankit Sharma. All rights reserved.
//

import UIKit

class MagentaViewController: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor =  UIColor(red: 153/255.0, green: 0/255.0, blue: 77/255.0, alpha: 1.0)
        title = "MagentaVC"
        
        view.addSubview(button)
        button.setTitle("Orange", for: .normal)
        button.backgroundColor = .orange
        button.setTitleColor(.black , for: .normal)
        button.frame = CGRect(x: 140, y: 100, width: 100, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    @objc private func didTapButton() {
        let orangeVC = OrangeViewController()
        
        self.navigationController?.pushViewController(orangeVC, animated: true)
    }
    

}
