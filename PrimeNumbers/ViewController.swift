//
//  ViewController.swift
//  PrimeNumbers
//
//  Created by Kanishk Kamalvanshi on 7/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var numberEntered: UITextField!
    
    @IBAction func ButtonEnter(_ sender: Any) {
        
        //checking whether user has entered in text
        if let userEnteredString = numberEntered.text {
            let numberInput = Int(userEnteredString)
            
            //checking to see if we can convert user entered string into integer
            if let num = numberInput {
            
                var isPrime = true
                var i = 2
                
                
                if num == 1 {
                    isPrime = false
                } else {
                    while i < num {
                        if num % i == 0 {
                            isPrime = false
                        }
                        i+=1
                    }
                }
                
                
                if isPrime {
                    Result.text = "\(num) is Prime"
                } else {
                    Result.text = "\(num) is not Prime"
                }
                
                if num <= 0 {
                    Result.text = "Please enter a positive whole number"
                }
            }
            
            
        } else {
            Result.text = "Please enter a positive whole number"
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

