//
//  MainViewController.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 15/10/2018.
//  Copyright © 2018 Redmadrobot. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - IBOutlet
    
    @IBOutlet private weak var cloudOne: UIImageView!
    @IBOutlet private weak var cloudTwo: UIImageView!
    @IBOutlet private weak var lightning: UIImageView! {
        didSet { lightning.alpha = 0 }
    }
    @IBOutlet private weak var flashButton: UIButton!
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cloudOne.addParallax(withValue: -60)
        cloudTwo.addParallax(withValue: 40)
        flashButton.addParallax(withValue: -20)
    }
    
    // MARK: - IBAction

    @IBAction func flashTapped(_ sender: Any) {
        // Инициализируем генератор
        let generator = UINotificationFeedbackGenerator()
        // Вызываем taptic feedback с типом success
        generator.notificationOccurred(.error)
        flashButton.shake()
    }
    
}

