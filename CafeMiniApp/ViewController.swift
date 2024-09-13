//
//  ViewController.swift
//  CafeMiniApp
//
//  Created by JAYDEN SAWYER on 9/9/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var food = ["Soup","Taco","Pizza","burrito","chips"]
        var price = [5, 3, 8, 6, 2]
        
        var displayText = ""
              
              for i in 0..<food.count {
                  let itemDescription = "\(food[i]) is \(price[i]) dollars\n"
                  displayText += itemDescription
              }
              
              textview.text = displayText
          }
    }



