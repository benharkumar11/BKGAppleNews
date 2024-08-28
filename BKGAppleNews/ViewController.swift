//
//  ViewController.swift
//  BKGAppleNews
//
//  Created by Benhar Kumar on 8/28/24.
//
import Foundation
import UIKit

class  ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: Any) {
        if (usernameTF.text?.isEmpty ?? true) ||  (passwordTF.text?.isEmpty ?? true) {
            print("Please enter the username and password")
            self.showAlert(message: "please enter username and password")
        }
        else {
            print("Scuccesfully entered the details")
            self.showtoAlert(message: "Sure, You wanna proceed")
        }

        
    }
    
    
    func showAlert(title: String = "IOS App", message: String) {
        let alertController = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
    
        let okAction = UIAlertAction(title: "OK", style: .default)
    
        alertController.addAction(okAction)
    
        present(alertController, animated: true, completion: nil)
    
        }
    func showtoAlert(title: String = "IOS App", message: String) {
        let alertController = UIAlertController(title: "Confirmation", message: "Do you want to proceed?", preferredStyle: .alert)

        let yesAction = UIAlertAction(title: "Yes", style: .default) { _ in
            self.nextScreen()
        }

        let noAction = UIAlertAction(title: "No", style: .cancel)

        alertController.addAction(yesAction)
        alertController.addAction(noAction)

        present(alertController, animated: true, completion: nil)
    }
    func nextScreen() {
        performSegue(withIdentifier: "nextscreen", sender: self)
    }

    
}

