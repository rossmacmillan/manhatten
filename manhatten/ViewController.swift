//
//  ViewController.swift
//  manhatten
//
//  Created by Ross MacMillan on 07/12/2017.
//  Copyright © 2017 Ross . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad(){}
    
    @IBAction func handlePan(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view{
            view.center = CGPoint(x:view.center.x + translation.x, y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
        if recognizer.state == UIGestureRecognizerState.began{
            image.transform.scaledBy(x: 1.5, y: 1.5)
        }
        if recognizer.state == UIGestureRecognizerState.ended{
            image.transform.scaledBy(x: 0.75, y: 0.75)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

