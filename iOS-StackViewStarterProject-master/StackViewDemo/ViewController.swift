//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Jordan Morgan on 6/10/15.
//  Copyright © 2015 Jordan Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var verticalStackView: UIStackView!
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addStar(sender: AnyObject) {
        let starImageView = UIImageView(image: UIImage(named: "star"))
        starImageView.contentMode = .ScaleAspectFit
        self.horizontalStackView.addArrangedSubview(starImageView)
        UIView.animateWithDuration(0.25, animations: {
            self.horizontalStackView.layoutIfNeeded()
        })
    }
    @IBAction func removeStar(sender: AnyObject) {
        let starView = self.horizontalStackView.arrangedSubviews.last
        if let aStarView = starView {
            self.horizontalStackView.removeArrangedSubview(aStarView)
            aStarView.removeFromSuperview()
            UIView.animateWithDuration(0.25, animations: {
                self.horizontalStackView.layoutIfNeeded()
            })
        }
    }
}

