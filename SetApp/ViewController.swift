//
//  ViewController.swift
//  SetApp
//
//  Created by Maxim Potapov on 27.07.2020.
//  Copyright © 2020 Maxim Potapov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets & Views
    @IBOutlet var cardButtons: [UIButton]!
    
    // MARK: - Properties
    
    // MARK: - Delegates
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButtonFromModel()
        // Do any additional setup after loading the view.
    }

}

// MARK: - IBActions & Button target actions
extension ViewController {
    
}

// MARK: - Open Methods
extension ViewController {
    
}

// MARK: - Private methods
private extension ViewController {
    func updateButtonFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            button.setTitle( String (index), for: .normal)
            if index < 12 {
                button.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
            }
        }
    }
}

// MARK: - Delegate conformance
