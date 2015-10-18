//
//  LikesButtonImage.swift
//  Coding_Challenge
//
//  Asset created by using Sketch, FontAwesome, and PaintCode
//  Sketch: Import Font-Awesome Icon, Add Text, export as SVG
//  PaintCode: Import SVG, Export as Swift code
//
//  Created by Hesham Salman on 10/16/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LikesButtonImage: UIView {
    
    private let WIDTH: CGFloat = 131.0
    private let HEIGHT: CGFloat = 166.0
    
    override func drawRect(rect: CGRect) {
        let scaleWidth = self.bounds.width / WIDTH
        let scaleHeight = self.bounds.height / HEIGHT
        self.drawSelf(fillColor: UIColor.redColor(), scaleWidth: scaleWidth, scaleHeight: scaleHeight)
    }
    
    // Generated code (PaintCode) -- function renamed to something human-readable
    func drawSelf(fillColor fillColor: UIColor = UIColor(red: 0.505, green: 0.505, blue: 0.505, alpha: 1.000), scaleWidth: CGFloat = 1, scaleHeight: CGFloat = 1) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Page-1
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 0, 0.03)
        CGContextScaleCTM(context, scaleWidth, scaleHeight)
        
        //// likes_button
        //// fa-heart
        
        //// Fill-180 Drawing
        let fill180Path = UIBezierPath()
        fill180Path.moveToPoint(CGPointMake(11.8, 45.33))
        fill180Path.addCurveToPoint(CGPointMake(15.19, 53.04), controlPoint1: CGPointMake(12.82, 48.39), controlPoint2: CGPointMake(13.95, 50.89))
        fill180Path.addCurveToPoint(CGPointMake(19.5, 59.17), controlPoint1: CGPointMake(16.44, 55.2), controlPoint2: CGPointMake(17.91, 57.24))
        fill180Path.addCurveToPoint(CGPointMake(23.01, 63.36), controlPoint1: CGPointMake(21.08, 61.21), controlPoint2: CGPointMake(22.21, 62.57))
        fill180Path.addCurveToPoint(CGPointMake(24.7, 64.95), controlPoint1: CGPointMake(23.68, 64.16), controlPoint2: CGPointMake(24.36, 64.61))
        fill180Path.addLineToPoint(CGPointMake(64.09, 103.06))
        fill180Path.addCurveToPoint(CGPointMake(66.93, 104.19), controlPoint1: CGPointMake(64.89, 103.85), controlPoint2: CGPointMake(65.79, 104.19))
        fill180Path.addCurveToPoint(CGPointMake(69.76, 103.06), controlPoint1: CGPointMake(68.06, 104.19), controlPoint2: CGPointMake(68.97, 103.85))
        fill180Path.addLineToPoint(CGPointMake(109.04, 65.18))
        fill180Path.addCurveToPoint(CGPointMake(123.53, 36.6), controlPoint1: CGPointMake(118.66, 55.42), controlPoint2: CGPointMake(123.53, 46.01))
        fill180Path.addCurveToPoint(CGPointMake(115.49, 14.82), controlPoint1: CGPointMake(123.53, 27.41), controlPoint2: CGPointMake(120.81, 20.15))
        fill180Path.addCurveToPoint(CGPointMake(93.3, 7), controlPoint1: CGPointMake(110.17, 9.61), controlPoint2: CGPointMake(102.81, 7))
        fill180Path.addCurveToPoint(CGPointMake(85.38, 8.36), controlPoint1: CGPointMake(90.7, 7), controlPoint2: CGPointMake(88.1, 7.45))
        fill180Path.addCurveToPoint(CGPointMake(77.79, 12.1), controlPoint1: CGPointMake(82.67, 9.27), controlPoint2: CGPointMake(80.06, 10.51))
        fill180Path.addCurveToPoint(CGPointMake(71.68, 16.41), controlPoint1: CGPointMake(75.42, 13.58), controlPoint2: CGPointMake(73.38, 15.05))
        fill180Path.addCurveToPoint(CGPointMake(66.93, 20.72), controlPoint1: CGPointMake(70.1, 17.77), controlPoint2: CGPointMake(68.4, 19.13))
        fill180Path.addCurveToPoint(CGPointMake(62.17, 16.41), controlPoint1: CGPointMake(65.46, 19.13), controlPoint2: CGPointMake(63.76, 17.77))
        fill180Path.addCurveToPoint(CGPointMake(56.06, 12.1), controlPoint1: CGPointMake(60.47, 15.05), controlPoint2: CGPointMake(58.44, 13.58))
        fill180Path.addCurveToPoint(CGPointMake(48.48, 8.36), controlPoint1: CGPointMake(53.8, 10.51), controlPoint2: CGPointMake(51.19, 9.27))
        fill180Path.addCurveToPoint(CGPointMake(40.55, 7), controlPoint1: CGPointMake(45.76, 7.45), controlPoint2: CGPointMake(43.15, 7))
        fill180Path.addCurveToPoint(CGPointMake(18.36, 14.82), controlPoint1: CGPointMake(31.04, 7), controlPoint2: CGPointMake(23.68, 9.61))
        fill180Path.addCurveToPoint(CGPointMake(10.33, 36.6), controlPoint1: CGPointMake(13.04, 20.15), controlPoint2: CGPointMake(10.33, 27.41))
        fill180Path.addCurveToPoint(CGPointMake(11.8, 45.33), controlPoint1: CGPointMake(10.33, 39.43), controlPoint2: CGPointMake(10.78, 42.38))
        fill180Path.closePath()
        fill180Path.miterLimit = 4;
        
        fill180Path.usesEvenOddFillRule = true;
        
        fillColor.setFill()
        fill180Path.fill()
        
        //// Label Drawing
        let labelRect = CGRectMake(2, 107.97, 129, 58)
        let labelStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        labelStyle.alignment = .Left
        
        let labelFontAttributes = [NSFontAttributeName: UIFont(name: "Helvetica-Light", size: 46)!, NSForegroundColorAttributeName: fillColor, NSParagraphStyleAttributeName: labelStyle]
        
        "LIKES".drawInRect(labelRect, withAttributes: labelFontAttributes)
        
        CGContextRestoreGState(context)
    }
}