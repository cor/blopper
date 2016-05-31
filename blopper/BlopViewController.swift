//
//  BlopViewController.swift
//  blopper
//
//  Created by Cor Pruijs on 31/05/16.
//  Copyright © 2016 Cor Pruijs. All rights reserved.
//

import UIKit

class BlopViewController: UIViewController {
    
    @IBOutlet weak var blopLabel: UILabel!
    
    var blopValue = BlopEngine.Answer.number(1) {
        didSet {
            switch blopValue {
            case .blop:
                blopLabel.text = "Blop!"
            case .number(let number):
                blopLabel.text = "\(number)"
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

