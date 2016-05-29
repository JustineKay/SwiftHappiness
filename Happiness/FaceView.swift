//
//  FaceView.swift
//  Happiness
//
//  Created by Justine Kay on 5/29/16.
//  Copyright © 2016 Justine Kay. All rights reserved.
//

import UIKit

class FaceView: UIView
{
    var lineWidth: CGFloat = 3 { didSet { setNeedsDisplay() } }
    var color: UIColor = UIColor.blueColor() { didSet { setNeedsDisplay() } }
    
    var faceCenter: CGPoint {
        return convertPoint(center, toView: superview)
    }
    
    var faceRadius:CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2
    }
    
        override func drawRect(rect: CGRect)
    {
        let facePath = UIBezierPath(arcCenter: faceCenter,
                                    radius: faceRadius,
                                    startAngle: 0,
                                    endAngle: CGFloat(2*M_PI),
                                    clockwise: true)
        
        facePath.lineWidth = lineWidth
        color.set()
        facePath.stroke()
    }
    
}
