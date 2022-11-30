//
//  ViewController.swift
//  Cars_Animation
//
//  Created by Raman Kozar on 30/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yellowCarTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var greenCarTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var purpleCarTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var raceView: UIView!
    
    @IBOutlet weak var yellowCarImage: UIImageView!
    @IBOutlet weak var greenCarImage: UIImageView!
    @IBOutlet weak var purpleCarImage: UIImageView!
    
    let duration: Double = 6.0
    let delay: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start(_ sender: Any) {
        
        let yellowCarHeight = yellowCarImage.frame.height
        let greenCarHeight = greenCarImage.frame.height
        let purpleCarHeight = purpleCarImage.frame.height
        
        let distanceYellow = raceView.frame.height - CGFloat(yellowCarHeight + 20)
        let distanceGreen = raceView.frame.height - CGFloat(greenCarHeight + 20)
        let distancePurple = raceView.frame.height - CGFloat(purpleCarHeight + 20)
        
        self.view.layoutIfNeeded()
        
        UIView.animate(withDuration: duration, delay: delay, options: .curveLinear, animations: {
            
            self.greenCarTopConstraint.constant = distanceGreen
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            
            self.purpleCarTopConstraint.constant = distancePurple
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            
            self.yellowCarTopConstraint.constant = distanceYellow
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }
    
}

