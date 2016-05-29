//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Justine Kay on 5/29/16.
//  Copyright © 2016 Justine Kay. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.datasource = self
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(target: faceView, action: "scale:"))
            //faceView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "changeHappiness"))
        }
    }
    
    var happiness: Int = 100
        { // 0 = super sad face, 100 = crazy happy face
        
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI() {
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50) / 50
    }
}
