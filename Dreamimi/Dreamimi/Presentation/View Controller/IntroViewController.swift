//
//  IntroViewController.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 23/10/2018.
//  Copyright © 2018 Redmadrobot. All rights reserved.
//

import UIKit

final class IntroViewController: UIViewController {
    
    @IBAction func nextTapped(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "MainViewController")
        viewController.modalTransitionStyle = .crossDissolve
        show(viewController, sender: nil)
    }
}
