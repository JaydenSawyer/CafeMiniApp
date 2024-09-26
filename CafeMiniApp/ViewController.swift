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
    @IBOutlet weak var label: UILabel!
    var cart: [String : Int] = [:]
    var menu = ""
    var food = ["Pizza","Chicken","Soup","Hotdog","Bagel"]
    var price = ["$5","$3","$4","$2.50","$1.75"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<food.count{
            menu += "\(food[i])  \(price[i]) \n"
        }
        textView.text = menu
    }
    func displayCart() {
        var totalPrice = 0.0
        var cartDisplay = "Your Cart:\n"
        
        for (item, amount) in cart {
            if let index = food.firstIndex(of: item) {
                let itemPriceString = price[index].dropFirst() // Remove the '$' from the price
                if let itemPrice = Double(itemPriceString) { // Convert to Double
                    let itemTotal = itemPrice * Double(amount)
                    totalPrice += itemTotal
                    cartDisplay += "\(item): \(amount) x $\(itemPrice) = $\(itemTotal)\n"
                }
            }
        }
        
        cartDisplay += "\nTotal Price: $\(totalPrice)"
        usrTextView.text = cartDisplay
        label.text = "Total: $\(totalPrice)"
    }

        @IBAction func addoutlet(_ sender: UIButton) {
            var foods = textField.text!
            var quantity = textField2.text!
            var idk = Int(quantity)!
            cart[foods] = idk
           
            displayCart()
            
            if food.contains(textField.text!) {
                    label.text = "Please pick another item off the menu."
            } else if !food.contains(textField.text!) {
                    label.text = "Please pick an valid item from menu."
            } else {
                label.text = "Item already in cart"
            }
            }
            }
                
            
        
    

