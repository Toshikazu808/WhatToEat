//
//  ViewController.swift
//  WhatToEat
//
//  Created by Ryan Kanno on 6/18/21.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var titleLabel: UILabel!
   @IBOutlet weak var foodLabel: UILabel!
   @IBOutlet weak var chooseButton: UIButton!
   @IBOutlet weak var foodImage: UIImageView!
   private let foods = ["Ramen", "DimSum", "Burgers", "Pizza", "Pho", "Chipotle", "FriedChicken"]
   
   override func viewDidLoad() {
      super.viewDidLoad()
      chooseButton.layer.cornerRadius = 6
      foodImage.layer.masksToBounds = true
      foodImage.clipsToBounds = true
      foodImage.layer.cornerRadius = 6
      setGradientBackground()
      setLabels()
   }
   
   private func setGradientBackground() {
      let gradientColors = [UIColor(named: "LimeLight")?.cgColor, UIColor(named: "LimeDark")?.cgColor]
      let gradientLayer = CAGradientLayer()
      gradientLayer.colors = gradientColors as? [CGColor]
      gradientLayer.locations = [0.0, 1.0]
      gradientLayer.frame = self.view.bounds
      self.view.layer.insertSublayer(gradientLayer, at: 0)
   }
   
   private func setLabels() {
      titleLabel.textColor = .white
      titleLabel.layer.shadowColor = UIColor.black.cgColor
      titleLabel.layer.shadowRadius = 3.0
      titleLabel.layer.shadowOpacity = 1.0
      titleLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
      titleLabel.layer.masksToBounds = false
      
      foodLabel.textColor = .white
      foodLabel.layer.shadowColor = UIColor.black.cgColor
      foodLabel.layer.shadowRadius = 3.0
      foodLabel.layer.shadowOpacity = 1.0
      foodLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
      foodLabel.layer.masksToBounds = false
   }

   @IBAction func chooseTapped(_ sender: UIButton) {
      let index = Int.random(in: 0..<foods.count)
      foodImage.image = UIImage(named: foods[index])
      foodLabel.text = foods[index]
   }
   
}

