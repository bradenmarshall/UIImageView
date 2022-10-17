//
//  ViewController.swift
//  UIImageViewChallenge
//
//  Created by Ricky Bobby
//  Copyright © 2022 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var disappearingImageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var changeHintText: UIButton!
    
    var sliderValue: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func whenSliderMoved(_ slider: UISlider) {
        disappearingImageView.alpha = CGFloat(slider.value)
    }

    @IBAction func imageChangeWhenPressed(_ sender: UIButton) {
        if disappearingImageView.image == UIImage(named: "mountain") {
            disappearingImageView.image = UIImage(named: "Binary")
        }
        else { disappearingImageView.image = UIImage(named: "mountain")
        }
    }
    @IBAction func imageHintPressed(_ sender: UIButton) {
        disappearingImageView.image = UIImage(named: "red x")


    }
    
}
