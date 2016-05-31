//
//  BlopViewController.swift
//  blopper
//
//  Created by Cor Pruijs on 31/05/16.
//  Copyright © 2016 Cor Pruijs. All rights reserved.
//

import UIKit

class BlopViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var blopLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    let blopEngine = BlopEngine(blopValue: 7)
    
    func updateUI() {
        
        // blop label
        switch blopEngine.currentAnswer {
        case .blop:
            blopLabel.text = "Blop!"
            view.backgroundColor = UIColor.redColor()
        case .number(let number):
            blopLabel.text = "\(number)"
            view.backgroundColor = UIColor.greenColor()
        }
        
        // count label
        countLabel.text = "\(blopEngine.count)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func screenTapped(sender: UITapGestureRecognizer) {
        blopEngine.next()
        updateUI()
    }
    
    @IBAction func reset(sender: UIButton) {
        blopEngine.reset()
        updateUI()
    }
    
}

