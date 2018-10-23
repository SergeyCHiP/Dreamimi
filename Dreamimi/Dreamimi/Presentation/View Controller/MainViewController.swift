//
//  MainViewController.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 15/10/2018.
//  Copyright © 2018 Redmadrobot. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private weak var flashButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func flashTapped(_ sender: Any) {
        // Инициализируем генератор
        let generator = UINotificationFeedbackGenerator()
        // Вызываем taptic feedback с типом success
        generator.notificationOccurred(.success)
    }
    
}

