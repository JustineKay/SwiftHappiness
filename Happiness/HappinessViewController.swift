//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Justine Kay on 5/29/16.
//  Copyright © 2016 Justine Kay. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController
{
    var happiness: Int = 50 { // 0 = sad face, 100 = crazy happy face
        
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI()
    {
        
    }
    
}
