//
//  ViewController.swift
//  CafeMiniApp
//
//  Created by JAYDEN SAWYER on 9/9/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var usrTextView: UITextView!
    @IBOutlet weak var textField2: UITextField!
    var cart: [String : Int] = [:]
    var menu = ""
    var food = ["Pizza","chicken","Soup","Hotdog","Bagel"]
     var price = ["$5","$3","$4","$2.50","$1.75"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for i in 0..<food.count{
            menu += "\(food[i])  \(price[i]) \n"
        }
        textView.text = menu
    }
    @IBAction func addoutlet(_ sender: UIButton) {
        var foods = textField.text!
        var quantity = textField2.text!
      
    }
    
}
