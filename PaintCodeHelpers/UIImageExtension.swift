//
//  ReffindImages.swift
//  reffind
//
//  Created by Craig Stanford on 6/01/2015.
//  Copyright (c) 2015 Digital4ge Pty Ltd. All rights reserved.
//

import UIKit

extension UIImage {
    class func imageWithBezierPath(path: UIBezierPath, stroked: Bool, colour: UIColor, size:CGSize) -> UIImage {
        let widthScale = size.width/100.0
        let heightScale = size.height/100.0
        path.applyTransform(CGAffineTransformMakeScale(widthScale, heightScale))
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
        let context: CGContextRef = UIGraphicsGetCurrentContext()!;
        CGContextSaveGState(context);
        if stroked {
            colour.setStroke()
            path.stroke()
        } else {
            colour.setFill();
            path.fill()
        }
        let image:  UIImage = UIGraphicsGetImageFromCurrentImageContext();
        CGContextRestoreGState(context);
        UIGraphicsEndImageContext();
        return image;
    }
}

