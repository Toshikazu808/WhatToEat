//
//  ViewController.swift
//  WhatToEat
//
//  Created by Ryan Kanno on 6/18/21.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var foodLabel: UILabel!
   @IBOutlet weak var chooseButton: UIButton!
   @IBOutlet weak var foodImage: UIImageView!
   let foods = ["Ramen", "DimSum", "Burgers", "Pizza", "Pho", "Chipotle", "FriedChicken"]
   
   override func viewDidLoad() {
      super.viewDidLoad()
      chooseButton.layer.cornerRadius = 6
      foodImage.layer.masksToBounds = true
      foodImage.clipsToBounds = true
      foodImage.layer.cornerRadius = 6
   }

   @IBAction func chooseTapped(_ sender: UIButton) {
      let index = Int.random(in: 0..<foods.count)
      foodImage.image = UIImage(named: foods[index])
      foodLabel.text = foods[index]
   }
   
}

