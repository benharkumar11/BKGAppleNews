//
//  Signup.swift
//  BKGAppleNews
//
//  Created by Benhar Kumar on 8/29/24.
//

import UIKit

class Signup: UIViewController {
    
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func Increasevalue(_ sender: Any) {
        i = i + 1
        print("value is increased: \(i)")
    }

    
    @IBAction func Decreasevalue(_ sender: Any) {
        i = i - 1
        print("Value is decreased: \(i)")
    }
    
}
