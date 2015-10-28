//
//  ViewController.swift
//  PaintCodeHelpers
//
//  Created by Craig Stanford on 29/10/2015.
//  Copyright © 2015 MonsterBomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var bottomImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.topImageView.image = UIImage.imageWithBezierPath(UIBezierPath.pathForCross(), stroked: true, colour: UIColor.redColor(), size: self.topImageView.frame.size)
        
        self.bottomImageView.image = UIImage.imageWithBezierPath(UIBezierPath.pathForTick(), stroked: false, colour: UIColor.greenColor(), size: self.bottomImageView.frame.size)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

