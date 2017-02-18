//
//  ViewController.swift
//  AELottie
//
//  Created by Kish Patel on 17/02/2017.
//  Copyright © 2017 Kish Patel. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var animationViewContainer: UIView!
    var animationView: LAAnimationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.animationView = LAAnimationView.animationNamed("AnimationSpinnerUncropped")
        self.animationView.loopAnimation = true
        
        self.animationView.layer.cornerRadius = 40
        self.animationView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.animationView.layer.position = CGPoint(x: self.animationViewContainer.frame.size.width / 2,
                                                    y: self.animationViewContainer.frame.size.height / 2)
        
        self.animationViewContainer.backgroundColor = UIColor.clear
        
        self.animationViewContainer.addSubview(self.animationView)
                
        self.animationView?.play(completion: { (finished) in
            // Do Something
            print("finished")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
    }

    
}

